# Linear Reference

## Access
Prefer a Linear connector or MCP server; otherwise the `linear` CLI if authenticated.

## Model
Team → Project → Issue. Slices from one milestone can be grouped under a Project or an epic issue. Status starts at the team's default (usually Backlog/Triage).

## Commands (CLI)
- Duplicate search: `linear issue list --team <team> --search "<terms>"`
- Create: `linear issue create --team <team> --title "<title>" --description "<body>" --labels <labels>`
- Dependencies: `linear issue relate <id> blocks <id>` — create blockers first.

## Rules
- Resolve the team and optional project explicitly before any write
- Labels must exist in the team's workspace settings
