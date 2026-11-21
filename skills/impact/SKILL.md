---
name: impact
description: Read-only impact analysis that maps what a change touches, what could break, caching and rate-limit risks, failure boundaries, and rollback plans — from a description, spec, issue, or branch. Use when the user asks for the impact or risk of a change.
---

# Impact (Advanced)

Map what a change touches and what it could break by reading the code, not by guessing. Read-only: don't modify code, data, or external systems.

## Locate the Change

The change can be a description, a spec, an issue, or a branch/diff. Fetch issues through an available connector or CLI; diff a branch against its base. Find the code it will modify with available code search (symbols, routes, commands, tables, configs).

## Trace Outward

From each touched spot, follow what depends on it:

- **Callers and dependents** — what imports, calls, renders, queries, or schedules the touched code: routes, jobs, CLIs, UI, scripts.
- **Data & Schema** — schema changes, migrations, backfills, writes to existing records. Anything that changes or deletes existing data is the hardest to undo.
- **Contracts** — API and response shapes, exports and file formats, events and webhooks, CLI flags, env vars, config, URLs.
- **Data Lifecycle & Caching** — does the change invalidate server caches, break ISR revalidation cycles, trigger cache stampedes, or alter data freshness contracts?
- **Rate-Limits & Upstream Quotas** — does the change increase fan-out to external/free APIs, trigger IP throttling, or increase database connection overhead?
- **Failure Boundaries & Degradation** — if the modified component fails, does it degrade gracefully (e.g. cached fallback, boundary toast) or cascade into a white-screen crash for neighboring features?
- **Untested neighbors** — behavior sharing code with the change that no test exercises; check what tests actually call, not file names.
- **Outside the repo** — external services, cost, permissions, deploy or migration order, feature flags.

Stop at boundaries the change can't reach, and say where you stopped.

## Report

Use [references/report_template.md](references/report_template.md). Mark every item **confirmed** (file and line or symbol) or **inferred** (with the reason); list what you couldn't check.

Lead with the size and the one item that drives it, then:

- **Rollback plan** — how to undo the change, and what can't be undone (data writes, published contracts).
- **Failure & Cache Risks** — specific caching, rate-limit, and cascading failure warnings.
- **Spec feed** — at-risk behaviors the spec's verification section should cover, ready to paste.
- **Next step** — build directly, write a spec first, split into issues, or add tests for untested neighbors first.

Present in chat and offer to save as `impact_<name>.md` per [shared/planning-config.md](../shared/planning-config.md).

Done means every touched area is confirmed with a code reference or labeled inferred, and the gaps are listed.
