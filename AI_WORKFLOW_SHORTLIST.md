# AI Workflow Packaging Shortlist

## Compact shortlist

| Repeated workflow | Supporting evidence | Frequency / confidence | Recommended form | Why create (or skip) |
| --- | --- | --- | --- | --- |
| Run chapter-level tests while iterating on `solution*.ps1` | `AllTest.ps1` exists in 22 chapter folders; each chapter has `test.ps1`; root README explains the `solution*.ps1` loop | 22 chapters / High | Extend existing | Already automated well by chapter `AllTest.ps1`; no new asset needed |
| Run full regression after local chapter changes | `RunAllTests.ps1` loops all numbered chapter folders and executes `AllTest.ps1`; README emphasizes running tests after each change | Repository-wide / High | Skill/playbook | Worth documenting as a consistent maintainer + agent workflow |
| Author the same AI skill across multiple harness layouts | Open issues `#12`, `#14`, `#16`, `#18`; related open PRs `#13`, `#15`, `#17`, `#19`; active `copilot/*ai-skills*` branches | Repeated in recent repo activity / High | Script | Manual copy/edit across `.github/.agents/.claude` is repetitive and error-prone |
| Add release/changelog automation | No release workflow, tags pipeline, or changelog process found in this branch | Low evidence / Low | Skip | Needs stronger maintainer signal before introducing publishing automation |

## Created high-confidence missing items

### `New-AISkillScaffold.ps1` (script)

Creates a synchronized starter skill in all three harness locations from one command:

- `.github/skills/<skill-name>/SKILL.md`
- `.agents/skills/<skill-name>/SKILL.md`
- `.claude/commands/<skill-name>.md`

This packages the repeated cross-harness AI skill authoring workflow into one repeatable step with clear outputs.

### Usage

```powershell
pwsh -NoProfile -File ./New-AISkillScaffold.ps1 \
  -SkillName tiny-ps-example \
  -Description "Use when implementing a repeatable Tiny PowerShell Projects workflow."
```

Use `-Force` to overwrite existing scaffolded files.

### Repository-derived skill set

- `tiny-ps-chapter-test-loop`
  - Packages the repeated chapter-first, repo-second validation workflow documented in `README.md` and implemented by `AllTest.ps1` plus `RunAllTests.ps1`.
- `tiny-ps-deterministic-random`
  - Encodes the repeated seeded-random pattern used in chapters such as `09_abuse`, `10_telephone`, `12_ransom`, `16_scrambler`, `19_wod`, and `20_password`.
- `tiny-ps-regex-text-transform`
  - Captures the repeated regex-first text transformation approach used in `08_apples_and_bananas`, `15_kentucky_friar`, `16_scrambler`, and `17_mad_libs`.
- `tiny-ps-input-normalization`
  - Packages the recurring "literal text or file path" input handling found in chapters such as `05_howler`, `10_telephone`, `12_ransom`, and `15_kentucky_friar`.
