# Contributing

Thanks for improving the planning skills.

## Ways to Help

- **New template sections** that came out of a real debrief — open an issue first with the lesson
- **Tracker references** — improvements to github.md / linear.md / jira.md, especially CLI command accuracy
- **New skills** — must fit the chain (clarify → shape → spec → review → issues → build → debrief) and have a trigger phrase; propose in an issue before writing

## Skill File Rules

1. Every skill folder has a `SKILL.md` with `name` and `description` frontmatter. The description is the trigger — include the phrases a user would actually say.
2. Templates live in `references/`, are referenced from the SKILL.md, and stay concise.
3. Skills read `shared/planning-config.md` — don't hardcode folders, naming, or tracker defaults in a skill.
4. Artifacts never overwrite; version the filename.
5. Every spec-class skill must require a verification section.

## Pull Requests

Small, one concern per PR. A PR that adds or changes a skill should show a before/after of the artifact that skill produces.
