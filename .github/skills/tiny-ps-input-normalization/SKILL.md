---
name: tiny-ps-input-normalization
description: Use when a Tiny PowerShell Projects script accepts either literal text or a file path and must normalize input consistently.
---

# Tiny PowerShell Input Normalization

## When to use
- A parameter may be literal text, a path to a file, or a list of files.
- Tests exercise both direct input and file-backed input paths.

## Workflow
1. Decide the chapter's intended input contract before changing parameter names or types.
2. Detect file-backed input with `Test-Path` only where the chapter expects that behavior.
3. Read file content in the narrowest way that preserves expected output, such as `Get-Content -Raw` when newline structure matters.
4. Keep literal text input working unchanged, and add or update tests for both literal and file-based cases.

## Output
- The script handles direct text and file input consistently with the chapter tests.
- Input normalization changes do not alter unrelated output formatting.
