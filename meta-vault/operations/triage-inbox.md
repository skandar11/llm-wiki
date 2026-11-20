---
title: triage the inbox
type: operation
status: possible
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - ../planning
  - ../operations
  - ingest
---

# Triage the inbox

> Step 3 of [[ingest]]: routing only. What carries knowledge goes on to the
> source page, the touched pages, the catalogue and the log — ingest steps 4–7.

- **trigger:** phrase — "triage the inbox", "what have I thrown in"
- **executor:** agent
- **status:** possible

## When

"triage the inbox" · "what's been dumped in there" · a regular triage session.

## Steps

1. Read `../../inbox/` (and a domain's `inbox/`, when the triage is the
   domain's) — the files whole, not their names.
2. Each item goes to one of the houses: a task → `planning/backlog.md` of the
   executing level (into `../../planning/plan.md` only if it starts now and
   the owner said so); a raw idea → `../../planning/ideas.md`; outside
   material → the domain that needs it; junk → `../../archive/` with a line
   in `INDEX.md`.
3. ⏸ owner — anything contested (unclear whose item it is, or it looks like a
   decision) is asked about in text, one at a time.
4. A triaged file leaves `inbox/` (to its home, to `raw/` of the thing it
   fed, or to the archive); in chat — one line on what went where.
