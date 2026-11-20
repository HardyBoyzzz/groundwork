# Shared Planning Configuration

All skills read this file first. Change values here once; every skill follows.

## Planning folder
- Default: `plans/` at the project root
- Respect an existing `specs/`, `plans/`, or `docs/specs/` folder if one exists
- Never overwrite an existing artifact — pick a distinct name or version the filename

## Naming
| Artifact | File |
|---|---|
| Decision record | `decision_<name>.md` |
| Idea doc | `idea_<name>.md` |
| Task brief | `task_brief_<name>.md` |
| Project spec | `blueprint_project.md` |
| Feature spec | `blueprint_<name>.md` |
| Product doc | `prd_<name>.md` |
| Spec review | `spec_review_<name>.md` |
| Impact report | `impact_<name>.md` |
| Debrief | `debrief_<name>.md` |

## Issue tracker
- Default: GitHub
- If the project has a Linear or Jira workspace configured (check `AGENTS.md`, `CLAUDE.md`, or existing issue links), use it instead
- Ask only if more than one is plausible

## Label taxonomy (apply the most specific that fits)
`bug` `feature` `enhancement` `docs` `epic` `spike` `good-first-issue` `chore`

## Artifact chain
Every artifact links its source at the top (a decision, idea, spec, or issue) and recommends the next step:

decision → idea → spec → stress-test → issues → build → debrief

## Writing rules for all artifacts
- Concise working documents, not formal deliverables — drop sections that don't apply
- Mark real unknowns as **(research needed)**; never invent details to fill a template
- Distinguish what is **confirmed** (with a source, file, or line) from what is **inferred** (with the reason)
- Every spec-class artifact must define how success is verified before it is built
