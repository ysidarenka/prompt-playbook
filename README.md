# prompt-playbook

A curated collection of prompting patterns, frameworks, and real examples for getting **better thinking, not just better answers**, from AI. Each entry has a copy-paste prompt, notes on why it works, and credit to its source.

## How to use

1. Find a prompt in the [index](#index) or browse a category folder.
2. Copy the block under **Prompt** and fill in the `[PLACEHOLDERS]`.
3. Treat the first answer as a draft. Push back, refine, then use a stress-test prompt such as [The Challenger](personas/challenger.md).

## Repository layout

| Folder | What goes there |
|---|---|
| [`frameworks/`](frameworks/) | Reusable multi-step thinking methods (Pólya, CRIT, Factfulness) |
| [`problem-solving/`](problem-solving/) | Prompts for breaking down and working through hard problems |
| [`decision-making/`](decision-making/) | Comparing options, risk, second-order effects |
| [`strategy/`](strategy/) | Plans, reviews, operating rhythms, business cases |
| [`people-and-communication/`](people-and-communication/) | Coaching, feedback, meeting prep, hard conversations |
| [`personas/`](personas/) | Role prompts: Interviewer, Challenger, stakeholder simulation |
| [`learning/`](learning/) | Tutors, explain-back, study methods |
| [`writing/`](writing/) | Drafting, editing, tone |
| [`architecture-and-engineering/`](architecture-and-engineering/) | ADRs, design reviews, threat models, code review |
| [`meta/`](meta/) | Prompts that write or improve other prompts |
| [`sources/`](sources/) | Notes on books, posts, and courses that entries come from |
| [`_templates/`](_templates/) | Starting template for new entries |

## Index

| Prompt | Category | Use it when | Source |
|---|---|---|---|
| [Pólya's Four-Step Problem Solver](frameworks/polya-four-steps.md) | frameworks | You face an unfamiliar problem and want to understand the reasoning | George Pólya, *How to Solve It* (1945) |
| [CRIT: Context, Role, Interview, Task](frameworks/crit-context-role-interview-task.md) | frameworks | You need a strong default structure for any serious prompt | Geoff Woods, *The AI-Driven Leader* |
| [The Interviewer](personas/interviewer.md) | personas | The AI needs context that is still in your head | Geoff Woods, *The AI-Driven Leader* |
| [The Challenger](personas/challenger.md) | personas | You have a plan and want its weak spots exposed | Geoff Woods, *The AI-Driven Leader* |
| [Stakeholder Simulation](personas/stakeholder-simulation.md) | personas | You want to rehearse how a customer, board, or approver will react | Geoff Woods, *The AI-Driven Leader* |
| [Second-Order Risk Review](decision-making/second-order-risk-review.md) | decision-making | You have candidate solutions and want hidden consequences surfaced | Geoff Woods, *The AI-Driven Leader* |
| [Prompt Builder (0 to 1)](meta/prompt-builder.md) | meta | You know the task but not how to prompt for it | Geoff Woods, *The AI-Driven Leader* |
| [Factfulness Check: The Ten Dramatic Instincts](frameworks/factfulness-ten-instincts.md) | frameworks | You want to check a claim, report, or plan for distortions before acting on it | Hans Rosling, *Factfulness* |
| [Now-or-Never Check](decision-making/now-or-never-check.md) | decision-making | You're being pushed to decide fast | Hans Rosling, *Factfulness* |
| [Put the Number in Proportion](problem-solving/number-in-proportion.md) | problem-solving | You've been handed a number, chart, or forecast | Hans Rosling, *Factfulness* |
| [Causes, Not Villains: Blameless Incident Review](architecture-and-engineering/blameless-root-cause.md) | architecture-and-engineering | An incident review is drifting toward blaming a person | Hans Rosling, *Factfulness* |
| [Toolbox, Not a Hammer](personas/toolbox-panel.md) | personas | You're attached to one solution or one discipline's view | Hans Rosling, *Factfulness* |
| [Outdated-Assumptions Quiz](learning/outdated-assumptions-quiz.md) | learning | You want to find where your picture of a topic is out of date | Hans Rosling, *Factfulness* |
| [Take the Drama Out of a Draft](writing/take-the-drama-out.md) | writing | You're about to send an update or report | Hans Rosling, *Factfulness* |

## Adding an entry

Copy [`_templates/prompt-template.md`](_templates/prompt-template.md) into the right folder, fill it in, and add a row to the index above. See [CONTRIBUTING.md](CONTRIBUTING.md).

## Attribution

Entries credit their original authors. Where a prompt comes from a book, this repo paraphrases the idea and links to the source rather than reproducing the book's text. Buy the books; they are worth it.
