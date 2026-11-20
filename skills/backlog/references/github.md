# GitHub Reference

## Access
Prefer a GitHub connector or MCP server; otherwise the `gh` CLI (`gh auth status` to verify).

## Commands
- Search duplicates: `gh search issues --repo OWNER/REPO "<title terms>" --state all` and `gh issue list --repo OWNER/REPO --state all --search "<terms>"`
- Labels: `gh label list --repo OWNER/REPO`; create approved: `gh label create <name> --repo OWNER/REPO --description "<desc>" --color <hex>`
- Create: `gh issue create --repo OWNER/REPO --title "<title>" --body-file <path> --label <labels>`
- Link dependencies: task-list syntax in the body (`- [ ] #123`) or the sub-issue API; blockers first.

## Rules
- Destination is always `--repo OWNER/REPO`, never the current directory
- Spec links use the blob URL on the default branch
