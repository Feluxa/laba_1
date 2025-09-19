# ADR 0001 — Dev Environment

**Context.** Учебный проект, кроссплатформенная среда (Win + WSL2 Ubuntu), требование воспроизводимости и единообразия.

**Decision.**
- IDE: VS Code (Remote WSL).
- Контейнеризация: Docker Compose.
- Качество кода: pre-commit (black, flake8).
- Тестирование: pytest.
- GPG-подпись коммитов — опционально (может быть отключена при проблемах с агентом).

**Consequences.**
- Единый стиль кода и автопроверки перед коммитом.
- Лёгкий старт новичков: «docker compose up» и всё работает.
- Меньше “it works on my machine”.
