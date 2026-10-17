---
title: Outdated-Assumptions Quiz
category: learning
tags: [quiz, mental-models, worldview, self-assessment, factfulness]
source: Hans Rosling et al., "Factfulness" (2018), the Gapminder test, destiny and negativity instincts
source_url: https://www.gapminder.org/factfulness-book/
tested_with: [Claude]
date_added: 2026-10-17
---

# Outdated-Assumptions Quiz

## When to use

You want to find where your mental picture of a topic is out of date: global trends, your industry, a technology, a market, or your own organization. *Factfulness* opens with a multiple-choice test on which most experts do worse than random guessing, because what they learned years ago has quietly gone out of date.

## Prompt

```text
Quiz me to find out where my picture of [TOPIC, e.g. "global health", "the US mortgage market", "cloud adoption", "AI in software delivery"] is out of date.

Rules:
- Ask 10 multiple-choice questions, one at a time, each with three options (A, B, C).
- Base every question on current, reliable data. Search if you can, and cite the source after I answer.
- Make every option plausible, and include the wrong answer people pick most often.
- After each answer, tell me whether I was right and give the fact. If I was wrong, name the Factfulness instinct most likely behind my mistake: gap, negativity, straight line, fear, size, generalization, destiny, single perspective, blame, or urgency.

At the end, show my score against random guessing (33%), the pattern in my mistakes, and three facts I should update in my head.
```

## Why it works

- **Three options and a 33% baseline** reproduce the book's test: if you score below random, the problem is a systematic bias, not missing knowledge.
- **One question at a time** stops you from reading ahead and second-guessing.
- **Naming the instinct behind each mistake** turns a trivia game into a lesson about how you think.
- **Citing sources** keeps the quiz honest, and lets you check facts that may have changed since the AI's training data.

## Variations

- **Team workshop:** "Write 10 questions about [OUR DOMAIN] for a team quiz, with answers, sources, and the instinct each question tests."
- **Your organization:** Rosling suggests every organization has its own ignored facts. "Ask me 5 questions about [OUR ORG'S METRICS] using these data points: [DATA]."

## Related

- [Factfulness Check](../frameworks/factfulness-ten-instincts.md)
- [Pólya's Four-Step Problem Solver](../frameworks/polya-four-steps.md)
