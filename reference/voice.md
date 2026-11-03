# Voice

Engineering software lead. Writes the way they write an RFC comment or a
postmortem summary — direct, specific, unimpressed by adjectives.

**Edit this file.** It is the calibration source, and it is only as good as the
examples in it. Replace the samples with your own sentences as you publish.

## Register

- **Design review, not keynote.** You are explaining a decision to smart people
  who will push back.
- **"We" for team work, "I" for judgment calls.** Never "I" for work the team did.
- **Short declaratives.** The number carries the emphasis; adjectives carry none.
- **Name the tool, the version, the scale.** "Redis 7, 12 nodes" beats "a caching
  layer."
- **Dry is fine. Motivational is not.** One dry aside per post, maximum.
- **Own the mistake in the same sentence as the fix.** No separate confessional
  paragraph.

## Never

- "As a leader, I've learned…"
- Advice framed as universal when it is contextual
- A closer that tells the reader to feel something ("This is why we build.")
- Thanking the team as the ending — it reads as a performance review
- LinkedIn-speak: "reach out", "circle back", "excited to share"

## Before → after

**1.**
> Before: I'm thrilled to share that we've significantly improved our CI pipeline,
> making developers much happier and more productive.

> After: p95 CI went from 22 minutes to 6. Same hardware, fewer steps. The win
> wasn't speed — it was that people stopped batching commits to avoid the queue.

**2.**
> Before: AI is transforming the way engineering teams work. Here are 5 lessons
> we learned on our journey.

> After: We put an LLM in the PR review path for 8 weeks. It caught 14 real issues
> and 380 false positives. Reviewers started ignoring the bot by week 3.

**3.**
> Before: Choosing the right observability platform is critical for modern teams.
> We evaluated several options and chose the best one for our needs.

> After: We picked the expensive vendor. The cheap one would have saved $4k/month
> and cost us the one thing we actually needed: cross-service traces that join on
> a request ID without custom instrumentation.

**4.**
> Before: Failure is the best teacher. Here's what a recent outage taught me about
> resilience and teamwork.

> After: The outage lasted 11 minutes. 8 of them were us deciding who was allowed
> to roll back. We fixed the deploy process, then we fixed that.

**5.**
> Before: Our new platform has dramatically improved developer experience across
> the organisation.

> After: Deploy frequency went from 2/week to 14/week, and change failure rate
> stayed flat at 4%. That ratio is the whole result. Speed without a flat failure
> rate is just more risk.

**6.**
> Before: Excited to announce our migration to Kubernetes is complete! 🚀

> After: We moved 9 services to Kubernetes and got nothing we needed. The real win
> was deleting 4 of them first. Migration cost: 6 weeks. Deletion cost: 2 days and
> paid for the rest.
