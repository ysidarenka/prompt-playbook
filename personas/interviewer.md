---
title: The Interviewer
category: personas
tags: [interview, context-gathering, thought-partner]
source: Geoff Woods, "The AI-Driven Leader" (Interviewer persona)
source_url: https://www.goodreads.com/search?q=The+AI-Driven+Leader+Geoff+Woods
tested_with: [Claude]
date_added: 2026-10-17
---

# The Interviewer

## When to use

The knowledge the AI needs is in your head, and you don't know which parts matter. Also useful when you are new to AI and don't know where it can help.

## Prompt

```text
Act as an interviewer. Your goal is to understand [WHAT THE AI SHOULD LEARN, e.g. "our current marketing plan"].

Ask me one question at a time and wait for my answer before asking the next. Ask no more than [5] questions. When you have enough, tell me so and then [THE TASK, e.g. "identify three growth levers that are not in the plan today"].
```

## Starter version

When you don't yet know what to use AI for:

```text
Interview me, one question at a time, to find one task in my work this week where you could help me think more clearly. Once we've found it, help me with it.
```

## Why it works

- The AI decides what context it needs, so you don't have to anticipate it.
- One question at a time produces better answers than a list of ten questions you skim.
- The question cap stops the interview from dragging on.

## Related

- [CRIT](../frameworks/crit-context-role-interview-task.md), where the interview is the "I"
- [Prompt Builder (0 to 1)](../meta/prompt-builder.md)
