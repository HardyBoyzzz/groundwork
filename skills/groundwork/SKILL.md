---
name: groundwork
description: Orchestrator that sizes the work (small task, feature, or big project), routes the user through the right skill chain, and tracks progress through it. Use when the user says "plan this", "where do I start", or invokes the planning system on a new piece of work.
---

# Groundwork

Size the work, then route through the right chain. You are the entry point; the other skills do the work.

## Step 1: Classify

From the request and any invocation text:

| Size | Signals | Chain |
|---|---|---|
| **Small task** | One concern, no real decisions, fits one session | `shape` (task brief) → build |
| **Feature** | Changes something existing; some decisions | `shape` → `blueprint` → `impact` → `backlog` → build |
| **Big project** | New product or initiative; many decisions | `clarify` (if stuck) → `shape` → `blueprint` (PRD then engineering) → `stress-test` → `backlog` → build each |

When unsure between two sizes, ask one question that disambiguates ("does this change how existing users do anything?"), then pick.

## Step 2: Route

- State the size and the chain in one line, then start the first skill.
- Any skill can be entered directly; if the user arrives mid-chain with, say, a spec in hand, start at the next step that adds value (`stress-test` or `backlog`).
- `/clarify` is available at any point when the user is stuck or going in circles.

## Step 3: Track

- Keep the chain visible: after each artifact is produced, name what exists now (e.g. "idea → spec ✓") and the next step.
- The chain ends when the build's verification checks pass — not when the code compiles.
- If v1 doesn't fit one session, split into issues and build them one at a time.
- After the build, offer `debrief`.

## Guidelines

- Prefer starting small: the shortest chain that produces a verified outcome wins
- Artifacts live per [shared/planning-config.md](../../shared/planning-config.md); never overwrite, version the name
- If the user fights the chain, shorten it — the system serves the build, not the reverse
