---
name: tiny-ps-regex-text-transform
description: Use when implementing or changing the repo's recurring regex-based text transformation chapters.
---

# Tiny PowerShell Regex Text Transform

## When to use
- The chapter modifies words or characters using pattern matching.
- Output must preserve punctuation, word boundaries, or character case.

## Workflow
1. Start from the smallest regex that matches only the text you intend to transform.
2. Preserve surrounding punctuation and spacing by splitting or replacing only the matched spans.
3. Use a scriptblock evaluator when replacement logic depends on the matched text, such as preserving uppercase vowels.
4. Add or update tests that cover representative words, punctuation, case handling, and any file-input path the chapter already supports.

## Output
- The transform changes only the intended matches.
- Existing punctuation, spacing, and case-sensitive expectations remain covered by tests.
