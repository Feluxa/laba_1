#!/usr/bin/env bash
set -euo pipefail
echo "[1/5] docker up"; docker compose up -d; docker compose ps || true
echo "[2/5] pytest in container"; docker compose exec app python -m pytest -q
echo "[3/5] pre-commit -a"; pre-commit run -a || true
echo "[4/5] signed commit check"; git log -1 --show-signature || true
echo "[5/5] git graph"; git log --oneline --graph --decorate -10
