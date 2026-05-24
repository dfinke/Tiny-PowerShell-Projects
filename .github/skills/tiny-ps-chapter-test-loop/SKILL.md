---
name: tiny-ps-chapter-test-loop
description: Use when changing a single Tiny PowerShell Projects chapter and you need the expected chapter-first, repo-second validation flow.
---

# Tiny PowerShell Chapter Test Loop

## When to use
- You are editing one numbered chapter directory.
- You need to validate a `solution*.ps1`, chapter script, or test change without losing the repo-wide regression context.

## Workflow
1. Work inside the target chapter directory and keep the expected script name and `solution*.ps1` pattern intact.
2. Run that chapter's `./AllTest.ps1` first so Pester exercises the local `solution*.ps1` loop exactly the way the repo expects.
3. After the chapter-level checks pass, run `pwsh -NoLogo -NoProfile -File ./RunAllTests.ps1` from the repository root to look for regressions outside the chapter.
4. Treat pre-existing failures separately from the change you are making; only fix them when they are directly caused by your edit.

## Output
- The changed chapter passes its local `AllTest.ps1` run.
- The root regression run shows no new failures caused by the change.
