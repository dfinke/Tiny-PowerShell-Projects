---
description: Use when a chapter accepts either literal text or a file path and should normalize input once before processing.
argument-hint: "[input contract]"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# Tiny PowerShell Input Normalization

## When to use
- The script can receive literal text or a path to a file.
- The rest of the logic should not care where the content came from.

## Workflow
1. Accept a single text-or-path parameter unless the chapter already defines a clearer contract.
2. Use `Test-Path` early to detect file input and read content once with `Get-Content -Raw` for whole-text transforms or line-based reads only when required.
3. Normalize the input near the top so downstream logic works on content, not file paths.
4. Add tests for both direct text and file input using the same expected output where appropriate.

## Output
- One normalized content flow regardless of whether input came from a file or the command line.
- Paired tests covering both input forms.
