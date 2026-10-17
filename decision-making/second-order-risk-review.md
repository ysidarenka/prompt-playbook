---
title: Second-Order Risk Review
category: decision-making
tags: [risk, decisions, second-order-effects, options]
source: Geoff Woods, "The AI-Driven Leader" (risk prompts)
source_url: https://www.goodreads.com/search?q=The+AI-Driven+Leader+Geoff+Woods
tested_with: [Claude]
date_added: 2026-10-17
---

# Second-Order Risk Review

## When to use

You are choosing between options and have a rough idea of the direct pros and cons, but you want the consequences that show up later or somewhere else.

## Prompt

```text
I need to make a decision.

Situation: [DESCRIBE THE SITUATION]
Options I'm considering:
1. [OPTION A]
2. [OPTION B]
[...]

Act as an expert in risk analysis. Ask me up to [3] questions, one at a time, to understand the context. Then, for each option:
- the direct upside and downside
- second-order consequences: what happens next, and who else is affected
- the assumption that, if wrong, would hurt most

Finish with which option you would choose, why, and what would change your mind. Also name any option I haven't listed that deserves a look.
```

## Why it works

- First-order effects are usually obvious. The value is in "and then what?"
- Asking for the **assumption that would hurt most** points you to what to validate before deciding.
- **"What would change your mind"** makes the recommendation testable instead of final.
- Asking for **unlisted options** guards against a false choice.

## Related

- [The Challenger](../personas/challenger.md)
- [CRIT](../frameworks/crit-context-role-interview-task.md)
