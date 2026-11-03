---
name: linkedin-post-critique
description: Audit any LinkedIn post draft or published post against the four pillars (metric, outcome, alternative, practical use case), run the anti-slop lint, and return a ship/fix/kill verdict with concrete rewrites. Use for "critique this post", "review my draft", "does this sound like AI", "slop check", "why is this flat", or on demand from the pipeline.
---

# Critique

Blunt, specific, rewrite-level. Works on a draft, a published post, or someone
else's post pasted in. No fact sheet required.

Read `reference/pillars.md`, `reference/anti-slop.md`, `reference/hooks.md`.

## Procedure

1. **Claim audit.** List every quantitative or causal claim, and what in the text
   supports it.

   | Claim | Support in text | Verdict |
   |---|---|---|
   | "3x faster deploys" | none | unsourced — cut or supply baseline+window |

   Any unsourced number is a hard fail, regardless of everything else.
2. **Score the four pillars** 0–10 with the scale in `pillars.md`. Quote the
   sentence that earned or lost the point.
3. **Slop lint.** Scan against the banlist and the AI tells. Quote each hit.
4. **Fold test.** Print the first ~180 characters as a reader sees them. Would a
   peer stop? If not, the hook is the highest-leverage fix.
5. **Forward test.** Would a peer send this to a colleague with "this is the thing
   I was telling you about"? If it would only get a like, say so.
6. **Top three fixes**, ordered by leverage, each as a rewrite — before/after
   lines, not advice.

## Verdict

- **ship** — all four ≥7, no unsourced numbers, lint clean
- **fix** — structure sound, specific defects listed; say if one fix is enough
- **kill** — no claim, or the evidence does not exist; say what evidence would
  make it a post

## Output

```
VERDICT: fix

CLAIM AUDIT
| ... |

SCORECARD
metric 4 · outcome 8 · alternative 2 · use case 5

LINT
"leveraged" (banned) · tricolon in ¶3 · summary paragraph at the end

FOLD
> first 180 chars...

FIXES
1. Open with the number ...
   before: "..."
   after:  "..."
2. ...
3. ...
```

## Rules

- Quote the offending line. A critique without a quote is an opinion.
- Never rewrite the whole post here — that is drafting. Fixed lines and direction.
- Do not soften the verdict to be encouraging. `kill` is a useful answer.
- If the author supplies a number when you flag it, re-run only the claim audit.

## Handoff

- **In:** a draft from `linkedin-post-draft`, or any text the author supplies —
  this skill stands alone and needs no fact sheet.
- **Out:** verdict + fixes.
- **Next:** `fix` → `linkedin-post-draft` with the fix list;
  `ship` → `linkedin-post-package`; `kill` → stop.
