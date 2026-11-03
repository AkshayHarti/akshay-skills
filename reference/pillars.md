# The four pillars

Every post carries all four. Missing one means the post is not ready — either it
is a different post, or it is not a post yet.

---

## 1. Metric — the number that makes it a claim

**Shape:** `baseline → after → delta → window → method`

```
p95 CI: 22 min → 6 min (−73%) · 1,400 builds · Feb–Apr · push to green
```

| Rule | Why |
|---|---|
| Always a denominator | "3x faster" has nothing to divide by |
| Always a window | A single deploy is an anecdote, not a trend |
| Always a method | "vendor said so" is marketing, not measurement |
| Say the `n` | `n=3 repos, all ours` is honest and still useful |
| Label proxies | `modeled: 40 eng-hrs/wk × $95/hr` — a model is fine; calling it a measurement is not |

**Test:** a skeptical staff engineer could reproduce the comparison from what you
wrote — same baseline, same window, same unit.

**Banned words:** significantly, dramatically, massively, 10x, orders of
magnitude, "a fraction of the cost", "way faster", "night and day".

**If the number does not exist:** the post becomes a *question* or an
*observation*, labelled as such in the first line. It is allowed to carry zero
metrics only in `external-reaction` mode, and even then it must name the metric
you would use to settle the argument. Never invent, round up, or borrow a number
from a different context.

---

## 2. Outcome — the change, not the artifact

Output = you shipped it. Outcome = behaviour, cost, or risk changed.

**Test:** ask "so what?" twice. The first answer is usually still output.

> "We built an internal AI gateway."
> → so what? "Teams stopped pasting keys into notebooks."
> → so what? "Key rotation went from quarterly firefighting to a 10-minute
> change, and the leaked-key incidents dropped to zero in 6 months."

**Pattern:** *The point wasn't `<artifact>`. It was that `<who>` could now
`<capability>` without `<old cost>`.*

**Banned:** opening the result with "we built", "we implemented", "we migrated",
"we adopted" and stopping there.

---

## 3. Alternative — what you did not do, and why

At least one real alternative, steelmanned, with the rejection reason and the
tradeoff you accepted.

**Test:** someone who chose the alternative recognises their own reasoning in
your summary. If they would say "that's not why I picked it", you strawmanned.

**Pattern:** *Options were A, B, C. A was cheapest and would have capped us at
`<limit>`. B worked until `<condition>`. We took C and accepted `<cost>`.*

**Honest beats flattering.** "We took the boring option because the interesting
one needed a team we don't have" is a better post than a fake bake-off.

**Banned:** "the alternative was to do nothing", "we could have failed", any
alternative you describe only so you can knock it down.

---

## 4. Practical use case — when this is you

Preconditions, and — more valuable — the disqualifying condition.

**Test:** a reader decides "is this me?" in ten seconds.

**Pattern:** *This works if `<precondition>`. Below `<n>` engineers or above
`<volume>`, it costs more than it saves.*

**Banned:** "this applies to any team", "regardless of scale", "everyone should",
"game changer for orgs of all sizes".

The disqualifier is the most quoted line in a good post. Say who should **not**
copy you.

---

## Scoring

| Score | Meaning |
|---|---|
| 10 | A peer could act on it Monday without asking you a question |
| 7 | Right idea, missing one of the five parts (baseline/window/method/n/precondition) |
| 3 | Present in name only — uses the vocabulary, carries no information |
| 0 | Absent |

A post needs 7+ on all four to ship. Below that, fix the pillar — do not add
adjectives.
