---
title: Put the Number in Proportion
category: problem-solving
tags: [data-literacy, metrics, statistics, factfulness]
source: Hans Rosling et al., "Factfulness" (2018), size, gap and straight-line instincts
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Put the Number in Proportion

## When to use

Someone hands you a number, chart, or trend ("costs up 40%", "1,200 incidents", "adoption will hit 90% by next year") and you need to know what it really says before you act on it.

## Prompt

```text
Here is a number / chart / trend I've been given: [NUMBER, CHART DESCRIPTION, OR DATA]
Where it comes from and what decision it feeds: [CONTEXT]

Check it the Factfulness way:
1. Compare: what should this be compared with (last period, peers, the total, the target)?
2. Divide: convert amounts into rates (per user, per transaction, per employee, per dollar). Does the story change?
3. 80/20: if it's a list or breakdown, which few items make up most of the total?
4. Averages and spread: is an average hiding a wide spread? Would the groups being compared overlap?
5. Extremes: is it comparing the best with the worst instead of the typical case?
6. Trend shape: if it shows change over time, is a straight line realistic, or is an S-curve, hump, doubling, or slide more likely? What would change the shape?

Then tell me what the number supports, what it doesn't, and which extra data I should ask for.
```

## Why it works

- **A lonely number always looks big or small.** A comparison and a rate make it meaningful.
- **80/20** points your attention at the few items that matter most.
- **Averages and extremes** are the two classic ways an "obvious gap" between groups is manufactured.
- **Trend shape** catches straight-line forecasts, one of the most common errors in planning and capacity models.

## Variations

- **Dashboard review:** "Here is our dashboard: [METRICS]. For each metric, say whether it is a lonely number, an amount that should be a rate, or an average that needs a distribution."
- **Capacity or cost forecast:** "Here is our forecast: [FORECAST]. What curve shape does it assume, and what would cause it to bend?"

## Related

- [Factfulness Check](../frameworks/factfulness-ten-instincts.md)
- [Pólya's Four-Step Problem Solver](../frameworks/polya-four-steps.md)
