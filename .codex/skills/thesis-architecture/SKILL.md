---
name: thesis-architecture
description: Design the web app architecture, database ERD, API contract, and Docker contract after outline approval.
---

# Thesis Architecture

After approval:

- Create architecture, API, and data design.
- Use database/design/schema.dbml as the canonical ERD source.
- Generate schema.mmd, erd.svg, erd.png, and docs/04-database-design.md.
- Create migrations, demo accounts, and seed data for the selected stack.
- Keep the database in Docker and bind-mount runtime data inside the project.
- Never use source code or runtime database data from another project.

