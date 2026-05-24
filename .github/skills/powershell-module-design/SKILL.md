---
name: powershell-module-design
description: Use when creating or evolving reusable PowerShell modules with public/private function boundaries and maintainable exports.
---

# PowerShell Module Design

Use this skill when organizing code into reusable modules.

## Workflow

1. Separate public and private functions clearly.
2. Keep exported function names verb-noun and consistent with approved verbs.
3. Design functions to compose through the pipeline and object output.
4. Keep module entry points small; move logic into testable functions.
5. Export only stable commands and avoid leaking helper functions.

## Output Checklist

- Module surface area is intentionally limited.
- Function naming and signatures are consistent.
- Commands return useful objects for downstream automation.
- Exports match intended public API.
