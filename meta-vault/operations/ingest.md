---
title: ingest — take a source into the base
type: operation
status: possible
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - ../operations
  - ../vault-template
  - triage-inbox
  - lint
  - query
---

# Ingest — take a source into the base

- **trigger:** event — a new source appeared; phrase — "record this", "take
  this in", "triage the inbox"
- **executor:** agent
- **status:** possible

The base grows only through this operation. A source is anything new that
carries knowledge: the owner's word in chat that changes a fact or a rule, a
call transcript, a document from a client, an article, a note dropped into
`inbox/`, a report of an automation. Raw sources are **immutable**: they stay
where they lie (`inbox/`, `raw/`, the recordings folder); the base holds a
summary of each and the knowledge compiled from it. Nothing is copied into the
vault verbatim except the owner's words, which are quoted.

## When

- The owner says something that changes knowledge — a decision, a fact about
  a client or a person, a rule. Taken in **the same session**, after the
  conversation.
- A file lies in `inbox/` — the door says so on entry: "inbox is not empty →
  ingest first".
- A call was recorded and its transcript is ready; a client sent materials
  into `raw/`.
- **Session close** — everything said in the session already lies as pages and
  a log line, or the session is not closed (step 0 of
  [[close-session|close the session]]).
- The owner's phrase: "record this", "take this in", "triage the inbox".

## Steps

1. **Read the source whole.** Not the first lines, not a summary of it.
2. **Discuss the takeaways with the owner** — what matters, what it changes,
   what to emphasise. ⏸ owner. Skipped only when the source is the owner's
   own word just said: then the conversation has happened.
3. **Route** (this is [[triage-inbox|triage the inbox]]): a task → the
   executing level's `planning/backlog.md`; a raw idea →
   `planning/ideas.md`; junk →
   `../../archive/` with a line in `INDEX.md`; everything that carries
   knowledge → steps 4–7.
4. **Write the source page** — `sources/YYYY-MM-DD-<slug>.md`: what it is,
   where the raw lies (a path, never a copy), the date, a TL;DR of 3–8 lines,
   and **what it changed** — links to every page touched in step 5. The owner's
   word is a source whose page is a `decisions/` file; a long external
   write-up — a `research/` file. One source — one page.
5. **Update the pages the source touches** — the card of a client, a person,
   a tool, a surface; the page of a concept, a rule in `principles.md` or
   `lessons/`, a method; `status.md` if the hot state moved. Each touched page
   gets a fresh `updated:` and, where it helps, a line "changed by
   `[[sources/<slug>]]`". A decision that touches no page is a decision nobody will
   find: a precedent must land in the page of the thing it decided about.
6. **Index.** `HOME.md` is the map **and the catalogue**: every new page gets
   a line (link + what it holds); the lines of changed pages are refreshed.
7. **Log.** Append to `log.md`:
   `## [YYYY-MM-DD] ingest | <title>` and 1–3 lines: the source → the pages
   touched. Append-only, newest at the bottom; `grep "^## \[" log.md | tail -5`
   shows the last five moves.
8. **A batch** (more than five sources at once) ends with [[lint]]: a batch
   always leaves orphans and contradictions behind.

## Rules

- **A source is either ingested or lies visibly in `inbox/`.** There is no
  third state: nothing is "taken into account" in the agent's head.
- **No history inside pages.** What changed and when goes to `log.md`; the
  page says how it is now. A Δ-block inside a card is a hole in the form.
- **The owner's words — verbatim, in their language,** with the date. Never a
  paraphrase in a decision.
- **Where the base lies**, say so: a source that contradicts a page is not
  silently merged — the contradiction is named in chat and resolved by the
  owner's word (step 2).
