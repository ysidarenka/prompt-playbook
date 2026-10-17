---
title: Prompt Builder (0 to 1)
category: meta
tags: [meta-prompting, learning-to-prompt, interview]
source: Geoff Woods, "The AI-Driven Leader" (0-to-1 prompt sequence)
source_url: https://www.goodreads.com/search?q=The+AI-Driven+Leader+Geoff+Woods
tested_with: [Claude]
date_added: 2026-10-17
---

# Prompt Builder (0 to 1)

## When to use

You know roughly what you need help with but not how to prompt for it, and you want to learn prompting while you do it.

## Prompt sequence

Send these as three separate messages.

```text
1. Interview me, one question at a time, to find a specific task in [AREA, e.g. "planning my team's next quarter"] that I need to get done this week.
```

```text
2. Write a high-quality prompt for that task. Then explain why you structured it that way, so I learn how to write good prompts myself.
```

```text
3. Now run that prompt and help me finish the task.
```

## Why it works

- Step 1 finds a real, current task, so the result is immediately useful.
- Step 2 makes the AI's prompt-writing visible. The explanation is the lesson.
- Step 3 tests the generated prompt right away. If the output is weak, you can see which part of the prompt to fix.
- Save good prompts from step 2 into this repo.

## Related

- [The Interviewer](../personas/interviewer.md)
- [CRIT](../frameworks/crit-context-role-interview-task.md)
