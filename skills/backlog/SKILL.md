---
name: backlog
description: Draft and create GitHub, Linear, or Jira issues, and export machine-readable Task Contracts for the AI Scrum Team from a spec, files, screenshots, TODOs, or inline text — as epics, stories, and subtasks with acceptance criteria. Use when the user asks to turn source material into one or more reviewed issues.
---

# Backlog (AI Scrum Team Integrated)

Turn source material into focused, reviewed issues in the user's tracker and machine-readable Task Contracts (`docs/tasks/T-XXXX-XX.json`) for the **AI Scrum Team** (`ai-scrum-team`). Tracker-specific access, commands, and dependency handling live in [references/github.md](references/github.md), [references/linear.md](references/linear.md), and [references/jira.md](references/jira.md).

## Step 1: Parse the Request

1. **Intent** — what kind of issues (bug, feature, enhancement) and destination (tracker vs. local task contracts).
2. **Source material** — a spec, file, folder, image, or inline content. Verify referenced paths exist.
3. **Tracker / Target** — GitHub, Linear, Jira, or AI Scrum Team task contracts (`docs/tasks/`).

## Step 2: Extract Issue Content & Vertical Slices

One issue per concern, as **vertical slices**: each delivers user-visible or testable behavior and fits one build session. Follow the spec's milestones; when building the MVP straight from the spec, only later milestones become issues.

| Source | How to extract |
|---|---|
| Spec/plan | Split into vertical slices per milestone |
| Inline text | Parse numbered lists, bullets, separate concerns |
| File | Split on headers, lists, section breaks |
| Code TODO/FIXME | Search pattern, consolidate same-concern matches |

## Step 3: Structure Each Issue & Task Contract

- **Title:** preserve the source's original wording; only lightly format. Write a short outcome title ("Scaffold indicator engine").
- **Body:** use [references/issue_body_template.md](references/issue_body_template.md).
- **Acceptance Criteria:** Given/When/Then form, traceable to the spec's verification rows.
- **AI Scrum Task Contract Export:** For execution with `ai-scrum-team`, format each slice as a Task Contract (`docs/tasks/T-XXXX-XX.json`) matching [references/task_contract_template.json](references/task_contract_template.json):
  - `id`: `T-XXXX-XX`
  - `owner`: Role from `ai-scrum-team` (`fullstack-developer`, `frontend-developer`, etc.)
  - `verifier`: Role from `ai-scrum-team` (`qa-engineer`, `code-reviewer`)
  - `scope.paths`: Bounded file paths the developer is permitted to touch
  - `verification`: Array of verification checks (`VC-1`, `VC-2`) with exact commands and expected exit codes.
- **Labels:** use [references/labels.md](references/labels.md) taxonomy (`bug`, `feature`, `epic`, `chore`).

## Step 4: Resolve Destination, Duplicates, and Labels

1. Resolve the exact destination (tracker repo, or local `docs/tasks/`).
2. Search open and closed issues for likely duplicates.
3. Scan outgoing content for secrets, private code, personal data, machine-local paths; redact before review.
4. Link source spec by repository URL or project relative path.

## Step 5: Preview & Create

Show destination, issue count, titles, bodies, and task contracts. Wait for user review or go-ahead, then save or push:
- For trackers: publish approved issues via tracker CLI/connector.
- For AI Scrum Team: write task contracts to `docs/tasks/T-XXXX-XX.json` ready for `python engine/loop.py plan`.

## Step 6: Summary & Hand-off

Summarize created issues/contracts and announce immediate readiness for the **AI Scrum Team** execution phase (`PLAN` &rarr; `EXECUTE` &rarr; `VERIFY` &rarr; `CLOSE`).
