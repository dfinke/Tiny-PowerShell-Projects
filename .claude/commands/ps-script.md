---
description: Create or refactor a PowerShell script with robust parameters, pipeline-friendly design, and predictable output.
argument-hint: "[script goal]"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# PowerShell Script Workflow

Use this command to build or improve a standalone `.ps1` script.

1. Define a typed `param()` block with validation and clear defaults.
2. Support pipeline usage where practical and keep logic in `begin/process/end` when needed.
3. Prefer returning objects over pre-formatted text unless explicitly required.
4. Add clear input validation and actionable errors.
5. Validate behavior with examples, including edge and failure paths.
