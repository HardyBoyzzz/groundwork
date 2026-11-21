# Idea: <name>

Source: <link or conversation>
Date: <date>

## The Idea
One or two sentences in the user's own words.

## Problem & Users
- Primary persona: <who, what they struggle with today>
- Secondary persona: <who>
- Problem: <what hurts, how badly, how often>

## The Core Loop
The primary 3-step loop the user completes to realize value:
1. **Entry:** <where user lands or begins>
2. **Action:** <core interaction or evaluation>
3. **Outcome:** <value realized or state saved>

## v1 Scope & Boundaries
Must do:
- ...

Explicitly NOT in v1:
- ...

Rabbit holes sealed (deceptively complex traps avoided):
- ...

## Data & State Contract
- Data source: <free API, DB, mock, scrapers>
- Freshness & latency expectation: <real-time, 15-min cached, EOD, static>
- Persistence mechanism: <localStorage, serverless DB, session-only>

## Failure Modes & Edge Cases
- Upstream failure / rate-limiting policy: <fallback snapshot, cached state, error banner>
- Missing / N/A data policy: <neutral evaluation, skip indicator, or graceful placeholder>
- Invalid user input handling: <inline error toast, validation regex, autocomplete>

## Success Criteria & Verification Thresholds
How we'll know it works:
- <falsifiable metric or check, e.g. load time threshold, test criteria>

## Competitive Skim
| Product | Gets right | Gets wrong |
|---|---|---|
| ... | ... | ... |

## Strength Check
| Dimension | 1–5 | Note |
|---|---|---|
| Problem clarity | | |
| Differentiation | | |
| v1 feasibility | | |

## Trade-off Priorities
Priority order when constraints collide (e.g., Zero Cost > Time to Market > Data Freshness > UI Polish).

## Constraints & Existing Material
- Stack preferences, deadlines, budget, integration targets
- Existing code, docs, prior attempts

## Open Questions
- <unresolved technical choices and unchecked assumptions — mark (research needed) where the agent should investigate>
