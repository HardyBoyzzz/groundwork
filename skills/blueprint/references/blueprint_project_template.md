# Project Spec: <name>

Source: <idea, decision, or request link>
Date: <date> · Mode: engineering

## Goal
What this project delivers and why, in two or three sentences.

## Users
Primary and secondary personas and their jobs-to-be-done.

## v1 Scope
Milestones as vertical slices, each delivering user-visible value:
1. **Milestone 1 — <name>**: <outcome>
2. **Milestone 2 — <name>**: <outcome>

Explicitly out of scope: ...

## Architecture & Key Decisions
- Stack: <choice, or (research needed)>
- Data model: <core entities and relationships>
- Decisions made and why: ...

## Data Flow & Caching Architecture
- Source & Ingestion Pipeline: <where data originates and how it is fetched>
- Freshness & Caching Strategy: <ISR, stale-while-revalidate, edge cache, or static fallback>
- Storage & State Persistence: <client-side state, server cache, database>

## Error Handling & Fallback States
- Upstream Rate-Limits & Timeouts: <cached snapshot fallback, retry policy, error banner>
- Missing / Inapplicable Fields: <handling policy, e.g. neutral fallback, placeholder UI>
- Client Error Boundaries: <graceful UI degradation and recovery>

## Sealed Rabbit Holes
Deceptively complex traps deliberately avoided:
- <trap 1 and why it was sealed>

## Trade-Off Decisions
How the architecture honors the priority order (e.g. Zero Cost > Speed > Polish).

## Non-Functional Requirements
| Requirement | Threshold |
|---|---|
| Performance | ... |
| Security | ... |
| Privacy | ... |
| Accessibility | ... |

## Verification: Success and Proof
| Success criterion | Verification method | Result |
|---|---|---|
| ... | end-to-end through the real user path | |

## Assumptions & Open Questions
- **(research needed)** items and unchecked assumptions

## Milestone Backlog (after v1)
- ...
