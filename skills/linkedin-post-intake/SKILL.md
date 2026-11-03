---
name: linkedin-post-intake
description: Extract and validate the four evidence pillars (metric, outcome, alternative, practical use case) from rough material into a LinkedIn fact sheet, and say plainly whether there is a post here. Use for "fact sheet", "intake", "do I have enough for a post", "I have the idea but no numbers", or as stage 1 of the LinkedIn pipeline.
---

# Intake

Produce a filled fact sheet, or a clear verdict that there is not a post here yet.

Read `reference/fact-sheet.md` for the schema, then `reference/pillars.md` for
what a real pillar looks like.

## Procedure

1. **Read the material.** Repository, notes, PR, incident, article — whatever was
   given. Extract before asking anything.
2. **Fill what is present.** Do not ask for what you can find or infer.
3. **Ask once.** One message, listing only the empty fields, phrased as questions
   an author can answer in one line:
   ```
   To finish the fact sheet I need three things:
   - the baseline before the change (and the window)
   - who specifically stops doing what, now that this exists
   - the option you rejected, and why it lost
   ```
   Do not ask field by field across multiple turns.
4. **Mark unknowns as `unknown`.** Never estimate silently. If you propose a
   number, label it `modeled` and show the arithmetic.
5. **Verdict.** One of:
   - `ready` — gate passes, continue to angle
   - `needs <fields>` — one round of questions asked
   - `not a post yet` — say what would make it one (one concrete thing)

## Gate

Advance only if:

- [ ] `MODE` is `shipped`, `thesis`, or `reaction`
- [ ] `METRIC` is complete with confidence `measured` or `modeled` (or `reaction`
      mode with a named settling metric)
- [ ] `OUTCOME.capability` describes changed behaviour, not a shipped artifact
- [ ] `ALTERNATIVE.why` names a real condition, not "it was worse"
- [ ] `USE_CASE.disqualifier` names who should not copy this
- [ ] `CLAIM` fits in one falsifiable sentence

## Failure modes to catch

| Symptom | Response |
|---|---|
| "30% faster" with no baseline | ask for the before number and window |
| Outcome is "we built X" | ask "so what?" twice, on the record |
| Alternative is "do nothing" | ask what else was genuinely considered |
| Metric is a vendor benchmark | it is not your metric — find your own or switch to `reaction` |
| Two claims | split into two fact sheets |
| No numbers at all, but real experience | keep it, switch to `thesis` and label it as experience, not measurement |

## Output

The filled fact sheet block, then a one-line verdict.

Do not write post copy at this stage. Not one hook, not one draft line.

## Handoff

- **In:** raw material — repo, notes, PR, incident, article.
- **Out:** fact sheet block + verdict.
- **Next:** `linkedin-post-angle` when `ready`. On `not a post yet`, stop and say
  what would make it one.
