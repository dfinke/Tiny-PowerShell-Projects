---
name: tiny-ps-test-loop
description: 'Use this skill to run the expected Tiny PowerShell Projects validation loop quickly (chapter tests first, then repository tests).'
compatibility: 'Cross-platform. Works with Copilot-compatible, Codex-compatible, and Claude-compatible skill loaders that support SKILL.md front matter.'
argument-hint: 'Optional: chapter directory to test first'
---

# Tiny PowerShell Test Loop

## Use when

- You changed one or more chapter scripts.
- You need a reliable validation sequence before finalizing work.

## Commands

1. From a chapter folder, run:

```powershell
./AllTest.ps1
```

2. From repository root, run:

```powershell
./RunAllTests.ps1
```

## Decision rules

- Start with chapter-local tests for fast feedback.
- Run full repository tests after local pass.
- If full tests fail in unrelated areas, report them separately.
