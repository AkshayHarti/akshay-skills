# Modes

Three starting points, three playbooks. Pick the mode from the input, not from
what the author wants the post to feel like.

---

## A. Shipped work (`shipped`)

**Input:** a release, migration, incident, platform, experiment — with numbers.

**Opening move:** the delta, not the journey. Nobody owes you their attention for
the backstory.

**Structure (6 beats, ~120–220 words):**

1. The result, as a number. One line.
2. What it replaced. One line, concrete.
3. How it works — only the part that is non-obvious. 2–4 lines.
4. The tradeoff you accepted. This is the credibility beat.
5. The one thing that surprised you. This is the quotable beat.
6. Who this applies to, and who should not copy it.

**Do not** narrate the timeline ("first we tried…, then we…"). One detour max,
and only if it carries a number.

**Incident variant:** same structure; the metric is blast radius, detection time,
or MTTR, and beat 3 is the causal chain, not the fix.

---

## B. Thesis (`thesis`)

**Input:** a position you want to argue — "most AI evals are theatre", "platform
teams should ship fewer abstractions".

**Opening move:** the claim plus the tension. Never a rhetorical question.

**Structure (~100–180 words):**

1. The claim, stated plainly enough to be wrong.
2. The common belief it contradicts — fairly, in one line.
3. Your evidence. Your own numbers, or your operating experience with a specific
   system. Not a link, not a vibe.
4. The mechanism — *why* the common belief fails.
5. Where the common belief is still right. Skipping this is what makes a thesis
   post read as engagement bait.
6. The decision rule a reader can apply.

**Test:** the post must survive a reply that says "that wasn't our experience".
If it only works if everyone agrees, it is a slogan.

---

## C. External reaction (`reaction`)

**Input:** an article, release, benchmark, or announcement.

**Non-negotiable:** you must add operating experience the source does not have.
Summarising someone else's post is not a post.

**Structure (~100–160 words):**

1. Their claim, in one line, correctly stated.
2. Your verdict, in one line.
3. What they get right — real, not a courtesy.
4. What they miss, from a system you actually ran.
5. The metric that would settle it.
6. What you would do Monday.

**Metric exception:** this is the only mode allowed to ship with no measured
number, and only if beat 5 names the measurement. If you have your own number,
use it and switch to `thesis` structure.

---

## Choosing

| Input | Mode |
|---|---|
| "we just shipped / migrated / cut X by Y" | shipped |
| "I think most teams get X wrong" | thesis |
| a URL, a release note, a benchmark | reaction |
| a postmortem with numbers | shipped (incident variant) |
| two of the above | shipped — the work is the evidence, the thesis is the close |

If the input supports none of them, say so. That is a useful answer.
