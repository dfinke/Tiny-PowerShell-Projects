# AI Skills from Tiny PowerShell Projects

These reusable skills are derived from the chapter projects in this repository and are intended for use in Codex, Cloud Code, and similar AI-assisted coding workflows.

## 1) Build robust PowerShell CLI parameters
- **Use when:** creating command-line tools with optional/required inputs.
- **Source chapters:** 01, 02, 03, 09, 17
- **Skill instructions:** add a `param(...)` block, support positional and named args, validate required input early, and print clear usage on bad input.

## 2) Handle file input/output and pipeline input
- **Use when:** scripts need to read files, stdin, and write to stdout/files.
- **Source chapters:** 05, 06, 15
- **Skill instructions:** accept file paths plus pipeline content, verify files with `Test-Path`, and keep output stream-friendly for chaining.

## 3) Count and summarize text metrics
- **Use when:** implementing `wc`-style line/word/character summaries.
- **Source chapters:** 06
- **Skill instructions:** compute per-input totals and overall totals, support multiple files, and format output in a consistent tabular style.

## 4) Transform text using hash-table lookups
- **Use when:** encoding/decoding characters or token substitution.
- **Source chapters:** 04, 07
- **Skill instructions:** store mappings in a hashtable, iterate characters/tokens, replace only known keys, and preserve unknown values.

## 5) Apply regex-based parsing and rewriting
- **Use when:** extracting placeholders, matching word patterns, or rewriting text.
- **Source chapters:** 14, 15, 17
- **Skill instructions:** use `-match`/`-replace` with anchored, readable patterns and keep punctuation/whitespace intact while modifying matched words.

## 6) Implement reproducible randomness
- **Use when:** random output must be testable and repeatable.
- **Source chapters:** 09, 10, 12, 16
- **Skill instructions:** accept a seed parameter, initialize a deterministic random generator, and ensure tests can assert exact output for known seeds.

## 7) Generate controlled random content
- **Use when:** creating synthetic phrases, insults, or transformed text.
- **Source chapters:** 09, 10, 12, 16
- **Skill instructions:** separate source word lists from generation logic, enforce output constraints, and keep generators pure where possible.

## 8) Build word games and verse generators
- **Use when:** generating structured multi-line text (songs, rhymes, templates).
- **Source chapters:** 11, 13, 14
- **Skill instructions:** write small formatting functions per verse/line, handle singular/plural edge cases, and compose full output from those units.

## 9) Split and reconstruct tokenized text safely
- **Use when:** transforming only words while preserving punctuation and spacing.
- **Source chapters:** 15, 16
- **Skill instructions:** tokenize with regex capture groups, mutate only word tokens, and rejoin all tokens in original order.

## 10) Add defensive input validation and errors
- **Use when:** scripts receive user input or external files.
- **Source chapters:** 05, 06, 17, 20
- **Skill instructions:** validate file existence and argument ranges, fail fast with clear messages, and avoid partial output on invalid input.

## 11) Use Pester-driven TDD for scripts
- **Use when:** implementing or refactoring chapter scripts.
- **Source chapters:** all chapters with `test.ps1`/`AllTest.ps1`
- **Skill instructions:** write/adjust behavior in small steps, run `Invoke-Pester` frequently, and keep deterministic tests for random logic using seeds.

## 12) Keep multiple solution variants testable
- **Use when:** exploring alternative implementations.
- **Source chapters:** all chapters with `AllTest.ps1`
- **Skill instructions:** keep `solution*.ps1` variants, copy target file in `AllTest.ps1`, and verify each variant against the same test contract.

---

## Prompt snippets you can give an AI

1. **“Create a PowerShell CLI script with validated `param(...)` arguments, friendly usage text, and Pester tests for valid/invalid inputs.”**
2. **“Write a deterministic random text generator in PowerShell that accepts `-Seed` and has tests asserting exact output.”**
3. **“Implement a regex-based word transformer that preserves punctuation/whitespace and includes edge-case tests.”**
4. **“Build a `wc`-style script that supports stdin and multiple files, with aligned summary output and totals.”**
5. **“Refactor this script into small pure functions and wire it through `AllTest.ps1` so multiple `solution*.ps1` variants can be tested.”**
