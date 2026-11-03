#!/usr/bin/env bash
# Link every skills/<name>/ into an agent skills dir.
# Usage: ./install.sh [dest-dir] | ./install.sh --check
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${1:-$HOME/.agents/skills}"
CHECK=0
[[ "${1:-}" == "--check" ]] && { CHECK=1; DEST="$HOME/.agents/skills"; }

fail=0
for src in "$ROOT"/skills/*/; do
  [[ -f "$src/SKILL.md" ]] || continue
  name="$(basename "$src")"

  if [[ $CHECK -eq 1 ]]; then
    if [[ -L "$DEST/$name" && -f "$DEST/$name/SKILL.md" ]]; then
      echo "ok    $name"
    else
      echo "MISS  $name -> $DEST/$name" >&2
      fail=1
    fi
    continue
  fi

  mkdir -p "$DEST"
  if [[ -e "$DEST/$name" && ! -L "$DEST/$name" ]]; then
    echo "skip  $name: $DEST/$name exists and is not a symlink" >&2
    fail=1
    continue
  fi
  ln -sfn "${src%/}" "$DEST/$name"
  echo "link  $name -> $DEST/$name"
done

exit $fail
