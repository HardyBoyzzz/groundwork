#!/usr/bin/env bash
# Groundwork installer — Google Antigravity (macOS/Linux)
# Skills are the same open SKILL.md format; Antigravity reads them from ~/.gemini/config/skills
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.gemini/config/skills"

mkdir -p "$DEST"
cp -R "$SRC/skills/." "$DEST/"

echo "Installed Groundwork skills to $DEST"
echo "Open Antigravity, run /skills to confirm, then try: /groundwork or /shape"
