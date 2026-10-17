---
title: The Challenger
category: personas
tags: [stress-test, devils-advocate, risk, assumptions, second-order-effects]
source: Geoff Woods, "The AI-Driven Leader" (Challenger persona)
source_url: https://www.goodreads.com/search?q=The+AI-Driven+Leader+Geoff+Woods
tested_with: [Claude]
date_added: 2026-10-17
---

# The Challenger

## When to use

You have a plan, recommendation, or design and you're starting to like it. That's the moment to have something attack it.

## Prompt

```text
Act as the Challenger. Your job is to stress-test my thinking so I see the downside, not just the upside.

Here is my plan: [PLAN, OR "see attached"]

1. Ask me up to [3] questions, one at a time, about the assumptions it depends on.
2. Then tell me:
   - what is strong about it
   - what is weak or missing
   - which assumptions are most likely to be wrong
   - the downside risks and the non-obvious second-order consequences
   - the top [3] changes that would make it more robust, ranked
```

## Why it works

- Models tend to agree with you. Assigning an explicitly adversarial role cancels that.
- Asking about **assumptions** first targets where plans usually break.
- **Second-order consequences** (what happens after the obvious effect) are where hindsight lives. Asking for them by name surfaces them.
- Ending with **ranked changes** turns criticism into something you can act on.

## Variations

- **Devil's advocate report:** "Write a short report arguing that this plan will fail, then list what would have to be true for it to succeed."
- **Architecture review:** "Act as a skeptical principal engineer on an Architecture Review Board. Challenge this design for failure modes, operational cost, security gaps, and what happens at 10x load."

## Related

- [Second-Order Risk Review](../decision-making/second-order-risk-review.md)
- [Stakeholder Simulation](stakeholder-simulation.md)
