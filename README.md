# akshay-skills

Personal agent skills pack. Currently: the LinkedIn post pipeline.

A five-stage pipeline for engineering LinkedIn posts, as agent skills.

Built for one constraint: a post is not a post unless it carries a **number, an
outcome, a rejected alternative, and a named use case** — and says who should
*not* copy it.

## Install

```bash
./install.sh            # symlinks into ~/.agents/skills
./install.sh --check    # verify
```

Skills are symlinks to this repo, so edits here are live — no reinstall.

## Use

```
linkedin-post        # full pipeline, start here
```

It routes on the input:

| You have | Mode |
|---|---|
| "we cut p95 deploy time from 38 to 4 minutes" | `shipped` |
| "most agent frameworks are overhead below three agents" | `thesis` |
| a benchmark, release note, or article link | `reaction` |

Then it runs intake → angle → draft → critique → package, and returns a
paste-ready post, a first comment, three hashtags, and an image brief.

## Run one stage

| Ask | Skill |
|---|---|
| "do I even have a post here?" | `linkedin-post-intake` |
| "what's the actual angle?" | `linkedin-post-angle` |
| "give me two drafts" | `linkedin-post-draft` |
| "critique this" / "does this sound like AI" | `linkedin-post-critique` |
| "just the image brief" | `linkedin-post-package` |

`linkedin-post-critique` works on any text — including other people's posts — with
no fact sheet required.

## Layout

```
skills/            one directory per stage, each with SKILL.md
reference/         shared docs, symlinked into every skill that needs them
  pillars.md       the four pillars, their tests, their failure modes
  fact-sheet.md    the artifact passed between stages
  modes.md         three playbooks
  hooks.md         the ~180-char fold and hook patterns
  voice.md         register + before/after calibration pairs
  anti-slop.md     banlist, AI tells, formatting, three tests
  image-brief.md   chart selection and the brief spec
```

## The rules it enforces

1. No number, no claim. Baseline, after, window, method — or it gets cut.
2. One post, one claim. Two claims is two posts.
3. The tradeoff is the credibility. A post with no cost reads as an ad.
4. Write like a design review, not a keynote.
5. Never skip critique.

## Tuning

`reference/voice.md` is the calibration file. Replace its sample sentences with
your own published lines as you go — that file is the difference between "an
engineering lead wrote this" and "an engineering lead could have written this".
