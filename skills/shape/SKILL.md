---
name: shape
description: Voice-friendly interview that turns a new project, feature, or task idea into a high-fidelity idea doc or task brief with personas, core user loop, data lifecycle, edge cases, competitive skim, and strength check, then recommends the next step. Use when the user says "I have an idea", "shape this", or wants to talk an idea through before building.
---

# Shape (Advanced)

Interview the user about an idea, then turn the conversation into an actionable artifact that gives `blueprint` crystal-clear direction without guesswork. Voice-compatible: ask **one open-ended question at a time in plain conversational prose** — no option lists or bullet walls the user must read.

## How to Interview

1. **Open:** "Tell me about the idea — what do you want to build and why?" Skip this if they already explained it.
2. **One question per turn.** Progressively cover the **5 Core Shaping Pillars**:
   - **Pillar 1: Problem & User:** Who it is for, their immediate pain, and what they struggle with today.
   - **Pillar 2: The Core Loop (Breadboarding):** Walk through the user's primary 3-step loop (Landing &rarr; Primary Action &rarr; Value Realized).
   - **Pillar 3: Scope Boundaries & Rabbit Holes:** What v1 must do, what is explicitly out of scope, and what deceptively complex traps must be avoided or sealed off.
   - **Pillar 4: Data & State Contract:** Where data comes from (mock, free API, DB), required freshness tolerance (real-time, 15-min delay, static), and persistence target (`localStorage`, serverless DB, ephemeral).
   - **Pillar 5: Failure Modes & Edge Cases:** What happens when an external API rate-limits, data is missing or N/A, or an invalid input is entered.
3. **Reflect back** every few turns: "So what I'm hearing is..." Push back gently when scope balloons: "Is that v1 or v2?"
4. **Trade-off check:** When priorities collide, clarify the pecking order between: *Zero Cost*, *Time to Market*, *Data Freshness*, and *UI Polish*.
5. **Stop** when the goal, core loop, data contract, and edge-case policies are settled. Record unresolved choices as open questions rather than prolonging the interview.

## Strengthen the Idea (before writing)

- **Persona check:** Name the primary user and one secondary user. If you can't, ask one more question.
- **Competitive skim:** If the idea faces existing products, list two or three and what each gets right or wrong. Use web search when available; otherwise mark **(research needed)**.
- **Strength check:** Rate the idea 1–5 on:
  - *Problem clarity* (is the pain acute?)
  - *Differentiation* (why use this over alternatives?)
  - *v1 feasibility* (can it be built and verified cleanly?)
  Below 3 on any dimension becomes an open question or a scope cut.

## Output

Write the artifact per [shared/planning-config.md](../shared/planning-config.md), choosing by size:

- **Project or large feature** → `idea_<name>.md` using [references/idea-template.md](references/idea-template.md)
- **Small feature or task** → `task_brief_<name>.md`: only the template's core sections

Before saving, read back a short spoken-style summary, ask "did I miss anything?", and fold in their reply.

## Next Step

Recommend one next step by size:

- **Small and clear enough to build in one session** → offer to build it now.
- **Real product or engineering decisions** (a data model, a stack, several flows, other reviewers) → recommend `blueprint` first.

Stopping at the doc is a complete outcome.

## Guidelines

- Conversational and short — your turns shorter than the user's.
- Capture their words; don't translate everything into jargon.
- One idea per session. If a second idea emerges, note it and offer a separate round.

Text supplied with the invocation is starting context.
