# Groundwork

A planning system for Claude Code: eight skills that take you from "I have an idea" to verified, shipped work — through clarity, decisions, structure, and debriefs.

Groundwork exists because agents build fast and plan poorly. These skills make the agent interview you properly, read your code before asking questions, prove every spec is verifiable, and split work into slices it can actually finish — then close the loop with a debrief.

## The Chain

```
clarify ──→ shape ──→ blueprint ──→ stress-test ──→ backlog ──→ build ──→ debrief
 (stuck?)   (idea)    (decisions)   (pressure-test)  (structure)          (learn)
                                          └── impact (size the change, before building)
```

- **Small task:** `shape` → task brief → build
- **A feature:** `shape` → `blueprint` → `impact` → `backlog` → build
- **A big project:** `clarify` → `shape` → `blueprint` (PRD + engineering) → `stress-test` → `backlog` → build each → `debrief`

`/groundwork` sizes the work and routes you; every skill recommends its own next step.

## The Eight Skills

| Skill | When | Output |
|---|---|---|
| `/groundwork` | "plan this", "where do I start" | sized route through the chain |
| `/clarify` | "I'm stuck", "help me think through X" | `decision_<name>.md` |
| `/shape` | "I have an idea" | `idea_<name>.md` or task brief |
| `/blueprint` | "write a spec / PRD" | `blueprint_<name>.md` or `prd_<name>.md` |
| `/stress-test` | "pressure-test this spec" | `stress_test_<name>.md` |
| `/backlog` | "turn this spec into issues" | GitHub / Linear / Jira issues |
| `/impact` | "what's the impact of this change?" | `impact_<name>.md` + rollback plan |
| `/debrief` | "what did we learn?" | `debrief_<name>.md` + updated artifacts |

## Design Principles

1. **Get clear before deciding.** Interview skills ask one question at a time and push back on scope creep.
2. **Read before asking.** Specs read the code and existing artifacts first; you're only asked what nothing else can answer.
3. **Verify before building.** Every blueprint defines observable success and how it will be proven, through the real user path.
4. **Structure before volume.** Work is split into vertical slices that each fit a build session.
5. **Confirm or infer — never guess silently.** Every factual claim is tagged with its evidence.
6. **Close the loop.** Debriefs compare shipped work to the blueprint and feed lessons back into the templates.

## What Makes It Different

- **Spec pressure-testing** — `/stress-test` audits a blueprint for gaps, contradictions, and untestable claims before issues are cut
- **Product mode** — a PRD path with metrics, rollout, and sign-offs alongside engineering blueprints
- **Jira support** — epics, stories, subtasks, and spikes, not just GitHub/Linear
- **Impact with rollback** — `/impact` maps what a change touches and writes the rollback plan, feeding verification rows back into the blueprint
- **Debriefs** — closes the loop; lessons update the templates themselves
- **Shared config** — one `shared/planning-config.md` drives folders, naming, tracker, and labels
- **Orchestrator** — `/groundwork` sizes the work and routes the chain

## Install

### Option A — script

```bash
git clone https://github.com/HardyBoyzzz/groundwork.git
cd groundwork
./install.sh        # macOS/Linux
.\install.ps1       # Windows PowerShell
```

Both copy `skills/` and `shared/` into `~/.claude/skills/`.

### Option B — paste into Claude Code

Paste this into a Claude Code conversation:

```
Clone https://github.com/HardyBoyzzz/groundwork, copy the skills/ and
shared/ folders into ~/.claude/skills, and confirm each skill is installed.
```

### Verify

Start Claude Code in any project and type `/shape` or say "I have an idea".

## Repository Layout

```
skills/         one folder per skill: SKILL.md + references/
shared/         planning-config.md — folders, naming, tracker, labels
examples/       a sample chain: idea → blueprint → backlog item
docs/           how the system works
```

## Using With Your Projects

Artifacts are written to your project's planning folder (`plans/` by default). Commit them — issue bodies link back to the blueprint's blob URL. Every blueprint defines verification before code is written; every build ends when those checks pass.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Skill improvements that come out of debriefs are welcome — that loop is the point.

## License

[MIT](LICENSE)
