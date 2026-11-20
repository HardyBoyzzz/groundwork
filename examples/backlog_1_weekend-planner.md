## Context
First slice of the weekend-planner v1 per [blueprint_weekend-planner.md](blueprint_weekend-planner.md).

## What to Do
- Scaffold the app; model `activities` and `plans`
- Build the add-activity flow: title, duration, cost, energy level

## Acceptance Criteria
- **Given** an empty plan **When** the user adds an activity with all fields **Then** it appears in the plan list immediately
- **Given** a plan with 3 activities **When** the page reloads **Then** all 3 persist

## Verification
End-to-end on a phone browser: add 5 activities, reload, confirm all 5 remain. Side effects to confirm: records persisted in the store.

## Dependencies
- Blocks: arrangement UI (issue 2), share link (issue 3)

## Out of Scope
- Arrangement, sharing, styling polish
