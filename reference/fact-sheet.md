# The fact sheet

The one artifact that moves between stages. Every later stage reads it and
nothing else. If it is thin, every stage after it produces slop.

```
MODE:        shipped | thesis | reaction | unknown
CLAIM:       one sentence, falsifiable

METRIC:
  baseline:   <value + unit>
  after:      <value + unit>
  delta:      <value + unit + %>
  window:     <dates or duration>
  method:     <how it was measured>
  n:          <sample size, and whose>
  confidence: measured | modeled | anecdotal

OUTCOME:
  who:        <role, team size, scale>
  capability: <what they can now do>
  removed:    <cost, risk, or toil that went away>

ALTERNATIVE:
  option:     <the real one you rejected>
  why:        <the condition or limit that ruled it out>
  tradeoff:   <what you gave up by choosing yours>

USE CASE:
  precondition: <what must be true for this to work>
  disqualifier: <who should not copy this>

READER:      <who this is for, in one line>
SOURCE:      <link, repo, incident, internal doc>
```

## Filling rules

- **`unknown` is a valid value.** It is not a gap to fill with a plausible guess.
  An `unknown` in METRIC means the post is not a shipped post yet.
- **`confidence` is mandatory when a number exists.** `modeled` numbers must be
  labelled in the post as modeled.
- **One CLAIM.** If the fact sheet needs two, it is two posts. Split it.
- **ALTERNATIVE must be steelmanned.** If you cannot describe why a smart person
  picked it, it is a strawman and does not count.
- **DISQUALIFIER is not optional in spirit.** "None" usually means you have not
  thought about who this harms.

## Gate

The pipeline does not advance to drafting unless:

- `MODE` is known
- `METRIC.confidence` is `measured`, or `modeled` and labelled, or the mode is
  `reaction` with a named settling metric
- `OUTCOME.capability` is a behaviour, not a shipped artifact
- `ALTERNATIVE.why` names a condition
- `USE_CASE.disqualifier` is specific enough to lose you a reader

Missing slots are filled by asking the author **once**, in one message, listing
only the empty fields. If the author cannot supply a number, route to the
question/observation form rather than inventing one.
