---
title: query — answer from the base and file the answer back
type: operation
status: possible
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - ../operations
  - ../vault-template
  - how-are-things
  - ingest
---

# Query — answer from the base, file the answer back

- **trigger:** phrase — any question to the base: "what do we know about …",
  "what did we decide about …", "compare … and …", "how are things"; event —
  the start of every session
- **executor:** agent
- **status:** possible

An answer is assembled from pages, not from memory, and names its sources. A
valuable answer does not vanish in chat: on the owner's word it becomes a page.
The read operations of a level ([[how-are-things|how are things]] and its
siblings) are queries with a fixed question.

## When

- The start of every session: door → `HOME.md` (the catalogue) → `status.md`.
  Reading only, no writing.
- The owner asks: "how are things", "what did we decide about X", "what do we
  know about Y", "compare A and B", "where is …".
- Filing back — only on the owner's "record this".

## Steps

1. **Read `HOME.md`** — the catalogue says which pages hold the subject.
   Then `status.md` for the hot state.
2. **Open the pages**, follow their links; read whole pages, not the first
   lines.
3. **Answer in chat:** the conclusion first; every fact names the page it came
   from (a path). Where the base is silent — say so: "no page on X", "the card
   says nothing about the price". An empty cell is not zero.
4. **File back** ⏸ owner — when the answer is worth keeping (a comparison, an
   analysis, a synthesis "what we know about X", a review): on "record this"
   it becomes a page — `research/` for an analysis, the entity's or the
   concept's own page for a synthesis — with a line in `HOME.md` and a log
   line `## [YYYY-MM-DD] query | <question>` pointing at the page.
5. **Gaps found** on the way — a question the base cannot answer, a page that
   should exist — go to `questions-OWNER.md` (or chat, if the level says so)
   and to the next [[lint]].

## Rules

- **The catalogue first, then the pages.** Searching by `grep` is a fallback
  when the catalogue has no line — and that itself is a lint finding.
- **A fact without a path is an opinion.** The owner must be able to open
  what the agent read.
- **No filing without the word.** Analyses are discussed in chat; the owner
  decides what enters the base.
