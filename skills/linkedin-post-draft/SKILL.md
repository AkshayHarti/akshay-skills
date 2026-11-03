---
name: linkedin-post-draft
description: Write the body of a LinkedIn post from a fact sheet and a chosen angle — two or three drafts with different hooks and structures, tuned for the feed's fold and an engineering reader. Use for "draft it", "write the body", "give me a few options", or as stage 3 of the LinkedIn pipeline. Requires a fact sheet and angle; use linkedin-post for the full pipeline.
---

# Draft

Inputs: a filled fact sheet and an angle. Missing either, run that stage first —
`linkedin-post-intake` or `linkedin-post-angle`. Do not draft from a hunch.

Read `reference/modes.md` (structure for the mode), `reference/hooks.md` (the
fold), `reference/voice.md` (register), `reference/anti-slop.md` (the lint you
must already be passing).

## Procedure

1. **Three hooks, three patterns.** Different rows of the hook table, not three
   phrasings of one. Put the number or the tension in line 1.
2. **Pick one hook, write the body to the mode structure.** Six beats for
   `shipped`, six for `thesis`, six for `reaction`. The beat that carries the
   strongest pillar goes second, not last.
3. **Evidence adjacency.** Every claim sits next to its number. If the reader has
   to scroll to find the evidence, move the number up.
4. **Trim to length.** 120–220 words (`shipped`), 100–180 (`thesis`/`reaction`).
   Cut in this order: preamble, summary paragraph, adjectives, the weakest of two
   examples, the timeline.
5. **Second draft, different structure.** Not a paraphrase — change the opening
   move (e.g. number-first vs replacement) or the close (disqualifier vs
   decision rule).
6. **Read it out loud.** Any sentence you would not say in a review meeting gets
   rewritten or deleted.

## Format

- Plain text. No `**bold**`, no `##`, no markdown that has to be stripped before
  posting — LinkedIn swallows it.
- One or two sentences per paragraph, blank line between.
- No links in the body. The link goes in the first comment.
- No hashtags in the body.
- Zero emoji, or one.

## Rules

- Never introduce a number that is not in the fact sheet. If a sentence needs one
  and the sheet is empty there, stop and say so.
- Never soften a real tradeoff to sound better. The cost is the credibility.
- Never end on a summary of what was just said. End on the disqualifier, the
  decision rule, or the strongest single line.
- Do not write a CTA you would not answer yourself.

## Output

```
DRAFT 1 — <hook pattern>, <structure note>
<hook line>
<line 2 or blank>
<body>

DRAFT 2 — <hook pattern>, <structure note>
...
```

Then one line: which draft to ship and why. Optionally annotate the survivor's
beats in a single trailing line, not inline.

## Handoff

- **In:** fact sheet (`linkedin-post-intake`) + angle card (`linkedin-post-angle`).
- **Out:** labelled drafts + a recommendation.
- **Next:** `linkedin-post-critique`.
