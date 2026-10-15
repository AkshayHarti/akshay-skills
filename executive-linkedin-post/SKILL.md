---
name: executive-linkedin-post
description: Generate concise executive LinkedIn posts stripped of AI fluff and corporate waffle. Use whenever the user mentions LinkedIn post, executive post, LinkedIn announcement, thought leadership, company update for LinkedIn, or needs to turn data, news, or an announcement into a LinkedIn post, even if they don't explicitly name this skill.
---

# Executive LinkedIn Post

Generate LinkedIn posts optimized for an executive audience who values time and direct impact. Completely stripped of AI fluff, filler text, and corporate waffle.

## Workflow

ALWAYS follow this sequence:

### 1. Gather inputs first

If the user has not already provided both items below, use the AskUserQuestion tool to prompt for them before drafting:

1. The core data, announcement, or message to summarize.
2. The target audience or desired call to action.

Do not draft until you have both. If the user provided one, only ask for the missing piece.

### 2. Draft the post

Apply all constraints in the Constraints section below.

### 3. Verify before returning

- Count characters (including spaces, hashtags, emojis). Total MUST be under 800.
- Confirm opening hook is 10 words or fewer.
- Confirm no banned openers or buzzwords slipped in.
- If over limit, cut adjectives and filler first, then shorten body, never cut the CTA.

## Constraints

### 1. NO FLUFF / WAFFLE

Completely ban generic introductory hooks. Never use these or variants:

- "In today's fast-paced digital landscape..."
- "As leaders, we must..."
- "Crucial takeaway:"
- "In the ever-evolving world of..."
- "Excited to announce..."
- "Thrilled to share..."
- "Unlocking...", "Delving into...", "Game-changer", "Supercharge"

Dive straight into the core message. No throat-clearing sentence.

### 2. STRUCTURE

Follow this exact structure:

- **Opening:** A single, high-impact hook sentence, maximum 10 words. State the result, number, or decision.
- **Body:** Choose ONE of:
  - Option A: Maximum 3 short, punchy paragraphs (1-2 sentences each), OR
  - Option B: A single brief paragraph followed by 3 dense, high-value bullet points.
- **Closing:** A direct, one-sentence call-to-action or final thought. No question stacking.

Use plain hyphens `-` for bullets. No extra sections.

### 3. HUMAN-FRIENDLY TONE

Write in a grounded, professional, yet conversational voice.

- Prefer short Anglo-Saxon words over Latinate abstractions.
- Avoid overusing complex adjectives, exclamation marks, and em-dashes. Use commas or periods instead of em-dashes.
- Avoid corporate buzzwords: leverage, synergy, holistic, robust, seamless, ecosystem, thought leadership, deep dive, circle back.
- One idea per sentence. Active voice.

### 4. VISUAL RESTRAINT

- Emojis: 0 by default. Maximum 1-2 functional anchors only if they aid scanning (e.g. leading bullets). Never decorative rows.
- Hashtags: Maximum 2 relevant hashtags at the very bottom, on their own line. No inline hashtags.
- No ASCII art, no all-caps lines.

### 5. EXEC-FRIENDLY BREVITY

Keep total post length under 800 characters, including spaces, line breaks, emojis, and hashtags. Aim for 500-650 characters.

## Output format

Return only the post copy in a code block, ready to paste, followed by the character count on a separate line outside the block.

Example:

```
We cut onboarding time from 14 days to 3.

Enterprise rollout forced us to rebuild the setup flow. Three changes did most of the work.

- Removed 11 manual steps from provisioning
- Moved defaults to team templates
- Added progress tracking for managers

DM me if you want the checklist.

#SaaS #Onboarding
```

`642 characters`

## Anti-patterns

Bad opening (10+ words + fluff): "In today's fast-paced digital landscape, as leaders we must rethink onboarding to unlock synergy and drive robust outcomes!"

Good opening (7 words, direct): "We cut onboarding time from 14 days to 3."
