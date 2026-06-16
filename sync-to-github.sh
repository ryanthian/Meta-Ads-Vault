#!/usr/bin/env sh
set -e
git add .
git commit -m "Update Meta Ads Vault" || true
git push
