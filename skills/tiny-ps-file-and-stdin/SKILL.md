---
name: tiny-ps-file-and-stdin
description: 'Use this skill for chapters that support both filename arguments and STDIN input (for example wc/howler-style scripts).'
compatibility: 'Cross-platform. Works with Copilot-compatible, Codex-compatible, and Claude-compatible skill loaders that support SKILL.md front matter.'
argument-hint: 'Optional: script path and expected STDIN behavior'
---

# Tiny PowerShell File + STDIN Handling

## Use when

- A script can read from files, pipeline input, or both.
- The problem statement mentions `<stdin>` output or multi-file summaries.

## Workflow

1. Keep CLI parameter parsing separate from processing logic.
2. Normalize each input source to the same processing path.
3. Preserve output format and column order expected by tests.
4. Validate file errors and missing inputs in a test-friendly way.

## Minimum validation

- One file path input
- Piped STDIN input
- Multiple files with total row (if expected)
