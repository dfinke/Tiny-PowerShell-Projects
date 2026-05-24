---
description: Write or improve Pester tests for PowerShell scripts and modules, including behavior and failure-path assertions.
argument-hint: "[test scope]"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# Pester Test Workflow

Use this command to create reliable tests for PowerShell code.

1. Add `Describe`/`Context` blocks aligned with script or function responsibilities.
2. Cover normal behavior, edge cases, and invalid inputs.
3. Assert object values and types when possible, not only string output.
4. Keep tests deterministic by controlling randomness and dependencies.
5. Run test commands and iterate until failures are resolved.
