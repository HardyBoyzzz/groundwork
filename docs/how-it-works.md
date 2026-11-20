# How the System Works

## Principles

1. **Get clear before deciding.** Interview skills ask one question at a time and push back on scope creep.
2. **Read before asking.** Specs read the code and existing artifacts first; the user is only asked what nothing else can answer.
3. **Verify before building.** Every spec defines observable success and how it will be proven, through the real user path.
4. **Structure before volume.** Work is split into vertical slices that each fit a build session.
5. **Confirm or infer — never guess silently.** Every factual claim is tagged with its evidence.
6. **Close the loop.** Debriefs compare shipped work to the spec and feed lessons back into the templates.

## The Chain

Each artifact links its source and recommends the next step:

```
decision_*.md → idea_*.md → blueprint/prd → stress_test → backlog → build → debrief
```

`/groundwork` classifies the work (small task / feature / big project) and picks the shortest chain that produces a verified outcome.

## Configuration

All skills read `shared/planning-config.md`: planning folder, artifact naming, tracker default, and label taxonomy. Change it once; every skill follows.

## Design Notes

- Skills are deliberately short. The templates carry the structure; the SKILL.md carries the judgment.
- No skill silently overwrites an artifact — filenames are versioned instead.
- The issues skill supports GitHub, Linear, and Jira; tracker-specific knowledge lives in separate reference files so skills stay tracker-agnostic.
