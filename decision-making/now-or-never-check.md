---
title: Now-or-Never Check
category: decision-making
tags: [urgency, fear, risk, decisions, factfulness]
source: Hans Rosling et al., "Factfulness" (2018), urgency and fear instincts
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Now-or-Never Check

## When to use

You are being pushed to decide fast, often by a deadline, a scary scenario, or someone insisting there is no time. Rosling's observation: when a decision feels urgent, it rarely is, and urgency switches off careful analysis.

## Prompt

```text
I'm being pushed to decide quickly on: [DECISION]
Why it feels urgent: [DEADLINE, PRESSURE, WHO IS PUSHING AND WHY]
What I know so far: [FACTS AND DATA]

Act as a calm, fact-based adviser using the Factfulness approach to urgency and fear.

1. Separate the real deadline from the felt one. What actually happens if I wait a week? A month?
2. Is this really either/or? List options in between, including a small, reversible first step.
3. For the thing I'm afraid of, estimate risk as danger × exposure. Compare that with the risk of acting drastically.
4. What data do I need to decide well? Is the data I have both relevant and accurate?
5. If anyone is predicting outcomes, give the range of scenarios (not only best and worst case) and how reliable such predictions have been before.
6. What are the side effects of the drastic option, and has it been tested anywhere?

Finish with one recommendation: decide now, take a small step now and decide later, or wait for specific data. Explain why.
```

## Why it works

- **Real vs. felt deadline** is usually the biggest insight. Many "deadlines" are someone's preference.
- **Options in between** break the false either/or that urgency creates.
- **Danger × exposure** replaces how scary something feels with how likely it is to hurt you.
- **Relevant *and* accurate data:** Rosling warns that data can be one without the other.
- **A range of scenarios** guards against forecasts that claim more certainty than they have.
- **The three-way ending** makes "a small step now" a legitimate answer, not a dodge.

## Variations

- **Security or incident pressure:** "A vulnerability / outage report says [X]. Estimate danger × exposure for our environment: [CONTEXT]. What should we do in the next hour, the next day, and the next sprint?"

## Related

- [Factfulness Check](../frameworks/factfulness-ten-instincts.md)
- [Second-Order Risk Review](second-order-risk-review.md)
