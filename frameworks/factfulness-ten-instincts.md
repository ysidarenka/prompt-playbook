---
title: "Factfulness Check: The Ten Dramatic Instincts"
category: frameworks
tags: [critical-thinking, data-literacy, bias, fact-checking, factfulness]
source: Hans Rosling, Ola Rosling & Anna Rosling Rönnlund, "Factfulness" (2018)
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Factfulness Check: The Ten Dramatic Instincts

## When to use

Before you believe, repeat, or act on a claim: a headline, a vendor pitch, a status report, a dashboard, a strategy deck, or your own conclusion. It catches the ways a story can be true in its details and still give a wrong overall picture.

## Background

In *Factfulness*, Hans Rosling shows that well-educated people consistently get basic facts about the world wrong. On his multiple-choice tests they often score worse than random guessing. He argues this isn't mainly a lack of knowledge. It comes from ten **dramatic instincts** that bend how we read information, and each has a rule of thumb that corrects it.

| # | Instinct | The distortion | The correction (paraphrased) |
|---|---|---|---|
| 1 | Gap | Seeing two separate groups with a gap between them | Look for the majority, which is usually in the middle |
| 2 | Negativity | Thinking things are getting worse | Expect bad news to reach you more; a level can be bad while the direction is better |
| 3 | Straight line | Assuming a trend continues straight | Curves come in many shapes: S-curves, humps, slides, doubling |
| 4 | Fear | Treating frightening things as risky | Risk = danger × exposure |
| 5 | Size | Being impressed by a lonely number | Compare it, divide it into rates, focus on the few biggest items (80/20) |
| 6 | Generalization | Letting a category explain everything | Question the category: differences within groups, similarities across them |
| 7 | Destiny | Believing things can't change | Slow change is still change; update old knowledge |
| 8 | Single perspective | One idea or tool explains everything | Use a toolbox, not a hammer; have your ideas tested by people who disagree |
| 9 | Blame | Looking for a villain (or a hero) | Look for causes and systems |
| 10 | Urgency | Feeling it's now or never | Take a breath, insist on data, take small steps |

## Prompt

```text
Act as a fact-based analyst trained in Hans Rosling's Factfulness method.

Here is what I want checked: [CLAIM / ARTICLE / REPORT / PLAN / DASHBOARD, or "see attached"]

Review it against the ten dramatic instincts. For each one that applies, point to the exact part, explain how it could mislead, and say what fact or data would settle it. Skip instincts that don't apply.

1. Gap: Does it split things into two groups? Where is the majority, and do the ranges overlap?
2. Negativity: Is a bad level being confused with a worsening trend? Would equally good news have reached me?
3. Straight line: Does it assume a trend continues straight? What shape is the curve more likely to have?
4. Fear: Is something frightening being treated as risky? Estimate risk as danger × exposure.
5. Size: Is a number shown without comparison? Compare it, convert it to a rate, and find the few items that make up most of the total.
6. Generalization: Is a category doing the work of an explanation? What does "most" or "the majority" mean as a percentage?
7. Destiny: Does it treat something as fixed when it is changing slowly? What was it like 10 to 20 years ago?
8. Single perspective: Is one cause, tool, or ideology explaining everything? What would other disciplines say?
9. Blame: Is a person or group blamed for what a system produced, or a single hero credited?
10. Urgency: Does it push "now or never"? What does waiting for better data cost, and what small first step is possible?

Then give me:
- a factful restatement of the claim in two or three sentences
- the three most important things to verify, and where to find the data
- your confidence in the original claim (low / medium / high) and why

Use current data. Cite sources for facts you state, and say clearly when you are unsure or the data may be out of date.
```

## Why it works

- **It names specific failure modes.** "Is this biased?" gets a vague answer. Ten concrete checks get concrete findings.
- **"Skip instincts that don't apply"** keeps the review focused instead of padded.
- **It asks what data would settle each point**, which turns doubt into a short to-do list.
- **The factful restatement** gives you a corrected version you can reuse, not just criticism.
- **Asking for sources and uncertainty** matters because the book's whole point is that facts go out of date.

## Variations

- **Quick version:** "Which two of the ten Factfulness instincts is this claim most likely triggering, and what would a fact-based version say?"
- **Check yourself:** "Here is my conclusion: [CONCLUSION]. Which Factfulness instincts might have shaped how I got here?"
- **After the Challenger:** run this once [The Challenger](../personas/challenger.md) has finished, to check the facts the plan rests on.

## Related

Focused prompts built on single instincts:

- [Now-or-Never Check](../decision-making/now-or-never-check.md) (urgency, fear)
- [Put the Number in Proportion](../problem-solving/number-in-proportion.md) (size, gap, straight line)
- [Causes, Not Villains](../architecture-and-engineering/blameless-root-cause.md) (blame)
- [Toolbox, Not a Hammer](../personas/toolbox-panel.md) (single perspective)
- [Outdated-Assumptions Quiz](../learning/outdated-assumptions-quiz.md) (destiny, negativity)
- [Take the Drama Out of a Draft](../writing/take-the-drama-out.md) (all ten)
- [Book notes](../sources/factfulness-rosling/README.md)
