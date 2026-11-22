---
name: groundwork
description: Orchestrator that sizes the work (small task, feature, or big project), routes the user through the right skill chain, and integrates execution with the AI Scrum Team. Use when the user says "plan this", "where do I start", or invokes the planning system on a new piece of work.
---

# Groundwork (AI Scrum Team Integrated)

Size the work, route through the right planning chain, and drive execution through the **AI Scrum Team** (`ai-scrum-team`). You are the entry orchestrator; specialized planning skills shape the work, and the AI Scrum squad builds and verifies it.

## Step 1: Classify

From the request and any invocation text:

| Size | Signals | Chain |
|---|---|---|
| **Small task** | One concern, no real decisions, fits one session | `shape` (task brief) &rarr; `ai-scrum-team build` |
| **Feature** | Changes something existing; some decisions | `shape` &rarr; `blueprint` &rarr; `impact` &rarr; `backlog` &rarr; `ai-scrum-team build` |
| **Big project** | New product or initiative; many decisions | `clarify` (if stuck) &rarr; `shape` &rarr; `blueprint` (PRD then engineering) &rarr; `stress-test` &rarr; `backlog` &rarr; `ai-scrum-team build each` |

When unsure between two sizes, ask one question that disambiguates ("does this change how existing users do anything?"), then pick.

## Step 2: Route

- State the size and the chain in one line, then start the first skill.
- Any skill can be entered directly; if the user arrives mid-chain with, say, a spec in hand, start at the next step that adds value (`stress-test` or `backlog`).
- `/clarify` is available at any point when the user is stuck or going in circles.

## Step 3: Track & Build with AI Scrum Team

- Keep the chain visible: after each artifact is produced, name what exists now (e.g. "idea &rarr; spec ✓") and the next step.
- When reaching the **Build Phase**, hand off backlog items to the **AI Scrum Team** (`C:\Users\harshah\Documents\agent-platform\ai-scrum-team`):
  1. **PLAN:** Architect role converts backlog issues into strict Task Contracts (`docs/tasks/T-XXXX-XX.json`) and runs `python engine/loop.py plan --task T-XXXX-XX`.
  2. **EXECUTE:** Developer roles (`fullstack-developer`, `frontend-developer`, etc.) implement changes strictly within `scope.paths`.
  3. **VERIFY:** QA Engineer executes checks and records mechanical exit codes and artifact hashes via `python engine/evidence.py run`.
  4. **CLOSE:** Code Reviewer in fresh context inspects diff and runs `python engine/loop.py close --task T-XXXX-XX` (enforcing `close_gate.py` - no self-grading).
- The chain ends when the build's verification checks pass and close gate approves — not when code merely compiles.
- If v1 doesn't fit one session, build and verify task contracts one at a time.
- After the build, run **`debrief`** and nominate edge cases to the knowledge base (`engine/learn.py nominate`).

## Guidelines

- Prefer starting small: the shortest chain that produces a verified outcome wins.
- Artifacts live per [shared/planning-config.md](../shared/planning-config.md); never overwrite, version the name.
- If the user fights the chain, shorten it — the system serves the build, not the reverse.
