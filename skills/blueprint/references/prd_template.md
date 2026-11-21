# PRD: <name>

Source: <idea or decision link>
Date: <date> · Mode: product

## Problem
The user pain, how it's handled today, and why that's not good enough.

## Personas
- Primary: <who, context, goal>
- Secondary: <who>

## Solution Overview
What we're building, in plain language a non-engineer could follow.

## The Core User Loop
1. **Entry:** <where user lands or begins>
2. **Action:** <core interaction or evaluation>
3. **Outcome:** <value realized or state saved>

## Success Metrics & Verification Thresholds
| Metric | Baseline | Target |
|---|---|---|

## Scope & Boundaries
- In v1: ...
- Explicitly NOT in v1: ...
- Sealed Rabbit Holes: <deceptively complex directions intentionally avoided>

## Data & State Contract
- Data Sources: <external APIs, databases, static files>
- Freshness & Latency Expectation: <real-time, cached interval, EOD, static>
- State Persistence Target: <browser localStorage, serverless DB, session-only>

## Edge Cases & Recovery Policies
- Upstream Service Degradation / Throttling: <cached fallback snapshot, degraded mode, user banner>
- Missing or Incomplete Data: <graceful placeholder, neutral weighting, skip rule>
- Invalid Inputs: <validation rules, user feedback format>

## User Flows
1. <flow name>: <steps in the user's language>

## Non-Functional Requirements
| Requirement | Threshold |
|---|---|

## Trade-off Priorities
Priority order when constraints collide (e.g. Zero Cost > Time to Market > Data Freshness > UI Polish).

## Rollout
Phases, feature flags, audience percentages, and the kill switch.

## Stakeholders & Sign-offs
Who reviews, who decides, who is informed.

## Verification: Success and Proof
How we'll know it worked — metrics movement plus qualitative evidence.

## Assumptions & Open Questions
- ...
