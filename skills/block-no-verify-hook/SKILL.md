---
name: block-no-verify-hook
description: Reference for the block-no-verify guard that intercepts git hook-bypass flags (--no-verify, --no-gpg-sign), including the regex pattern, exit-code protocol, and extension recipes. Use when extending the guard, wiring it into a harness that supports PreToolUse hooks, or auditing which flags are covered.
---

# Block No-Verify Hook (reference)

The original upstream plugin ships a Claude Code `PreToolUse` hook that rejects any Bash tool call containing git hook-bypass flags. **Kimi Code does not execute hooks**, so in Kimi the guard is enforced behaviorally by the agent (see the `block-no-verify` skill, which includes a ready-made `scripts/block-git-bypass.sh`). This file preserves the hook design as a reference for teams that wire the guard into a harness with hook support (Claude Code, custom CI gates, etc.).

## Blocked flags

| Flag | Purpose | Why blocked |
|------|---------|-------------|
| `--no-verify` | Skips pre-commit and commit-msg hooks | Bypasses linting, formatting, testing, security checks |
| `--no-gpg-sign` | Skips GPG commit signing | Bypasses commit signing policy |
| `-n` (after `commit`) | Short form of `--no-verify` | Same as above, e.g. `git commit -nm "msg"` |
| Unambiguous prefixes | git accepts `--no-veri` etc. | Pattern matches any prefix of `--no-verify`/`--no-gpg-sign` |

## The pattern

```regex
"command"[[:space:]]*:[[:space:]]*"([^"\\]|\\.)*(--no-(ver|g)|commit([^"\\]|\\.)*([[:space:]]|\\[tn])-[a-zA-Z]*n)
```

How it works:

1. **Inspection scope** — the hook only inspects the `command` value of the tool-call JSON on stdin, so text in `cwd` or the tool call's description cannot trigger it. No `jq` or `node` is required.
2. **Prefix matching** — `--no-(ver|g)` matches `--no-verify`, `--no-gpg-sign`, and every shorter unambiguous prefix git accepts.
3. **Short-option groups** — the `commit...-[a-zA-Z]*n` branch catches `git commit -n ...`, `git commit -nm ...`, etc.
4. **No `git` anchor** — the pattern deliberately does not look for the word `git`, so it also catches `if git ...`, `sudo git ...`, and `g=git; $g commit --no-verify`.
5. **Fail-safe** — a false match (e.g.g. a commit message that merely mentions a flag) blocks the call; blocking is the safe failure mode.
6. **Limits** — the check is textual. It stops an agent that reaches for a bypass flag out of habit, not one determined to evade it (e.g. building the flag from pieces, or `git -c core.hooksPath=/dev/null commit`).

## Exit-code protocol

| Code | Meaning |
|------|---------|
| 0 | Allow the tool call to proceed |
| 1 | Error (tool call still proceeds, warning shown) |
| 2 | Block the tool call entirely |

## Reference configuration (harnesses with PreToolUse support)

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "if grep -qE '\"command\"[[:space:]]*:[[:space:]]*\"([^\"\\\\]|\\\\.)*(--no-(ver|g)|commit([^\"\\\\]|\\\\.)*([[:space:]]|\\\\[tn])-[a-zA-Z]*n)'; then echo 'BLOCKED: --no-verify and --no-gpg-sign flags are not allowed. Run the commit without bypass flags so that pre-commit hooks execute properly.' >&2; exit 2; fi"
          }
        ]
      }
    ]
  }
}
```

Install per-project at `.claude/settings.json` (project root) or globally at `~/.claude/settings.json`. Preserve and merge with any existing `hooks.PreToolUse` entries — never overwrite other hooks.

## Extending the pattern

Add flags such as `--force` by appending an alternation branch:

```regex
|git([[:space:]]|\\t)([^"\\]|\\.)*--force
```

## Verification

```bash
# Must be blocked (exit 2):
git commit --no-verify -m "test"
# Must pass (exit 0):
git commit -m "test"
```

## Best practices

1. **Commit the settings file** so all team members get the guard.
2. **Document it in onboarding** so developers know why bypass flags are rejected.
3. **Pair with real pre-commit hooks** — the guard only ensures hooks run; the hooks must do meaningful checks.
4. **Test after setup** — intentionally trigger the block once to confirm wiring.
