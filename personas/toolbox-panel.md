---
title: "Toolbox, Not a Hammer: Multi-Perspective Panel"
category: personas
tags: [perspectives, bias, expert-panel, problem-framing, factfulness]
source: Hans Rosling et al., "Factfulness" (2018), single perspective instinct
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Toolbox, Not a Hammer: Multi-Perspective Panel

## When to use

You have a favorite solution, or a problem you have looked at from only one discipline. Rosling warns that people who are good with one tool tend to see every problem as a fit for it, and that a single perspective limits what you can imagine.

## Prompt

```text
My idea or solution: [IDEA]
The problem it is meant to solve: [PROBLEM]
My background, the "hammer" I tend to reach for: [E.G. "cloud architecture", "finance", "process improvement"]

Assemble a panel of 4 experts from different fields who would see this problem differently: [FIELDS, or "choose the most useful ones for me"].

For each expert, tell me:
- how they would frame the problem
- what they think my solution misses
- the tool or approach they would use instead

Then:
- point out where I may be claiming expertise outside my field
- say where numbers alone won't answer the question, and what human or qualitative evidence is needed
- warn me if my solution is too simple for the problem
- propose a combined approach that borrows from at least two perspectives
```

## Why it works

- **Naming your own hammer** makes the bias explicit, so the AI can work against it.
- **Different fields reframe the problem**, not just criticize the solution. Reframing is where the new options come from.
- **"Numbers, but not only numbers"** is a Factfulness rule. The prompt asks for the evidence a metrics-driven view misses.
- **A combined approach** keeps the output constructive instead of a list of objections.

## Variations

- **Architecture decision:** use a panel of security, operations/SRE, finance (FinOps), and the end user's business owner to review an ADR.

## Related

- [The Challenger](challenger.md)
- [Stakeholder Simulation](stakeholder-simulation.md)
- [Factfulness Check](../frameworks/factfulness-ten-instincts.md)
