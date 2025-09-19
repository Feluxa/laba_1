# REPORT

## 1. Сборка стенда

docker compose up -d
docker compose ps
docker compose exec app python -m pytest -q
→ 3 passed

## 2. Rebase (линейная история)

git log --oneline --graph --decorate -10
Комментарий: rebase ветки `feature/setup` на `main`, решён конфликт в `README.md`.

## 3. Bisect

git bisect start
git bisect bad HEAD
git bisect good HEAD~1
git bisect run sh -c 'docker compose exec app python -m pytest -q'
git bisect reset
git revert --no-edit HEAD

## 4. Hooks / pre-commit

pre-commit run --all-files
→ black Passed, flake8 Passed

## 5. Подписанный коммит (SSH)

git log -1 --show-signature
→ Good "gitssh" signature ...

## 6. ADR
- `docs/adr/0001-dev-environment.md`

## 7. TCO-mini

- `docs/adr/0002-TCO-comparison.md`
Signed commit URL: https://github.com/Feluxa/laba_1/commit/aa0c867a2f84b1a9e1245c887dc439b63216760d
