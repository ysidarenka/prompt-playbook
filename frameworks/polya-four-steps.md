---
title: Pólya's Four-Step Problem Solver
category: frameworks
tags: [problem-solving, tutor, reasoning, reflection]
source: George Pólya, "How to Solve It" (1945)
source_url: https://en.wikipedia.org/wiki/How_to_Solve_It
tested_with: [Claude]
date_added: 2026-10-17
---

# Pólya's Four-Step Problem Solver

## When to use

You face an unfamiliar or messy problem and want to understand the reasoning instead of being handed an answer. It works for math, engineering, business, and personal problems.

## Background

In *How to Solve It* (1945), the mathematician George Pólya argued that solving hard problems depends less on raw intelligence than on knowing how to approach them. He described four steps:

1. **Understand the problem.** What exactly are you solving? What do you know, what are you assuming, and what is still missing?
2. **Devise a plan.** Look for similar problems, try different approaches, or break the challenge into smaller pieces.
3. **Carry out the plan.** Work through each step and check that the reasoning holds.
4. **Look back.** Did it work? Could it be simpler? What can you reuse next time?

People most often skip step 4. They get an answer and move on without checking whether it makes sense or why it worked.

## Prompt

```text
Act as a problem-solving tutor using George Pólya's four-step method.

My problem: [DESCRIBE YOUR PROBLEM]

1. Help me define the problem precisely. Separate known facts, assumptions, constraints and unknowns.
2. Suggest three possible approaches, using analogous problems or simpler subproblems.
3. Choose the most promising approach and walk me through its execution, checking each step.
4. Evaluate the result, identify weaknesses and extract reusable lessons.

Don't jump straight to the answer. Help me understand the reasoning.
```

## Why it works

- **Step 1 separates facts from assumptions.** Many bad AI answers come from an assumption nobody stated. Making the AI list them exposes them.
- **Step 2 asks for three approaches.** This keeps the AI from committing to its first idea and gives you something to compare.
- **Step 3 checks each step**, which catches reasoning errors before they compound.
- **Step 4 forces reflection**, the part people usually skip. It turns one solved problem into a lesson you can reuse.
- **"Don't jump straight to the answer"** keeps you thinking, so the AI improves your reasoning rather than replacing it.

## Variations

- **Interactive:** add "Ask me one question at a time during step 1 before moving on."
- **Self-check only:** when you already have a solution, run just step 4: "Here is my solution: [SOLUTION]. Look back on it using Pólya's fourth step. Is it correct, could it be simpler, and what is the reusable lesson?"
- **Architecture:** use it on a design problem, with step 2 asking for three candidate architectures and their trade-offs.

## Related

- [CRIT: Context, Role, Interview, Task](crit-context-role-interview-task.md)
- [The Challenger](../personas/challenger.md), useful after step 4
