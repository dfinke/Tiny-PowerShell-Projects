---
name: powershell-script-cli
description: Use when creating or refactoring standalone PowerShell scripts with robust parameters, pipeline support, and predictable output.
---

# PowerShell Script CLI

Use this skill when building command-line PowerShell scripts intended for direct execution.

## Workflow

1. Define a `param()` block with clear parameter names, types, defaults, and validation attributes.
2. Support pipeline input where it improves usability (`ValueFromPipeline`, `process`).
3. Keep side effects explicit and return objects unless plain text output is required.
4. Handle invalid input early and fail with actionable error messages.
5. Verify behavior using representative examples and edge cases.

## Output Checklist

- Parameters are discoverable and validated.
- Script behavior is deterministic for same inputs.
- Error paths are tested with invalid or missing input.
- Output format is intentional (objects vs formatted strings).
