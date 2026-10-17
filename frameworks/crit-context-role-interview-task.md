---
title: "CRIT: Context, Role, Interview, Task"
category: frameworks
tags: [prompt-structure, thought-partner, interview, default-template]
source: Geoff Woods, "The AI-Driven Leader"
source_url: https://www.goodreads.com/search?q=The+AI-Driven+Leader+Geoff+Woods
tested_with: [Claude]
date_added: 2026-10-17
---

# CRIT: Context, Role, Interview, Task

## When to use

As the default structure for any prompt where the answer matters. It is especially useful when the AI will give a generic answer unless it understands your specific situation.

## Background

Geoff Woods's *The AI-Driven Leader* argues for treating AI as a **thought partner** rather than a search box. Its core framework, CRIT™, has four parts:

- **Context.** Explain the real situation: goals, constraints, history, what you have already tried, and why it matters.
- **Role.** Give the AI a specific expert persona, not just "an expert."
- **Interview.** Have the AI ask you questions, one at a time, to pull out context you didn't think to give.
- **Task.** Ask for a precise outcome, often a short list of prioritized, high-impact, non-obvious options.

The template below is written in this repo's own words. See the book for the author's original examples.

## Prompt

```text
CONTEXT
[The situation: goal, constraints, relevant history, what has already been tried, and why it matters.]

ROLE
Act as [A SPECIFIC EXPERT, e.g. "a restructuring banker who has renegotiated debt with conservative public companies"].

INTERVIEW
Before answering, ask me up to [3] questions, one at a time, to fill gaps in the context. Wait for each answer before asking the next.

TASK
Then give me the top [3] high-impact, non-obvious [strategies / options / recommendations], ranked by priority, with the reasoning and the main risk for each.
```

## Why it works

- **Context** is the biggest lever. Most weak answers come from the AI not knowing your situation.
- **A specific role** pulls in the vocabulary and judgment of a domain. "A CFO who has led two turnarounds" gets a sharper answer than "a finance expert."
- **The interview** reverses the usual flow. The AI finds the missing context so you don't have to guess what matters. Asking one question at a time keeps it a conversation instead of a questionnaire.
- **"Non-obvious"** pushes past the answers you would have thought of yourself.
- **A cap (three questions, three options)** keeps the exchange short and the output focused.

## Follow-ups

After the first answer:

1. **Refine:** "Here's what I like: [...]. Here's what doesn't fit: [...]. Revise with that in mind."
2. **Stress-test:** switch to [The Challenger](../personas/challenger.md).
3. **Rehearse:** run a [Stakeholder Simulation](../personas/stakeholder-simulation.md) with whoever must approve it.

## Related

- [The Interviewer](../personas/interviewer.md)
- [Pólya's Four-Step Problem Solver](polya-four-steps.md)
- [Book notes](../sources/ai-driven-leader-woods/README.md)
