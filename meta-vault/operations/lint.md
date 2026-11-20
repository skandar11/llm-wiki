---
title: lint — check the health of the base's content
type: operation
status: possible
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - ../operations
  - ../vault-template
  - check-links-and-names
  - ingest
  - query
---

# Lint — check the health of the base's content

- **trigger:** phrase — "check the base", "lint"; event — the end of a batch
  ingest; an automation of the level (weekly, if it has one); the door's
  signal "the last log line is older than 14 days"
- **executor:** agent (step 0 — code → `bin/check`)
- **status:** possible

Structure is checked by the script; **content is checked by the agent**:
contradictions, stale claims, orphans, missing pages, missing links. Lint
produces **fixes and questions, not a report**: a long audit file that waits
for the owner in `inbox/` is itself a lint finding.

## When

- The owner's phrase: "check the base", "lint", "what is stale".
- The end of a batch ingest (more than five sources).
- An automation of the level, if the owner has one (a weekly run that reads
  and reports; nothing is written by the automation).
- On entry, when `log.md` is silent for 14 days — the agent offers a lint, one
  line, and does not insist.

## Steps

0. **Structure** — `python3 bin/check` ([[check-links-and-names|check the
   base]]): links, names, pipes, secrets, Windows names. Numbers, dated, into
   `structure.md` §Health (a base) or `status.md` §Structure (a domain).
1. **Contradictions** — one fact in two places with two values: a client's
   status in the card and in the registry, a price, a date, a name. Name both
   places.
2. **Stale** — `status.md` older than the records it summarises; a page whose
   `updated:` predates a decision about its subject; ideas and hypotheses
   whose status nobody has moved for a quarter; a plan line past its date.
3. **Orphans** — a page with no inbound link and no line in `HOME.md`; a
   folder of raw material without a card or a registry row; a records folder
   without an operation that reads or writes it.
4. **Missing pages** — a client, person, product line, tool or concept named
   in three or more pages that has no page of its own.
5. **Missing links** — pages that speak of the same thing without linking;
   a decision that touched no page (an [[ingest]] step 5 left undone).
6. **Gaps** — questions the owner asked that the base could not answer
   (from [[query]] step 5); what a search outside could fill.
7. **Output, in chat:** a short list — *finding · where · proposed fix*.
   Fixes that change knowledge or need a choice → ⏸ owner, one at a time;
   mechanical fixes (a missing index line, a dead link, a date) — applied.
8. **Log:** `## [YYYY-MM-DD] lint | <scope>` with the counts (findings ·
   fixed · asked) — one line per run.

## Rules

- **No report files.** Findings live in chat and in the log line; what needs
  the owner goes to `questions-OWNER.md` (or chat, if the level says so).
- **Numbers from the run, dated.** "Zero broken links" without a date is not a
  record.
- **Lint does not rewrite dated files** — decisions, retros, source pages are
  history; a stale page gets a new state, not a new past.
