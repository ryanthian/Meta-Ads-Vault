# Meta Ads Vault

Use this folder as your Obsidian vault and keep the CSV files in `data/processed/`.

Recommended sync setup:

1. Move the whole `Meta Ads Vault` folder into Google Drive, OneDrive, or Dropbox.
2. Open Obsidian on each PC.
3. Choose `Open folder as vault`.
4. Select the same synced `Meta Ads Vault` folder.

Main rule:

- CSV files store facts and numbers.
- Obsidian notes store summaries, timelines, and your analysis.

Do not run the collector tool from two PCs at the same time. Let one PC update the CSV, and let the other PC read/review.

## Auto Save From Analyzer

Open the analyzer through the local server:

```sh
cd /Users/ryanthian/Documents/Codex_mac/meta-ads-library-analyzer
node server.mjs
```

Then open:

```text
http://127.0.0.1:4199/
```

When you import/upload Meta Ads Library JSON or text into the analyzer, it will auto-save the latest analyzed result into this vault:

- `data/processed/*.csv`
- `data/raw/*.json`
- `01 Daily Snapshots/YYYY-MM-DD.md`
- `02 Pages/*.md`
- `03 Ads/*.md`

## GitHub Sync

The analyzer auto-save will also initialize this vault as a Git folder and commit each saved snapshot locally.

To enable auto-push to GitHub, connect this vault to a GitHub repository once:

```sh
cd "/Users/ryanthian/Documents/Codex_mac/Meta Ads Vault"
git remote add origin YOUR_GITHUB_REPO_URL
git branch -M main
git push -u origin main
```

After the remote is connected, future analyzer auto-saves will try to push to GitHub automatically.

