---
description: Use when changing a Tiny PowerShell Projects chapter and you need the expected validation loop from chapter tests to full regression.
argument-hint: "[chapter directory]"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# Tiny PowerShell Chapter Test Loop

## When to use
- You are editing a chapter script or `solution*.ps1` file.
- You want the fastest feedback loop before broader regression.

## Workflow
1. Work inside the chapter directory and keep `solution1.ps1` intact as a known baseline when possible.
2. Run `./AllTest.ps1` in that chapter to execute `test.ps1` against each `solution*.ps1`.
3. When the chapter passes, run `pwsh -NoProfile -File ./RunAllTests.ps1` from the repository root.
4. Note unrelated existing failures separately instead of changing other chapters opportunistically.

## Output
- Chapter-local Pester results for all `solution*.ps1` variants.
- A repository-wide regression result before finalizing changes.
