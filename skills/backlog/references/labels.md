# Label Taxonomy

Apply the most specific label that fits. Multiple labels allowed when genuinely applicable.

| Label | Meaning | Auto-detection keywords |
|---|---|---|
| `bug` | Something broken | "fix", "error", "crash", "doesn't work", "failing" |
| `feature` | New capability | "add", "build", "create", "support" |
| `enhancement` | Improve existing | "improve", "faster", "better", "refactor" |
| `docs` | Documentation | "readme", "document", "example" |
| `epic` | Grouping issue | only for explicit epic/parent issues |
| `spike` | Research task | "(research needed)", "investigate", "evaluate" |
| `good-first-issue` | Onboarding-friendly | small, isolated, no contract changes |
| `chore` | Maintenance | "upgrade", "dependency", "cleanup" |

Rules: a user-named label wins over keyword hints. Infer intent when none is named — "fix the issues in..." implies bug; "add features from..." implies feature/enhancement. Only apply labels that exist in the tracker unless the user approves creating them.
