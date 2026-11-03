# Anti-slop

LinkedIn has a dialect. Do not write it. This file is the lint pass.

## Word and phrase banlist

| Slop | Replacement |
|---|---|
| excited/thrilled/humbled to share | delete, start with the result |
| game-changer, revolutionary, paradigm shift | the number |
| leverage (as a verb), utilise | use |
| robust, seamless, cutting-edge, state-of-the-art | what it actually does |
| unlock, supercharge, empower, elevate | the verb you mean |
| delve, dive deep, unpack | look at / explain |
| at scale (as filler) | the actual scale: `40k req/s`, `9 services` |
| journey, lessons learned, key takeaways | the lesson itself |
| thought leader, best practice | the practice |
| "the future of X is here" | delete |
| "hot take", "unpopular opinion", "let that sink in" | delete |
| "Thoughts?", "Agree?", "What would you add?" | a specific question, or nothing |

## AI tells

- **Tricolon everywhere.** "Faster, cheaper, safer." Once is rhetoric; four times
  is a language model.
- **"It's not X, it's Y."** Strong once per post, slop the second time.
- **Em-dash-heavy rhythm.** Vary sentence length. Some sentences are four words.
- **Symmetric paragraphs.** Every paragraph the same length reads as generated.
- **Hedging stacks.** "It's important to note that in many cases this can often…"
  Pick a claim.
- **Summary paragraph restating the post.** Cut it. End on the strongest line.
- **Fake vulnerability.** "I failed. Here's what I learned." Only if you actually
  failed and will say how.
- **Emoji bullets.** `🚀 Speed` `✅ Reliability`. Use words.
- **A list of five things where two are real.** Cut to the two.

## Formatting

| Thing | Rule |
|---|---|
| Length | 120–220 words for shipped, 100–180 for thesis/reaction. Over 250, cut |
| Paragraphs | 1–2 lines. Blank line between. No walls |
| Emoji | 0, or 1 total. Never as bullets |
| Hashtags | 3 max, at the end, all real topics. No `#AI #ML #DataScience #Tech #Innovation` |
| Bold/italic | Not available on LinkedIn. Don't produce markdown that has to be stripped |
| Links | In the first comment, not the body. The body keeps the reader |
| CTA | One. A question you actually want answered, or nothing |

## The three tests

1. **Remove the author.** If any eng lead could have posted it, it is generic.
2. **Remove the numbers.** If nothing is lost, the numbers were decoration.
3. **Read line 1 to a peer.** If they don't ask "how?", rewrite the hook.
