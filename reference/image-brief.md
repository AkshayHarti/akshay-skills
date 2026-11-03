# Image brief

The image is a separate deliverable, specified so someone else could build it
without asking a question. Never generate an image as a substitute for a number.

## Decide first: does this post need an image at all?

**Thumbnail test:** covering the text, can a reader get the post's single claim
from the image alone? If not, the image is decoration. Skip it — a text-only post
outperforms a stock photo.

Skip the image when: the post is one argument with one number (the number is the
image), or the visual would need more than ~7 elements.

## Chart type by claim

| The claim is | Use | Not |
|---|---|---|
| before → after, one metric | paired bar, or slope chart across 2 points | pie chart |
| a trend over time | line, inflection annotated | bars per day |
| distribution / tail behaviour | histogram, or p50/p95/p99 band | average only |
| A vs B vs C on two axes | grouped bar, or 2×2 | radar chart |
| a tradeoff | 2×2 quadrant with both axes labelled | table of numbers |
| a system or flow | box-and-arrow diagram, ≤7 boxes | architecture wallpaper |
| a table of options | the table itself, monospaced, 4 rows max | 3D anything |

## Brief format

```
PURPOSE:      the one claim the image makes, in a sentence
READER TAKES: what they know after 3 seconds
TYPE:         paired bar | slope | line | histogram | grouped bar | 2x2 | diagram | table
DATA:         every number, with unit and window
AXES:         x = ..., y = ... (units), range
ANNOTATIONS:  the 1-2 callouts that make the point (e.g. "staging removed here")
SIZE:         1200x627 (feed) or 1080x1080 (square); 64px safe margin
CAPTION:      <=120 chars, states the result, no "see below"
ALT TEXT:     describes the claim, not the pixels
REMOVE:       3D, gradients, stock photos, logos as filler, more than one accent colour
```

## Rules

- **One accent colour.** Highlight the one bar or the one segment that matters;
  everything else is grey.
- **Label the delta on the image.** `−73%` in text, not left for the reader to
  subtract.
- **No unlabelled axes, no truncated y-axis** unless truncation is the point and
  you say so.
- **Text ≥ 14px at 1200×627.** If it doesn't fit, the chart has too much in it.
- **Screenshot mode:** crop to the one panel that proves the claim. Blur tenant
  names, keys, emails, customer identifiers. Check the whole frame, including
  tabs and breadcrumbs.
- **Diagram mode:** label grammar `noun + verb`; arrows point one direction; no
  crossing lines.

## Caption and alt text

- Caption states the result, not the topic: `CI p95: 22 → 6 min after removing two
  serialising steps`.
- Alt text describes the claim: `Bar chart comparing CI p95 of 22 minutes before
  and 6 minutes after, a 73% reduction.` Not "a chart".
