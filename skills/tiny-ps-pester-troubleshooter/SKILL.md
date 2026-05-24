---
name: tiny-ps-pester-troubleshooter
description: 'Use this skill when a chapter Pester test fails and you need a focused debug path without broad refactoring.'
compatibility: 'Cross-platform. Works with Copilot-compatible, Codex-compatible, and Claude-compatible skill loaders that support SKILL.md front matter.'
argument-hint: 'Optional: failing chapter and failing test title'
---

# Tiny PowerShell Pester Troubleshooter

## Use when

- `test.ps1` or `AllTest.ps1` fails for one chapter.
- You need a small, behavior-preserving bug fix.

## Troubleshooting flow

1. Re-run chapter `AllTest.ps1` and capture exact failing assertion.
2. Read only the related test block and target script.
3. Fix root cause with minimal edits.
4. Re-run chapter tests, then run root `RunAllTests.ps1` if chapter passes.

## Guardrails

- Do not weaken assertions just to pass tests.
- Do not remove existing solution variants unless broken and explicitly requested.
