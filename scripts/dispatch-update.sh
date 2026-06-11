#!/usr/bin/env bash
set -euo pipefail

post_llm_commit_comment() {
  local commit_sha="$1"
  local api_key="${OPENROUTER_API_KEY:-}"
  if [[ -z "$api_key" ]]; then
    echo "OPENROUTER_API_KEY not set, skipping LLM commit comment."
    return 0
  fi

  if ! command -v gh >/dev/null 2>&1; then
    echo "gh CLI not available, skipping LLM commit comment."
    return 0
  fi

  local diff_stat
  diff_stat=$(git diff --stat "${commit_sha}^" "$commit_sha" 2>/dev/null || echo "(unavailable)")

  local diff_patch
  diff_patch=$(git diff --unified=3 "${commit_sha}^" "$commit_sha" 2>/dev/null || echo "(unavailable)")

  local diff_patch_len=${#diff_patch}
  if (( diff_patch_len > 32768 )); then
    diff_patch="${diff_patch:0:32768}"$'\n...[truncated]...'
  fi

  local model="openai/gpt-4o-mini"
  local body_json
  body_json=$(DIFF_STAT="$diff_stat" DIFF_PATCH="$diff_patch" MODEL="$model" python3 -c "import json, os; patch = '\n'.join(line for line in os.environ['DIFF_PATCH'].splitlines() if (chr(34) + 'sha256' + chr(34) + ':') not in line); prompt = ('You are reviewing an automated docs sync commit. Write a concise GitHub commit comment in Markdown for maintainers. Summarize what changed, call out notable removals or large movements, and keep it under 1000 characters. Reply with ONLY the comment body.\n\nDiff stat:\n' + os.environ['DIFF_STAT'] + '\n\nPatch excerpt:\n' + patch + '\n'); payload = {'model': os.environ['MODEL'], 'messages': [{'role': 'user', 'content': prompt}], 'max_tokens': 300, 'temperature': 0.3}; print(json.dumps(payload))") || { echo "Failed to build JSON payload"; return 0; }

  local response
  response=$(curl -sS --retry 3 --retry-delay 2 \
    -H "Authorization: Bearer $api_key" \
    -H "Content-Type: application/json" \
    -H "HTTP-Referer: https://github.com/EthanThatOneKid/zocomputer-docs" \
    -H "X-Title: zocomputer-docs" \
    -d "$body_json" \
    "https://openrouter.ai/api/v1/chat/completions" 2>&1) || { echo "OpenRouter request failed"; return 0; }

  local comment
  comment=$(echo "$response" | python3 -c "import json, sys; t = json.load(sys.stdin); print(t['choices'][0]['message']['content'].strip())" 2>/dev/null) || { echo "Failed to parse LLM response"; return 0; }

  if [[ -z "$comment" || ${#comment} -gt 1000 ]]; then
    echo "LLM result empty or too long (${#comment} chars), skipping commit comment."
    return 0
  fi

  local repo="${GITHUB_REPOSITORY:-EthanThatOneKid/zocomputer-docs}"
  gh api \
    --method POST \
    "/repos/$repo/commits/$commit_sha/comments" \
    -f body="$comment" >/dev/null && \
    echo "Posted LLM commit comment to $commit_sha" || \
    echo "Failed to post LLM commit comment."
}

override_sha="${LLM_COMMENT_COMMIT_SHA:-}"
if [[ -n "$override_sha" ]]; then
  echo "LLM_COMMENT_COMMIT_SHA set; skipping sync flow and commenting on $override_sha"
  if ! command -v gh >/dev/null 2>&1; then
    echo "gh CLI not available, aborting."
    exit 1
  fi
  git fetch --no-tags --prune --depth=2 origin "$override_sha" 2>/dev/null || true
  post_llm_commit_comment "$override_sha"
  exit 0
fi

python3 scripts/sync_llms_full.py

if [[ -z "$(git status --porcelain)" ]]; then
  echo "No changes detected."
  exit 0
fi

git add -A
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git commit -m "chore: sync docs from llms-full.txt"
commit_sha=$(git rev-parse HEAD)

git push origin HEAD:main
post_llm_commit_comment "$commit_sha"
