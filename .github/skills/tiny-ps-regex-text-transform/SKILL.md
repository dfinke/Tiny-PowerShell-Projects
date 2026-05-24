---
name: tiny-ps-regex-text-transform
description: Use when a chapter transforms text with regex while preserving delimiters, punctuation, and casing expectations.
---

# Tiny PowerShell Regex Text Transform

## When to use
- You are mutating words or characters inside larger text.
- Whitespace-only splitting would lose punctuation or structure.

## Workflow
1. Identify whether the chapter needs token replacement (`[regex]::Replace`) or token-preserving splitting (`[regex]::Split`).
2. Transform only the matched text, leaving separators and non-target characters untouched.
3. Preserve casing intentionally when examples or tests expect it.
4. Add examples for punctuation, apostrophes, short words, and mixed-case input.

## Output
- Text transforms that preserve surrounding structure.
- Focused tests for punctuation and edge-case tokens.
