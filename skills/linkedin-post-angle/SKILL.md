---
name: linkedin-post-angle
description: Pick the single claim, lead pillar, and target reader for a LinkedIn post from a filled fact sheet — kills posts that are really two posts. Use for "what's the angle", "which claim", "too many ideas", "what should this post actually say", or as stage 2 of the LinkedIn pipeline.
---

# Angle

One claim. One lead pillar. One reader. Everything else is demoted to support.

Input: a completed fact sheet. If there is no fact sheet, load
`linkedin-post-intake` first — do not invent one.

## Procedure

1. **Write three candidate claims** as sentences a reader could disagree with.
   ```
   A. Most eval suites measure model quality; ours measures decision quality, and
      that cut false alarms by 70%.
   B. We replaced our staging environment with preview environments and deploys
      got faster because review got slower.
   C. Agent frameworks are overhead below three agents.
   ```
2. **Score each** on four tests, one line each:
   - **Disagreement:** would a competent peer say "no"?
   - **Evidence:** does the fact sheet already prove it, or would it need a post
     it does not have?
   - **One post:** can it be supported without a second claim?
   - **Stakes:** does acting on it change what the reader does Monday?
3. **Pick one and say why the others lost.** Never present three options and ask
   the author to choose — take a position.
4. **Choose the lead pillar** — the pillar that carries the claim. The other three
   become support, in this order: the second strongest closes the post.
5. **Name the reader** concretely: `staff engineer owning CI`, not `engineers`.
6. **State the ask:** the one thing the reader should do differently.

## Kill rules

Reject a claim if:

- it needs a number the fact sheet does not have
- it is a description ("here is how we built X") with no stance
- it is true for everyone, and therefore useful to no one
- it requires explaining two mechanisms
- the honest version is "we got lucky"

## Output

```
ANGLE
claim:      <one sentence>
lead:       <metric | outcome | alternative | use-case>
reader:     <role, scale>
ask:        <what they do differently>
support:    <pillar order for the rest>
rejected:   <the other two claims, one line each on why>
```

## Demotion

When the fact sheet has three good angles, do not spend them in one post. Name
the spare claims under `reserve:` so they can become later posts. A month of good
posts is a list of angles, not a list of paragraphs.

## Handoff

- **In:** fact sheet from `linkedin-post-intake`.
- **Out:** angle card.
- **Next:** `linkedin-post-draft`.
