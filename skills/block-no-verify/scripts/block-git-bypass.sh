#!/usr/bin/env bash
# block-git-bypass.sh — reject git commands that use hook-bypass flags.
#
# Modes:
#   1. Stdin filter (PreToolUse-style, for harnesses that support hooks):
#        <tool-call-json> | block-git-bypass.sh
#      Reads the tool call JSON from stdin and exits 2 if the "command"
#      field contains --no-verify, --no-gpg-sign (or an unambiguous prefix),
#      or a short-option group containing n after `commit`.
#   2. Direct check:
#        block-git-bypass.sh --check git commit -n -m "msg"
#      Exits 2 if the given command line contains a bypass flag.
#
# Exit codes: 0 = allowed, 2 = blocked, 1 = usage error.
set -u

PATTERN='--no-(ver|g)|commit([^"\\]|\\.)*([[:space:]]|\\[tn])-[a-zA-Z]*n'

block() {
  echo 'BLOCKED: --no-verify and --no-gpg-sign flags are not allowed. Run the command without bypass flags so that git hooks execute properly.' >&2
  exit 2
}

if [ "${1:-}" = "--check" ]; then
  shift
  # Reassemble the command line the way a PreToolUse hook would see it.
  cmd=$(printf '%s ' "$@")
  if grep -qE -e "$PATTERN" <<<"$cmd"; then
    block
  fi
  exit 0
fi

# Stdin filter mode: inspect the JSON tool call on stdin.
if grep -qE -e "\"command\"[[:space:]]*:[[:space:]]*\"([^\"\\\\]|\\\\.)*($PATTERN)"; then
  block
fi
exit 0
