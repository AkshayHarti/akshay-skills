---
name: linkedin-post-package
description: Turn a passing LinkedIn draft into a publishing package — final paste-ready text, first comment, three hashtags, and an image brief (chart type, exact data, caption, alt text) or a justified decision to post without an image. Use for "package it", "finalize", "ready to publish", "image brief", or as stage 5 of the LinkedIn pipeline.
---

# Package

Input: a draft that passed critique. If it has not been scored, run
`linkedin-post-critique` first — do not package an unread draft.

## 1. Image decision

Apply the thumbnail test from `reference/image-brief.md`: covering the text, can a
reader get the claim from the image alone?

- **No** → `IMAGE: none` plus one line of why. Text-only is the right answer more
  often than not.
- **Yes** → write the brief. Pick the chart type from the claim, not from taste.

Never invent data for an image. Every number in the brief must already be in the
post.

## 2. First comment

Carries what the body cannot: the repo link, the doc, the dataset, or the one
specific question you actually want answered.

If there is no link and no real question, `FIRST COMMENT: none`. An empty CTA is
worse than none.

## 3. Hashtags

Three maximum, all real topics the post is about. No `#Innovation`, `#AI`,
`#Tech`, `#Leadership` as filler. Lowercase or standard casing, no chains.

## 4. Final pass

- [ ] No markdown emphasis survived (`**`, `##`, `-` bullets rendered as lists are
      fine but keep it plain)
- [ ] Line 1 and 2 survive the ~180-char fold
- [ ] Every number in the post also appears in the image brief, or the inverse —
      no drift between text and visual
- [ ] No link in the body
- [ ] Ends on the disqualifier, decision rule, or strongest line — not a summary
- [ ] Name/tenant/customer identifiers removed from any screenshot
- [ ] Read once out loud, no edits made

## Output

```
POST
<final text, paste-ready, exactly as it will appear>

FIRST COMMENT
<link or question, or "none">

HASHTAGS
#a #b #c

IMAGE BRIEF
purpose:     <one sentence>
type:        <chart type>
data:        <every number with unit and window>
axes:        <x, y, ranges>
annotations: <1-2 callouts>
size:        1200x627
caption:     <="120 chars>
alt:         <describes the claim>
remove:      3D, gradients, stock photos, extra accent colours
```

or

```
IMAGE: none — <reason>
```

## Rules

- The post text is final and complete. No "..." and no placeholders.
- Do not add hashtags to the body.
- Do not change the copy during packaging. If packaging reveals a defect, send it
  back to critique and say so.

## Handoff

- **In:** a `ship` verdict from `linkedin-post-critique`.
- **Out:** publishing package.
- **Next:** terminal. Nothing posts itself — the author pastes.
