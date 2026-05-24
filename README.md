# zocomputer-docs

Nightly mirror of [https://docs.zocomputer.com/llms-full.txt](https://docs.zocomputer.com/llms-full.txt).

This repo reconstructs the docs into one markdown file per page under `docs/`.
A GitHub Actions workflow runs every night and on manual dispatch, regenerates the files,
and pushes to `main` only when the generated content changes.

## Local sync

```bash
python3 scripts/sync_llms_full.py
bash scripts/dispatch-update.sh
```

## Layout

- `docs/` — reconstructed markdown pages
- `scripts/sync_llms_full.py` — downloads and rebuilds the markdown snapshot
- `scripts/dispatch-update.sh` — detects changes and commits/pushes them to `main`
- `.github/workflows/nightly-sync.yml` — scheduled automation
