#!/usr/bin/env bash
# AI Planning Skills installer — macOS/Linux
set -euo pipefail

SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude/skills"
TRACKERS=""

mkdir -p "$DEST"

for skill in groundwork clarify shape blueprint stress-test backlog impact debrief; do
  if [ -d "$DEST/$skill" ]; then
    TRACKERS="$TRACKERS  replaced: $skill\n"
  fi
  mkdir -p "$DEST/$skill"
  cp -R "$SRC/skills/$skill/." "$DEST/$skill/"
done
mkdir -p "$DEST/shared"
cp -R "$SRC/shared/." "$DEST/shared/"

echo "Installed 8 skills to $DEST"
[ -n "$TRACKERS" ] && echo -e "Updated existing installs:\n$TRACKERS"
echo "Start Claude Code and try: /plan or /shape"
