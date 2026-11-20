---
name: blueprint
description: Create an actionable spec from an idea, planning document, or issue — in engineering mode, product mode (PRD), or both. Reads the code and existing artifacts first, asks only what's left, and always defines verification. Use when the user asks for a spec, PRD, or requirements doc.
---

# Blueprint

Produce a working spec grounded in the user's goal and what already exists in the repository.

**Pick the mode by what's missing, not by input type:**

- **Engineering spec** — product direction is known; the decisions are technical. → `blueprint_<name>.md` (a change to something existing) or `blueprint_project.md` (a new product or large initiative)
- **Product doc (PRD)** — the technical path is known or delegated; the decisions are about users, metrics, and rollout. → `prd_<name>.md`
- **Both** — for a big project, write the PRD first, then the engineering spec that implements it

## Gather Context First

- Input is the request plus any invocation text: an inline idea, a local file, or an issue. Fetch issues through an available connector or `gh issue view <number> --repo <owner/repo>`. If you can't reach it, ask for its content.
- Check the planning folder for a related `decision_<name>.md`, `idea_<name>.md`, or `task_brief_<name>.md`. Treat it as input; ask only about what it leaves open.
- Read the relevant code, manifests, docs, schema, and deployment config before asking anything those can answer. Read `.env.example` and variable names, never secret values.
- For a change to existing code, run `impact` (if available) first and use its findings for Scope of Changes and at-risk verification rows.
- For a new project with no stack preference, recommend one that fits and mark uncertain choices **(research needed)**; verify time-sensitive choices before recommending.

## Ask Only What Matters

Ask about decisions that materially change scope or implementation and that the input and codebase don't settle: who it's for, what v1 must and must not do, how success is observed, acceptance criteria and edge cases, stack or deployment constraints, and which choices need the user's call. Everything else: research it or make a call and label it.

## Write the Spec

Fill in [blueprint_feature_template.md](references/blueprint_feature_template.md), [blueprint_project_template.md](references/blueprint_project_template.md), or [prd_template.md](references/prd_template.md). The template defines the sections; drop ones that don't apply and don't invent milestones to fill it out.

Whatever the mode, every spec must define:

1. **Verification: Success and Proof** — the observable successful outcome, criteria paired with verification methods, and end-to-end proof through the real user path (no test-only shortcuts)
2. **Non-functional requirements** — performance, security, privacy, accessibility, cost, anything with a threshold
3. **Assumptions and open questions** — marked **(research needed)** where investigation is owed

## Finish

Link the saved spec, summarize its scope, key assumptions, and open decisions, and apply revisions. Offer to research the **(research needed)** items.

Then recommend a next step: `stress-test` for anything with multiple reviewers or real risk, `backlog` when the spec needs splitting into buildable chunks, or build directly if v1 fits one session. Continue only when the user says so or asked for it up front.
