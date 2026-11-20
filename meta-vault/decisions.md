---
title: decisions — dated decisions of the level
type: reference
status: active
sensitivity: normal
scope: all
axis: vault
updated: 2026-10-10
related:
  - HOME
  - ideas
---

# decisions — dated precedents

Description of the `decisions/` zone (the folder is born with the first
decision). Accepted decisions of the namespace: verdict + why + context +
status. Including **negative** ones («we rejected X — here is why») and
**decisions about structure** («why a table, not cards») — they spare the
next session a repeated argument.

## Rules

- **A decision is the owner's word, not the agent's conclusion.** The agent's
  conclusion lives in the chat until the owner has said their word. The file
  holds a **verbatim quote** of the owner with the date, then the verdict.
- File name: `YYYY-MM-DD-<slug>.md` (identity = the date of the decision).
- Frontmatter: `type: decision`, `status: active | superseded`, `date`,
  `tags`, `related`.
- A superseded decision stays (history) with a pointer to the one that
  replaced it.
- Path of maturing: [[ideas]] → here.
