---
name: tiny-ps-regex-text-transforms
description: 'Use this skill for chapters centered on regex and text rewriting (jump, friar, scrambler, rhyme-style transforms).'
compatibility: 'Cross-platform. Works with Copilot-compatible, Codex-compatible, and Claude-compatible skill loaders that support SKILL.md front matter.'
argument-hint: 'Optional: source chapter and sample input/output pair'
---

# Tiny PowerShell Regex & Text Transform Patterns

## Use when

- The task is string mutation, tokenization, replacement, or consonant/word matching.
- The chapter behavior depends on exact textual output.

## Implementation checklist

1. Encode rules as deterministic transforms.
2. Keep punctuation and whitespace behavior explicit.
3. Handle case-insensitive matching only where required by tests.
4. Validate edge cases: empty input, single word, punctuation-heavy text.

## Preferred style

- Use readable regex patterns with named intent.
- Keep transformation steps small and composable.
- Verify final output with chapter `AllTest.ps1`.
