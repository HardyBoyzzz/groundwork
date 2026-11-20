# Jira Reference

## Access
Prefer a Jira connector or MCP server; otherwise the `jira` CLI (e.g. `jira-cli`/`go-jira`) authenticated against the user's site (`https://<site>.atlassian.net`).

## Model
- **Epic** — one per spec milestone or feature area; named after the outcome
- **Story** — one per vertical slice, with Given/When/Then acceptance criteria
- **Subtask** — optional implementation steps inside a story
- **Spike** — for (research needed) items that must resolve before a story can be estimated

## Fields
- Project key and issue type resolved explicitly before any write
- Story points only if the project uses them (check the field config); otherwise omit
- Epics link stories via the "Epic Link"/parent field; stories block each other via issue links ("blocks"/"is blocked by")

## Commands (jira-cli)
- Duplicate search: `jira search "project = <KEY> AND text ~ \"<terms>\""`
- Create story: `jira create --project <KEY> --type Story --summary "<title>" --description "<body>"`
- Create epic: `jira create --project <KEY> --type Epic --summary "<title>" ...` then set Epic Link on each story

## Rules
- Verify the user's site, project key, and issue-type scheme before the first create; ask if ambiguous
- Never write to a production project without explicit confirmation of the destination
