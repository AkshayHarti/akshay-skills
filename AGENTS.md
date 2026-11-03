# AGENTS.md — akshay-skills

A skills pack, not an application. No build, no tests, no deps.

## Layout

```
skills/<stage>/SKILL.md    one directory per pipeline stage
reference/                 shared docs, symlinked into every skill as reference/
install.sh                 symlinks every skill into ~/.agents/skills
```

Pipeline order: `linkedin-post` (router) → `-intake` → `-angle` → `-draft` →
`-critique` → `-package`.

## Rules

- **One skill = one trigger.** The router owns "write a LinkedIn post". Stage
  skills own their explicit ask ("critique this", "what's the angle"). If two
  descriptions would fire on the same sentence, one is wrong.
- **SKILL.md stays short.** Detail lives in `reference/`. Link, don't inline.
- **The four pillars are not negotiable.** Any change that lets a post ship with
  an unsourced number or a missing disqualifier is a regression.
- **Never add a fabricated example metric** to a reference file. Examples are
  illustrative and should look it; a number in a skill file is not a citation.
- After adding or renaming a skill, re-run `./install.sh` — links are by directory
  name, not frontmatter name.
- Edit here, never in `~/.agents/skills` (those are symlinks into this repo).

## Verify

```bash
./install.sh --check
for f in skills/*/SKILL.md; do head -3 "$f"; done   # frontmatter name == dir
grep -rhoE '`linkedin-post[a-z-]*`' skills/ | tr -d '`' | sort -u  # must all exist
```

## Scope

No image generation (brief only), no scheduling, no analytics, no cross-posting.
