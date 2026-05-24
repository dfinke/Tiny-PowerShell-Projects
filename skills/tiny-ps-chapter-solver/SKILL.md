---
name: tiny-ps-chapter-solver
description: 'Use this skill when implementing or updating a chapter script in Tiny PowerShell Projects. It applies the repository test-first flow and chapter conventions.'
compatibility: 'Cross-platform. Works with Copilot-compatible, Codex-compatible, and Claude-compatible skill loaders that support SKILL.md front matter.'
argument-hint: 'Optional: chapter directory (for example: 06_wc) and target script name'
---

# Tiny PowerShell Chapter Solver

## Use when

- The user asks to solve or modify one chapter challenge.
- You need to add or update `solution*.ps1` logic in a numbered chapter directory.

## Workflow

1. Read chapter `README.md` and `test.ps1` first.
2. Make the smallest focused update to the chapter script.
3. Preserve parameter names and output shape expected by tests.
4. Run chapter-local validation with `./AllTest.ps1`.
5. If multiple chapter files changed, run root `RunAllTests.ps1`.

## Guardrails

- Do not change unrelated chapters.
- Avoid new dependencies.
- Prefer clear PowerShell pipeline-friendly code.
