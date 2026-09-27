---
name: thesis-similarity-check
description: Compare a new project with the shared registry to detect duplicate thesis scopes before approval.
---

# Thesis Similarity Check

Compare problem, users, core use cases, entities, unique contribution, technology, and interface using the weights in framework/registry/similarity-rules.yaml.

- A changed framework, database, color scheme, or title is not a sufficient academic difference.
- Write an internal report under framework/registry/reports/.
- green: continue.
- yellow: require a stronger unique_contribution and explicit differences.
- red: set the project to BLOCKED; require a scope change and rerun the check.
- Register the project profile after normalization.

