---
name: tiny-ps-deterministic-random
description: 'Use this skill for chapters with random behavior that must still be testable (insult generation, mutation, scrambling).'
compatibility: 'Cross-platform. Works with Copilot-compatible, Codex-compatible, and Claude-compatible skill loaders that support SKILL.md front matter.'
argument-hint: 'Optional: chapter name and whether seed support already exists'
---

# Tiny PowerShell Deterministic Randomness

## Use when

- Program behavior uses randomness.
- Tests need stable outcomes.

## Pattern

1. Support an optional seed or deterministic mode.
2. Keep random source localized so tests can control it.
3. Do not let randomness leak into output formatting decisions.
4. Document expected deterministic invocation in chapter README/test usage if needed.

## Validation

- Same seed => same output
- Different seeds => acceptable variation
- No seed => normal randomized behavior
