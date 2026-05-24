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
git push origin HEAD:main
