---
name: backlog
description: Draft and create GitHub, Linear, or Jira issues from a spec, files, screenshots, TODOs, or inline text — as epics, stories, and subtasks with acceptance criteria. Use when the user asks to turn source material into one or more reviewed issues.
---

# Issues

Turn source material into focused, reviewed issues in the user's tracker. Tracker-specific access, commands, and dependency handling live in [references/github.md](references/github.md), [references/linear.md](references/linear.md), and [references/jira.md](references/jira.md) — use the one for the chosen tracker, resolved per [shared/planning-config.md](../shared/planning-config.md).

## Step 1: Parse the Request

1. **Intent** — what kind of issues (bug, feature, enhancement) and any labeling or formatting instructions.
2. **Source material** — a spec, file, folder, image, or inline content. Verify referenced paths exist.
3. **Tracker** — the one the user names; otherwise infer from source links, project instructions (`AGENTS.md`, `CLAUDE.md`), or which tracker is reachable. Ask if two are plausible.

## Step 2: Extract Issue Content

One issue per concern, as **vertical slices**: each delivers user-visible or testable behavior and fits one build session. Follow the spec's milestones; when building the MVP straight from the spec, only later milestones become issues.

| Source | How to extract |
|---|---|
| Spec/plan | Split into vertical slices per milestone |
| Inline text | Parse numbered lists, bullets, separate concerns |
| File | Split on headers, lists, section breaks |
| Image | Transcribe relevant evidence; use repository-relative references only when readers can access them |
| Folder | Enumerate candidates first; exclude `.git`, dependencies, build output, secrets, binaries, symlinks |
| Code TODO/FIXME | Search the pattern, consolidate same-concern matches, include verified line numbers |

## Step 3: Structure Each Issue

- **Title:** preserve the source's original wording; only lightly format. For a spec slice with no clear name, write a short outcome title ("Export expenses as CSV").
- **Body:** use [references/issue_body_template.md](references/issue_body_template.md); fill applicable sections, omit the rest.
- **Acceptance criteria:** Given/When/Then form, traceable to the spec's verification rows.
- **Hierarchy:** for Jira, group slices under an epic with stories and subtasks; for GitHub/Linear, use a parent epic issue/issue with sub-issues or task-lists where supported.
- **Labels:** use [references/labels.md](references/labels.md) for the taxonomy and auto-detection keywords. Most specific label wins; a user-named label beats all keyword hints.

## Step 4: Resolve Destination, Duplicates, and Labels

1. Resolve the exact destination (repo, or Linear team/project, or Jira project) and who can see it. Never rely on the current directory for a mutation.
2. Search open and closed issues for likely duplicates; surface matches before proposing new ones.
3. Fetch the complete label inventory; apply only existing labels unless the user approves creating missing ones.
4. Scan outgoing content for secrets, private code, personal data, machine-local paths; redact or omit before review.
5. Link the source spec by its URL in the repository (e.g. `https://github.com/OWNER/REPO/blob/<branch>/plans/blueprint_<name>.md`), not a local path. If the spec isn't committed yet, say so and offer to commit and push first.

## Step 5: Preview

Before creating anything, show the destination and visibility, the number of issues, and each issue's exact title, body, labels, and dependencies, plus likely duplicates and proposed new labels. For a large batch, write the payload to a local draft file and show that.

If the user asked to *create*, this preview is informational: publish after showing it. If they asked for drafts or review, wait for go-ahead.

## Step 6: Create Issues

Create approved missing labels, then create issues in dependency order so blockers exist first. Record each dependency with the tracker's own mechanism. After each creation, record the identifier and URL immediately. Stop on ambiguous failures, recheck duplicates before retrying, and report partial completion.

## Step 7: Summary

Total created (identifiers, titles, links), the dependency order, and anything not created with why.

## Guidelines

- Atomic issues: one concern each, understandable by someone else
- End-to-end proof: every issue completing a user journey gets a real-user-path check (browser, terminal, HTTP), with side effects to confirm (saved records, files written, messages sent)
- Story points: estimate only when the user uses them; otherwise omit

## Error Handling

- No connector or authenticated CLI available → say so and hand back drafts
- Image unreadable → note it and ask for alternative input
