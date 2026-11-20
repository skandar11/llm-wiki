---
title: planning — the form of the plan at every level
type: reference
status: active
sensitivity: normal
scope: all
axis: vault
updated: 2026-11-10
related:
  - HOME
  - vault-template
  - operations/ingest
  - operations/triage-inbox
  - operations/close-session
  - operations/lint
---

# planning — the plan, the backlog, the ideas, the log

Description of the records folder `planning/` — the one records folder **every
level has**. Here — what lies where and the rules; the records themselves are
beside the vault. A domain's `planning.md` points here and adds only what the
domain changes.

## What lies where

| Path | What it holds | Where |
|---|---|---|
| `planning/plan.md` | **the one live plan of the base** — what we do now: a line per thing in work, with a pointer to the thing's home. `## Now` (the main thing, in the owner's words) · sections by stream, born with the first line · `## Caution` (blockers that gate the top) · `## Later` (not now). Rebuilt with the owner; the past leaves the page | the top only |
| `planning/backlog.md` | **the level's register of what waits** — one line per item: `essence — executor → pointer · status`; sections by stream, not by the date the line arrived | every level |
| `planning/backlog-closed.md` | closed and dead lines, each with the date and the reason; born with the first closed line | every level |
| `planning/ideas.md` | **the one box of raw ideas** — a line each: date · the idea · where it came from | the top only |
| `planning/log.md` | what happened to the files above — a rebuild of the plan, a closure, a move: `## [YYYY-MM-DD] <what> \| <title>` + 1–3 lines, append-only; born with the first rebuild | where the plan is rebuilt (the top) |
| `planning/tasks/<cycle>/` | the cycle of a task bigger than a line (form — the level's `tasks.md`); the backlog line stays and points here. A level may keep cycles in the work home instead (a client's folder) — its `principles.md` says which | the executing level |

## Rules

- **One plan for the whole base.** No plan per domain, no layers of week ·
  month · priorities · assumptions. The keeper's house ran the layers from
  2026-08 and retired them on 2026-10-21: a plan with layers and no daily
  driving loses contact with reality. A domain's work in progress is a line
  in the top plan; what waits is a line in the domain's backlog.
- **A line, not a paragraph.** Details live at the pointer — a card, a task
  cycle, a decision. A line that wants paragraphs is a file being born: give
  it one and keep the line. (The keeper's lesson: a 1 229-line register nobody
  could read.)
- **The plan points, it does not retell.** The state of a client, a person, a
  deal lives in its card; the plan says what we do with it now. One fact — one
  home ([[principles]] §One field — one place).
- **Two altitudes.** The top owns priority — the plan. A level owns its
  backlog and its real blockers — its `status.md`. A blocker that gates the
  top goes up as a **specific** line into `planning/plan.md` §Caution; the top
  agent must hit it from its normal read.
- **Three doors in, no fourth.** A raw line that is a task → the backlog of
  the level that will do it; an idea → `ideas.md`; everything else (a file, a
  link, a transcript, a thought that is neither) → `inbox/`, taken by
  [[operations/ingest|ingest]]. The plan is never written from outside the
  owner's conversation.
- **Updated things keep no history inside.** The plan, the backlog and the
  ideas box say how it is now; what happened to them is `planning/log.md` —
  not a §Δ inside the plan, not paragraphs inside a backlog line. Closed
  lines leave the live register for `backlog-closed.md`.
- **Stale is marked, not fixed silently.** A line whose facts are older than
  the thing it points to gets `stale <date>` from [[operations/lint|lint]] and
  is decided by the owner at the next rebuild of the plan.
- **Not here:** questions to the owner (→ `questions-OWNER.md`), decisions
  (→ `decisions/`), the hot state of a level (→ its `status.md`, which points
  to the plan and never repeats it), dates with a calendar nature (→ the thing
  itself: a tax calendar, a client's card).
- **Ideas graduate.** A grown idea becomes a page in the vault's `ideas/`
  ([[ideas]]); a taken one — a backlog line or a plan line; a dropped one is
  struck through with why.

## How it grows

A new stream of work — a line in the plan (if it starts now) or in the
executing level's backlog (if it waits). A task bigger than a line — a cycle
folder. A new level is born with `planning/backlog.md` and nothing else; the
closed file, the cycles folder and the log appear with their first object.

## What is absent

- A priorities file, a calendar, a weekly or monthly page — by design (above).
- A capture file `planning/inbox.md` — retired 2026-11-10; its three uses are
  the backlog, `ideas.md` and `inbox/`.
