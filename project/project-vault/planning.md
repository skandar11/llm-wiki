---
title: planning — description of the business's plan records
type: reference
status: active
sensitivity: normal
scope: work
updated: 2026-11-10
related:
  - HOME
  - tasks
  - ../../meta-vault/planning
---

# planning — the business's plan

The form is the top's — `../../meta-vault/planning.md`; here only what the
domain keeps.

| Path | What it holds |
|---|---|
| `../../planning/plan.md` | **the one plan of the base** — the business's work in progress is a line there |
| `../planning/backlog.md` | what waits in the business, one line each: `essence — executor → pointer · status`; sections by stream |
| `../planning/backlog-closed.md` | closed lines with the date and the reason; born with the first |
| `../planning/tasks/<slug>/` | the cycle of a task bigger than a line, by the form [[tasks]]; born with the first one |

- A blocker that gates the top — a specific line in `../../planning/plan.md`
  §Caution; the domain's own blockers — [[status]].
- No history inside a line; what happened to the plan — the top's
  `planning/log.md`.
