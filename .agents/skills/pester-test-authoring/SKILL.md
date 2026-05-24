---
name: pester-test-authoring
description: Use when writing or updating Pester tests for PowerShell scripts and modules, including behavior, error, and edge-case coverage.
---

# Pester Test Authoring

Use this skill when adding confidence to PowerShell code changes with focused tests.

## Workflow

1. Write `Describe` blocks per script/function responsibility.
2. Cover happy path, invalid input, and edge cases.
3. Assert output shape and values, not only text formatting.
4. Keep tests deterministic by controlling randomness and external dependencies.
5. Ensure tests communicate intent through readable test names.

## Output Checklist

- Core behavior has direct tests.
- Error handling paths are explicitly asserted.
- Tests are deterministic and do not depend on external state.
- New tests fail before fix and pass after fix.
