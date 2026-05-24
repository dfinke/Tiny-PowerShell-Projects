---
description: Design or refactor a PowerShell module with clean public/private boundaries and stable exported commands.
argument-hint: "[module goal]"
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# PowerShell Module Workflow

Use this command when creating or improving reusable modules.

1. Organize code into public and private functions.
2. Use consistent verb-noun names and stable signatures for exports.
3. Keep exported commands focused and composable through object output.
4. Avoid leaking helper functions into the public API.
5. Verify exports and example usage after changes.
