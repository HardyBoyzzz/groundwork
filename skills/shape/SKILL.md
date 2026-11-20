---
name: shape
description: Voice-friendly interview that turns a new project, feature, or task idea into an idea doc or task brief with personas, a competitive skim, and a strength check, then recommends the next step. Use when the user says "I have an idea", "shape this", or wants to talk an idea through before building.
---

# Shape

Interview the user about an idea, then turn the conversation into an actionable artifact. Voice-compatible: ask **one open-ended question at a time in plain conversational prose** — no option lists or bullet walls the user must read.

## How to Interview

1. **Open:** "Tell me about the idea — what do you want to build and why?" Skip this if they already explained it.
2. **One question per turn.** Cover, in whatever order the conversation flows: who it's for and the problem it solves, what v1 must do (and explicitly won't), how they'll know it works, technical constraints or stack preferences, and anything already existing (code, docs, prior attempts).
3. **Reflect back** every few turns: "So what I'm hearing is..." Push back gently when scope balloons: "Is that v1 or v2?"
4. **Stop** when the goal, v1 scope, and success criteria are clear. Record unresolved choices as open questions rather than prolonging the interview.

## Strengthen the Idea (before writing)

- **Persona check:** name the primary user and one secondary user. If you can't, ask one more question.
- **Competitive skim:** if the idea faces existing products, list two or three and what each gets right or wrong. Use web search when available; otherwise mark **(research needed)**.
- **Strength check:** rate the idea 1–5 on problem clarity, differentiation, and feasibility of v1. Below 3 on any dimension becomes an open question or a scope cut.

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
