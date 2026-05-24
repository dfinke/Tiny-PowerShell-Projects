---
description: Use when a chapter relies on randomness and you need reproducible PowerShell behavior plus stable Pester assertions.
argument-hint: "[random behavior to make deterministic]"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# Tiny PowerShell Deterministic Random

## When to use
- The script uses `Get-Random` or `[Random]`.
- Tests or examples need exact output for a known seed.

## Workflow
1. Add a seed parameter and support the chapter's expected short and long flag names when tests or README require them.
2. Initialize randomness exactly once near the start with `Get-Random -SetSeed` or `[Random]::new($seed)`.
3. Keep the sequence of random calls stable so the same seed keeps producing the same output.
4. Add Pester examples that assert exact results for chosen seeds and representative option combinations.

## Output
- Stable, repeatable output for the same seed.
- Pester tests that lock in deterministic random behavior.
