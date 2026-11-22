---
name: debrief
description: Compare what actually shipped against the spec's verification checks, list lessons learned, update artifacts, and nominate permanent rules to the AI Scrum Team knowledge base. Use when the user asks for a debrief, post-mortem, or "what did we learn" after a build.
---

# Debrief (Learning Loop Integrated)

Close the loop after a build: compare intent to outcome, capture lessons, update artifacts to reflect reality, and feed the **AI Scrum Team reviewed-learning loop** (`engine/learn.py`).

## Gather

1. **The intent** — the spec (`blueprint_project.md`, `blueprint_<name>.md`, `prd_<name>.md`) and its Verification: Success and Proof rows; the linked issues and task contracts (`docs/tasks/`).
2. **The outcome** — what was actually built: the code, test logs, mechanical evidence records (`evidence/*.evidence.json`), and close gate verdicts.
3. **The delta** — per verification row: passed, failed, or untested, with verified evidence.

## Analyze

- **Verification gaps** — rows that could not pass; root cause (scope cut, missing dependency, environment limit).
- **Scope drift** — what got added or dropped between spec and build, and whether the spec or the build was right.
- **Estimate vs. actual** — where the work surprised: hidden dependencies, untested neighbors, rate limits.
- **Process lessons** — which skill in the chain (`clarify` &rarr; `shape` &rarr; `blueprint` &rarr; `stress-test` &rarr; `backlog` &rarr; `ai-scrum-team` build) would have caught each surprise.

## Report & Learning Loop Nomination

Write `debrief_<name>.md` per [shared/planning-config.md](../shared/planning-config.md):

- **Shipped vs. spec** — the delta table with verification status.
- **What went well** — keep doing these.
- **Lessons & Knowledge Base Nominations:**
  - For each systemic edge case or repeated mistake, nominate a structured **Learning Card** using the AI Scrum Team learning engine:
    ```bash
    python engine/learn.py nominate --title "<Concise Rule Title>" --rule "<Imperative actionable instruction>" --source "debrief_<name>.md"
    ```
  - This prevents AI amnesia across future sessions.
- **Artifact updates** — spec sections now stale, issues to file for follow-ups.

## Guidelines

- Blameless and concrete — lessons name process and contract gaps, not people.
- Every lesson implies an actionable change or permanent knowledge-base rule; drop lessons that don't.
- Small and short beats exhaustive and unread.
