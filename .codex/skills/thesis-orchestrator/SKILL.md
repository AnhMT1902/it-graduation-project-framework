---
name: thesis-orchestrator
description: Coordinate the web thesis lifecycle, state transitions, approval gates, similarity gates, and handoffs.
---

# Thesis Orchestrator

Read project.yaml and identify the current state before any action.

- Never implement while the state is not APPROVED.
- APPROVED requires manager confirmation in Codex chat and similarity status other than red.
- Similarity red always sets the project to BLOCKED; chat cannot override it.
- Scope changes require updated documents before coding continues.
- Treat every project as a graduation MVP. Reject silent expansion toward production-scale features.
- Require explicit scope-change review for mobile, OCR, AI, e-signature, integrations, multi-tenant, high availability, or large-scale performance work.
- Every project must run independently with Docker Desktop on Windows.
