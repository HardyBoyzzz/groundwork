---
name: stress-test
description: Audit a spec or PRD for gaps, contradictions, untestable claims, and missing verification before it becomes issues or code. Use when the user asks to review, sanity-check, or pressure-test a spec.
---

# Stress-Test

Audit a spec-class artifact (`blueprint_project.md`, `blueprint_<name>.md`, `prd_<name>.md`) before it drives issues or code. Read-only with respect to the codebase: report findings, don't fix code.

## Checks

For each, cite the spec section and, where relevant, the code it contradicts.

1. **Testability** — every success criterion has a verification method that an agent or human can actually execute. Flag vague verbs ("seamless", "robust", "fast") without thresholds.
2. **Completeness** — the spec defines verification, non-functional requirements, and assumptions/open questions. Missing sections are findings, not blanks to fill silently.
3. **Consistency** — scope vs. milestones vs. out-of-scope lists don't contradict; data model matches the flows; success metrics match the success criteria.
4. **Code grounding** — claims about existing behavior match the repository. Verify against actual files, symbols, and schemas; mark each claim confirmed or contradicted.
5. **Risk coverage** — impact-style risks (data changes, contract breaks, untested neighbors) appear in the verification plan. Rollback exists for anything irreversible or customer-facing.
6. **Feasibility** — milestones fit build sessions; dependencies are ordered; nothing in v1 silently requires v2 work.

## Report

Write `spec_review_<name>.md` per [shared/planning-config.md](../../shared/planning-config.md):

- **Verdict** up front: build-ready, build-ready after listed fixes, or needs another pass
- Findings grouped **Blocker** / **Should fix** / **Nit**, each with the spec section, the problem, and the suggested fix
- Every claim about the codebase marked **confirmed** (file/symbol) or **contradicted** (with evidence)

Then apply the fixes the user approves, or hand the list back.

## Next Step

- Build-ready → recommend `backlog` (if splitting) or build directly
- Needs another pass → recommend `blueprint` with the finding list as input
