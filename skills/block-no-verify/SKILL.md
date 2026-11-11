---
name: block-no-verify
description: Prevent AI agents from skipping git pre-commit hooks with --no-verify and other bypass flags. Use when setting up a project that enforces commit quality gates, or when the agent is about to run git commit/push/merge commands.
---

# Block No-Verify

Stop AI coding agents from using `--no-verify`, `--no-gpg-sign`, and other bypass flags that skip git hooks.

## Context

AI agents can use bypass flags to skip pre-commit hooks, defeating linting, formatting, testing, and security checks:

```bash
git commit --no-verify -m "quick fix"   # skips pre-commit and commit-msg hooks
git commit --no-gpg-sign -m "unsigned"  # skips commit signing policy
git push --no-verify                    # skips pre-push hooks
```

## How to Enforce

Kimi Code does not execute PreToolUse hooks, so enforcement is behavioral plus an optional script:

### 1. Self-enforcement (always, while this skill is active)

- Never run `git commit`, `git push`, `git merge`, or `git rebase` with `--no-verify`, `--no-gpg-sign`, or short-option groups containing `n` after `commit` (e.g., `git commit -nm "msg"`).
- If a commit fails because a pre-commit hook rejects it, fix the underlying problem (formatting, lint, tests) — do NOT retry with `--no-verify`. Instead, surface the hook failure to the user and propose the fix.
- If the user explicitly asks you to bypass hooks, warn once about what is being skipped, then comply — the user's direct instruction overrides this skill.

### 2. Optional: install the guard script

`scripts/block-git-bypass.sh` (next to this SKILL.md) implements the same check the original Claude Code PreToolUse hook used. It runs in two modes:

```bash
# Direct check of a command line (exit 2 = blocked):
bash scripts/block-git-bypass.sh --check git commit --no-verify -m test

# Stdin filter in PreToolUse-hook style, for harnesses that support hooks:
echo '{"command":"git commit --no-verify -m test"}' | bash scripts/block-git-bypass.sh
```

Offer to wire it into the project where a hook mechanism exists, for example as a git alias wrapper:

```bash
git config alias.safecommit '!bash scripts/block-git-bypass.sh --check git commit && git commit'
```

Or suggest the team install it in their own harness's PreToolUse configuration if they use one that supports hooks (Claude Code, etc.) — the stdin-filter mode is compatible with that format.

## Output

When invoked, report: which mode of enforcement applies, what was checked or installed, and the exact flags that are blocked (`--no-verify`, `--no-gpg-sign`, unambiguous prefixes such as `--no-veri`, and short-option groups like `-nm`).
