param(
    [Parameter(Mandatory)]
    [ValidatePattern('^[a-z0-9][a-z0-9-]*$')]
    [string]$SkillName,

    [Parameter(Mandatory)]
    [string]$Description,

    [string]$Title,

    [string]$ArgumentHint = '[task context]',

    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ([string]::IsNullOrWhiteSpace($Title)) {
    $Title = ((($SkillName -replace '-', ' ').Split(' ', [System.StringSplitOptions]::RemoveEmptyEntries) | ForEach-Object {
                if ($_.Length -gt 1) { $_.Substring(0, 1).ToUpper() + $_.Substring(1) }
                else { $_.ToUpper() }
            }) -join ' ')
}

function Write-TemplateFile {
    param(
        [Parameter(Mandatory)]
        [string]$Path,

        [Parameter(Mandatory)]
        [string]$Content
    )

    $directory = Split-Path -Path $Path -Parent
    if ($directory) {
        New-Item -Path $directory -ItemType Directory -Force | Out-Null
    }

    if ((Test-Path -Path $Path) -and -not $Force) {
        throw "File already exists: $Path`nUse -Force to overwrite."
    }

    Set-Content -Path $Path -Value $Content
}

$sharedSkillBody = @"
---
name: $SkillName
description: $Description
---

# $Title

## When to use
- TODO: Describe trigger conditions.

## Workflow
1. TODO: Define stable inputs.
2. TODO: Execute repeatable steps.
3. TODO: Validate clear output or stopping condition.

## Output
- TODO: Describe expected output.
"@

$claudeBody = @"
---
description: $Description
argument-hint: $ArgumentHint
allowed-tools: Read, Write, Edit, Glob, Grep, Bash(pwsh:*)
---

# $Title

## When to use
- TODO: Describe trigger conditions.

## Workflow
1. TODO: Define stable inputs.
2. TODO: Execute repeatable steps.
3. TODO: Validate clear output or stopping condition.

## Output
- TODO: Describe expected output.
"@

$targets = @(
    @{ Path = ".github/skills/$SkillName/SKILL.md"; Content = $sharedSkillBody },
    @{ Path = ".agents/skills/$SkillName/SKILL.md"; Content = $sharedSkillBody },
    @{ Path = ".claude/commands/$SkillName.md"; Content = $claudeBody }
)

foreach ($target in $targets) {
    Write-TemplateFile -Path $target.Path -Content $target.Content
    Write-Host "Created $($target.Path)"
}
