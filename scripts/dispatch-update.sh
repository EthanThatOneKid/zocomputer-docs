#!/usr/bin/env bash
set -euo pipefail

python3 scripts/sync_llms_full.py

if [[ -z "$(git status --porcelain)" ]]; then
  echo "No changes detected."
  exit 0
fi

git add -A
git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
git commit -m "chore: sync docs from llms-full.txt"

# Generate a concise changelog comment via OpenRouter, then amend the commit
write_llm_changelog_comment() {
  local api_key="${OPENROUTER_API_KEY:-}"
  if [[ -z "$api_key" ]]; then
    echo "OPENROUTER_API_KEY not set, skipping LLM changelog comment."
    return 0
  fi

  # Capture the diff of the commit we're about to annotate
  local diff; diff=$(git diff --stat HEAD^ HEAD 2>/dev/null || echo "(unavailable)")
  local diff_len=${#diff}
  if (( diff_len > 32768 )); then
    diff="${diff:0:32768}"$'\n...[truncated]...'
  fi

  local model="openai/gpt-4o-mini"
  local body_json; body_json=$(python3 -c "
import json, sys

prompt = (
    'You are a release notes writer. '
    'Given the following git diff stat, write a single-line changelog comment '
    '(max 120 chars) summarizing the changes. '
    'Reply with ONLY the comment line, no quotes, no explanation.\n\n'
    'Diff:\n' + '''$diff''' + '\n'
)

payload = {
    'model': '$model',
    'messages': [{'role': 'user', 'content': prompt}],
    'max_tokens': 64,
    'temperature': 0.3
}
print(json.dumps(payload))
" 2>&1) || { echo "Failed to build JSON payload"; return 1; }

  local response
  response=$(curl -sS --retry 3 --retry-delay 2 \
    -H "Authorization: Bearer $api_key" \
    -H "Content-Type: application/json" \
    -H "HTTP-Referer: https://github.com/EthanThatOneKid/zocomputer-docs" \
    -H "X-Title: zocomputer-docs" \
    -d "$body_json" \
    "https://openrouter.ai/api/v1/chat/completions" 2>&1) || { echo "curl failed"; return 0; }

  local comment
  comment=$(echo "$response" | python3 -c '
import json, sys
try:
    t = json.load(sys.stdin)
    print(t["choices"][0]["message"]["content"].strip())
except Exception:
    sys.exit(1)
' 2>/dev/null) || { echo "Failed to parse LLM response"; return 0; }

  if [[ -n "$comment" && ${#comment} -le 120 ]]; then
    git commit --amend -m "chore: sync docs from llms-full.txt"$'\n\n'"$comment" 2>/dev/null && \
      echo "LLM changelog: $comment" || \
      echo "Amend failed, keeping original commit."
  else
    echo "LLM result empty or too long (${#comment} chars), keeping original commit."
  fi
}

write_llm_changelog_comment

git push origin HEAD:main