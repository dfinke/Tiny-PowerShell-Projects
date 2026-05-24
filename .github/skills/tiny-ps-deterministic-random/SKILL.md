---
name: tiny-ps-deterministic-random
description: Use when a Tiny PowerShell Projects chapter depends on randomness and tests or examples need stable seeded output.
---

# Tiny PowerShell Deterministic Random

## When to use
- The script calls `Get-Random` or `[Random]::new(...)`.
- README examples or Pester tests need the same output for the same seed.

## Workflow
1. Add or preserve a seed parameter that matches the chapter's existing command-line contract.
2. Initialize randomness once near the start of execution with `Get-Random -SetSeed` or a single `[Random]` instance.
3. Keep the order and number of random calls stable so seeded runs stay reproducible.
4. Add or update tests that assert exact output for representative seed values and option combinations.

## Output
- Re-running the script with the same seed produces the same result.
- Pester assertions can lock down the seeded behavior without flakiness.
