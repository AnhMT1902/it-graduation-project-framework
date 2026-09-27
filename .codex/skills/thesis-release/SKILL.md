---
name: thesis-release
description: Verify and package an independent web project for Docker Desktop on Windows while excluding runtime data and internal artifacts.
---

# Thesis Release

1. Validate the project structure.
2. Build and run docker compose up --build.
3. Check health, smoke tests, demo accounts, and demo data.
4. Perform clean-room verification.
5. Package as student-folder_slug-title_v1.0.0.zip.
6. Exclude database/runtime-data, real secrets, cache, .git, node_modules, release-manifest.yaml, and release-verification.md.

Never claim a release when Docker or smoke tests fail.

