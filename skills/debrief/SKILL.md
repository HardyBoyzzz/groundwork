---
name: debrief
description: Compare what actually shipped against the spec's verification checks, list lessons learned, and update the spec and issues to reflect reality. Use when the user asks for a debrief, post-mortem, or "what did we learn" after a build.
---

# Debrief

Close the loop after a build: compare intent to outcome, capture lessons, and leave the artifacts truthful.

## Gather

1. **The intent** — the spec (`blueprint_project.md`, `blueprint_<name>.md`, `prd_<name>.md`) and its Verification: Success and Proof rows; the linked issues.
2. **The outcome** — what was actually built: the code as it exists now, the issues' final states, test results, and the user's observations. Read the code; don't trust the issue text alone.
3. **The delta** — per verification row: passed, failed, or untested, with evidence.

## Analyze

- **Verification gaps** — rows that can't be marked passed; why (scope cut, wrong method, never run)
- **Scope drift** — what got added or dropped between spec and build, and whether the spec or the build was right
- **Estimate vs. actual** — where the work surprised: hidden dependencies, untested neighbors, migrations
- **Process lessons** — which skill in the chain (clarify → shape → blueprint → stress-test → backlog → impact → build) would have caught each surprise, and what to change next time

## Report

Write `debrief_<name>.md` per [shared/planning-config.md](../shared/planning-config.md):

- **Shipped vs. spec** — the delta table with verification status
- **What went well** — keep doing these
- **Lessons** — each with the concrete change it implies (a template tweak, a new check, a habit)
- **Artifact updates** — spec sections now stale, issues to file for follow-ups

Then offer to apply the updates: mark the spec's verification rows with actual results, file follow-up issues (via `backlog`), and record any template improvements back into this repo's templates.

## Guidelines

- Blameless and concrete — lessons name process gaps, not people
- Every lesson implies a change; drop lessons that don't
- Small and short beats exhaustive and unread
