---
name: thesis-qa-review
description: Test, review, harden, and prepare a web thesis for release and defense.
---

# Thesis QA Review

Check requirements, acceptance criteria, unit/integration/e2e tests, Docker build, healthcheck, demo account, seed data, secrets, database drift, and documentation.

Use finding severities blocker, critical, major, minor, or suggestion.

- Never release with an open blocker or critical finding.
- Generate defense questions from architecture decisions, limitations, and contribution.
- Perform clean-room verification by extracting to a new folder and running docker compose up --build.

