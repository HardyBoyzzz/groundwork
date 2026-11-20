#!/usr/bin/env bash
# Groundwork installer — Claude Code (macOS/Linux)
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/skills"

mkdir -p "$DEST"
cp -R "$SRC/skills/." "$DEST/"

echo "Installed Groundwork skills to $DEST"
echo "Start Claude Code and try: /groundwork or /shape"
