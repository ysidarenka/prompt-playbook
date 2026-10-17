---
title: Take the Drama Out of a Draft
category: writing
tags: [editing, communication, tone, accuracy, factfulness]
source: Hans Rosling et al., "Factfulness" (2018), the ten dramatic instincts
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Take the Drama Out of a Draft

## When to use

Before you send a status update, risk report, business case, or announcement. Dramatic framing gets attention, but it can mislead readers, cause panic, or hurt your credibility when the facts don't match the tone.

## Prompt

```text
Here is a draft I'm about to send: [DRAFT]
Audience: [WHO]. Purpose: [WHAT I WANT THEM TO KNOW OR DO]

Review it for dramatic framing that could mislead or alarm readers, using the ten Factfulness instincts. Flag:
- us-vs-them or two-group framing
- bad levels described as if they were getting worse, or improvements left out
- straight-line extrapolations
- scary wording where the actual risk is small
- numbers without a comparison or a rate
- sweeping generalizations ("everyone", "always", "most" without a percentage)
- "this will never change" statements
- single-cause explanations, blame, or hero credit
- false urgency

For each issue, quote the original line and suggest a rewrite. Then give me the full revised draft, keeping my facts, intent, and voice. Don't make it bland: keep what is genuinely important or urgent.
```

## Why it works

- **A checklist of specific patterns** finds problems a general "make it more balanced" request misses.
- **Line-by-line rewrites** let you accept or reject each change.
- **"Don't make it bland"** prevents over-correction. The aim is accurate emphasis, not none.

## Related

- [Factfulness Check](../frameworks/factfulness-ten-instincts.md)
- [Stakeholder Simulation](../personas/stakeholder-simulation.md), to test how the revised draft lands
