# AI Workflow Packaging Shortlist

| Repeated workflow | Supporting evidence from the repo | Frequency / confidence | Recommended form | Why create or skip |
| --- | --- | --- | --- | --- |
| Iterate on one chapter, then run broader regression | `AllTest.ps1` exists in every numbered chapter; `RunAllTests.ps1` loops all numbered chapters; `README.md` explains both flows and recommends rerunning tests after every change | 22 chapters / High | Skill/playbook | Worth packaging because the chapter-first, repo-second validation order is stable, repeated, and easy to follow incorrectly without a checklist |
| Add deterministic random behavior that Pester can lock down | Seeded randomness appears in `09_abuse/abuse.ps1`, `10_telephone/telephone.ps1`, `12_ransom/ransom.ps1`, `16_scrambler/scrambler.ps1`, `19_wod/solution1.ps1`, and `20_password/password.ps1` | 6+ chapters / High | Skill/playbook | Worth packaging because reproducible randomness is repeated, test-sensitive, and error-prone when the seed is set in the wrong place |
| Normalize arguments that can be either literal text or a file path | File-or-text handling appears in `05_howler/howler.ps1`, `08_apples_and_bananas/apples.ps1`, `10_telephone/telephone.ps1`, `12_ransom/ransom.ps1`, and `15_kentucky_friar/friar.ps1` | 5+ chapters / High | Skill/playbook | Worth packaging because the input contract recurs and benefits from a consistent sequence of checks and validations |
| Build text transforms with regex while preserving punctuation and case | Regex-driven transforms appear in `08_apples_and_bananas/apples.ps1`, `14_rhymer/rhymer.ps1`, `15_kentucky_friar/friar.ps1`, `16_scrambler/scrambler.ps1`, and `17_mad_libs/mad.ps1` | 5+ chapters / High | Skill/playbook | Worth packaging because the same design pattern recurs across multiple chapters with stable inputs and outputs |
| Add release or changelog automation | No release workflow, changelog process, or release docs were found in the repo structure, issues, or discussions | Low / Low | Skip | Not enough maintainer evidence to justify adding publishing automation |
| Scaffold the same AI skill across multiple harness formats | Recent issues `#12`, `#14`, `#16`, `#18`, and `#20` plus related open PRs show repeated interest in AI skill authoring, but this branch has no established `.agents` or `.claude` layout yet | Recent activity / Medium | Skip for now | Likely useful, but overlapping solutions are already being explored in other open PRs, so duplicating that work here would be speculative |

## Created on this branch

- `.github/skills/tiny-ps-chapter-test-loop/SKILL.md`
- `.github/skills/tiny-ps-deterministic-random/SKILL.md`
- `.github/skills/tiny-ps-input-normalization/SKILL.md`
- `.github/skills/tiny-ps-regex-text-transform/SKILL.md`

These are the highest-confidence missing items because they are repo-specific, repeated across many chapters, and narrow enough to validate by inspection against the current chapter structure, tests, and README guidance.
