# Idea: weekend-planner

Source: conversation, 2026-11-16

## The Idea
A simple planner that turns our family's weekend ideas into a shared day plan instead of the usual "what do you want to do?" loop.

## Problem & Users
- Primary persona: a parent coordinating weekend activities; struggles with scattered ideas across texts and notes
- Secondary persona: spouse and kids who want visibility into the plan
- Problem: ideas get lost, decisions happen twice, Saturday morning is wasted planning

## v1 Scope
Must do:
- Add activity ideas with time, cost, and energy level
- Auto-arrange a single Saturday or Sunday plan
- Share a read-only plan link

Explicitly NOT in v1:
- Accounts (single shared link only)
- Weather integration
- Recurring plans

## Success Criteria
- A plan can be built in under 5 minutes on a phone
- Both adults open the shared link without installing anything

## Strength Check
| Dimension | 1–5 | Note |
|---|---|---|
| Problem clarity | 5 | felt weekly |
| Differentiation | 3 | many planners exist; speed + zero signup is the angle |
| v1 feasibility | 4 | no accounts keeps it simple |

## Open Questions
- Hosting budget — free tier enough? **(research needed)**
- Should the share link expire after the weekend?

Next step recommended: `/spec` — a data model and share-link design are real decisions.
