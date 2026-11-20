# Blueprint: weekend-planner

Source: [idea_weekend-planner.md](idea_weekend-planner.md) · Mode: engineering

## Goal
Turn a list of activity ideas into a shareable, read-only weekend day plan.

## Current Behavior
Greenfield — nothing exists. Empty repo, no stack preference.

## Scope of Changes
- New app; no existing code affected
- Data: `activities` (title, duration, cost, energy), `plans` (date, ordered activity ids, share slug)

## Design
- Stack: static frontend + serverless function; single JSON store (choice: keeps v1 free-tier friendly)
- Share link: unguessable slug, read-only page, no auth in v1
- Rejected: full accounts — triples scope for no v1 value

## Verification: Success and Proof
| Success criterion | Verification method | Result |
|---|---|---|
| Plan built in < 5 min on phone | end-to-end: create 5 activities on a phone browser, arrange, share | |
| Spouse opens link with no signup | open share URL in a fresh incognito session | |

## Assumptions & Open Questions
- **(research needed)** free-tier limits of the chosen host
- Slug collision handling: retry on collision (decided)

## Rollback
Delete the deployment; no user data worth migrating in v1.
