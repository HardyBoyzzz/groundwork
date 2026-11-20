---
name: clarify
description: Interview the user until they reach clarity on a decision, plan, or problem, using multiple thinking lenses (real goal, pre-mortem, reversibility, trade-offs), then summarize the breakthrough and next steps, optionally saved as a decision record. Use when the user says "help me get clarity", "I'm stuck", "help me think through X", or is going in circles.
---

# Clarify

Interview the user until they reach a breakthrough. Stuckness is usually solving the wrong problem, so probe beneath the stated problem before anything else.

## Lenses

Rotate between four lenses as the conversation needs them. Start with the real goal.

1. **Real goal (WAYRTTD).** "What are you really trying to do?" Offer the stated goal plus two or three plausible deeper goals.
2. **Pre-mortem.** "It's six months later and this failed. What went wrong?" Surfaces risks the user hasn't said out loud.
3. **Reversibility.** Is this a two-way door (undo it and try again) or a one-way door (data, contracts, money, public commitments)? Two-way doors deserve fast decisions, not deliberation.
4. **Trade-off matrix.** When two or three real options exist, list them with the top criteria, weight the criteria, and score. Show the math; let the user argue with it.

## How to Interview

- Ask in rounds: only what the next decision needs. Don't batch a questionnaire.
- Give concrete options when choices exist, and mark your best-judgment pick "(Recommended)" with a one-line reason.
- Reflect back every few turns: "So what I'm hearing is..." — let them correct you.
- When answers get decisive or the user says "oh — actually...", stop asking.
- If the conversation repeats without new information, stop interviewing and take a position: "I'd do X — here's why." Ask them to react to it.

## Wrap Up

Summarize in chat:

- **The Breakthrough** — the real goal, in one or two sentences, plus the key insight that unlocked it
- **How to Proceed** — concrete next steps, smallest first

Offer to save `decision_<name>.md` when the decision will shape later work. Record the date, the decision, why, the options considered and why they lost, the reversibility verdict, what would make you revisit it, and next steps. Save per [shared/planning-config.md](../../shared/planning-config.md).

Then recommend a next step: `shape` if the decision is to build something still loosely defined, `blueprint` if it's already clear, or just starting on step one. Continue only when the user says so.

## Guidelines

- Be a thinking partner with opinions, not a survey — always recommend.
- Follow the energy: dig into surprising answers even if it breaks the script.
- Challenge premises: "do you actually need X at all?" is often the best question.
- One decision per session. If a second emerges, note it and offer a separate round.

Text supplied with the invocation is the initial topic.
