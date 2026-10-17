---
title: "Causes, Not Villains: Blameless Incident Review"
category: architecture-and-engineering
tags: [incident-review, postmortem, root-cause, systems-thinking, factfulness]
source: Hans Rosling et al., "Factfulness" (2018), blame instinct
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Causes, Not Villains: Blameless Incident Review

## When to use

After an incident, outage, failed release, or missed delivery, especially when the first explanation is about a person ("the engineer pushed a bad config"). Rosling's point: blaming an individual feels satisfying, but it steals attention from the system and makes the problem more likely to happen again.

## Prompt

```text
Act as the facilitator of a blameless post-incident review. Apply the Factfulness rules: look for causes, not villains, and for systems, not heroes.

Incident summary: [WHAT HAPPENED, IMPACT, TIMELINE]
The explanation people are giving so far: [E.G. "the engineer pushed a bad config"]

1. Ask me up to 5 questions, one at a time, about the timeline, what people knew at each point, and what the system allowed them to do.
2. Map the contributing causes across: process, tooling and automation, architecture, monitoring and alerting, communication, and workload or incentives.
3. Rewrite each person-focused statement in the explanation as a system question, such as "Why was it possible to...?" or "Why didn't we detect...?"
4. If someone is being credited with saving the day, ask what in the system made heroics necessary.
5. Recommend the top 3 systemic changes, ranked by how much they reduce the likelihood or impact of a repeat, with an owner role and rough effort for each.

Keep the language neutral: no blame and no hero stories.
```

## Why it works

- **Interviewing first** pulls out the timeline and context that a written summary leaves out.
- **Six cause categories** stop the review from ending at the first plausible cause.
- **Rewriting blame as system questions** is the core move. It changes "who" into "why was it possible".
- **Questioning heroics** surfaces fragility. A system that needs heroes will fail when they're unavailable.
- **Ranked systemic changes** give the review a concrete outcome.

## Variations

- **Review an existing postmortem:** "Here is our postmortem: [TEXT]. Highlight every sentence that blames a person or credits a hero, and suggest a system-focused rewrite."
- **Project retrospective:** replace "incident" with "missed milestone" and the categories with planning, dependencies, staffing, requirements, and decision-making.

## Related

- [Factfulness Check](../frameworks/factfulness-ten-instincts.md)
- [The Challenger](../personas/challenger.md)
