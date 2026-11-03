---
name: linkedin-post
description: Run the full LinkedIn post pipeline for engineering, AI, and DevOps posts — routes raw material (shipped work, a thesis, an external link) through intake, angle, draft, critique, and packaging into a finished post plus image brief. Use when asked to "write a LinkedIn post", "turn this into a post", "draft a post about X", or "help me post about Y".
---

# LinkedIn post pipeline

Turns raw material into a post built on four pillars — **metric, outcome,
alternative, practical use case** — plus an image brief.

## Hard rules

1. **No number, no claim.** Every quantitative statement carries baseline, after,
   window, and method. Never invent, round up, or borrow a number from another
   context. Missing number → ask once, or route to the question/observation form.
2. **One post, one claim.** If it needs two, say so and split it.
3. **The tradeoff is the credibility.** A post with no cost, risk, or disqualifier
   reads as a vendor announcement.
4. **Write like a design review, not a keynote.** See `reference/voice.md`.
5. **Never skip critique.** A draft that has not been scored has not been written.

## Route first

| Input looks like | Mode |
|---|---|
| "we shipped / migrated / cut / fixed X" | `shipped` |
| "I think most teams get X wrong" | `thesis` |
| a URL, release note, benchmark, article | `reaction` |

Read `reference/modes.md` for the playbook of the chosen mode.

## Stages

Run in order. Each stage has a gate — if the gate fails, stop and fix it there
rather than carrying the defect forward.

| # | Stage | Skill | Gate |
|---|---|---|---|
| 1 | Intake | `linkedin-post-intake` | fact sheet complete, confidence labelled |
| 2 | Angle | `linkedin-post-angle` | one claim, one lead pillar, named reader |
| 3 | Draft | `linkedin-post-draft` | hook survives the fold, pillar evidence within 2 lines of each claim |
| 4 | Critique | `linkedin-post-critique` | all four pillars ≥7, slop lint clean |
| 5 | Package | `linkedin-post-package` | post + hashtags + first comment + image brief |

## Execution

Each stage is a **separate skill**. Load it with the skill tool — do not simulate
the stages from this file. The references below are shared context, not a shortcut
past the gates.

1. `linkedin-post-intake` → fact sheet + verdict
2. `linkedin-post-angle` → angle card
3. `linkedin-post-draft` → labelled drafts
4. `linkedin-post-critique` → verdict + fixes
5. `linkedin-post-package` → publishing package

Pass the artifact forward verbatim. If a gate fails, return to the stage that owns
the defect and re-run from there — do not patch a defect from a later stage.

Announce `<stage> / <mode>` once per stage, one line. Do not narrate the pipeline
at length.

## Output

```
POST
<final text, ready to paste, no markdown emphasis>

FIRST COMMENT
<link or the specific question; omit if neither>

HASHTAGS
#a #b #c

IMAGE BRIEF
<purpose, type, data, axes, annotations, size, caption, alt text>

SCORECARD
metric 8 · outcome 9 · alternative 7 · use case 8
```

## Shortcuts

If the author asks for one stage only, load that stage's skill and skip the rest:

- "review / critique / does this sound like AI" → `linkedin-post-critique` on the
  text as given, no intake required.
- "just give me the image brief" → `linkedin-post-package`, image section only.
- "is this enough for a post?" → `linkedin-post-intake` alone, then a verdict.

## References

- `reference/pillars.md` — the four pillars and their tests
- `reference/fact-sheet.md` — the artifact passed between stages
- `reference/modes.md` — three playbooks
- `reference/hooks.md` — the fold and hook patterns
- `reference/voice.md` — register and calibration examples
- `reference/anti-slop.md` — banlist and lint pass
- `reference/image-brief.md` — image specification
