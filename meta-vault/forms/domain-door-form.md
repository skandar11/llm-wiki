---
title: domain door form
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - ../vault-template
  - ../operations/new-domain
---

# Domain door form

`<domain>/CLAUDE.md` is the map of the room. The harness loads it
automatically when work happens in the domain; it is thin and stable. The
agent is the same as everywhere: the door says where he is and what the rules
are here, but not who he is.

## Template

~~~
# <Name of the business> — domain

The room of <what: one phrase — which of the owner's processes lives here>.
The agent is the same as everywhere (`../CLAUDE.md`); this door is the map of
the room.

> **Invariant (verbatim, as in every door):** NEVER `AskUserQuestion` /
> popup dialogs — questions to the owner in plain text. Discussion first,
> records after the word: "do X" is an order, "maybe / probably" is thinking
> aloud. Nothing leaves without the owner's word.

## Answers

<2–4 questions of the owner that the domain answers — in his words>

## What is here

- `<domain>-vault/` — knowledge and method. Start — `HOME.md`, state —
  `status.md`, questions to the owner — `questions-<NAME>.md`, operations —
  `operations.md`.
- `<records folder>/` — <what it holds>. Description —
  `<domain>-vault/<folder>.md`.
- `planning/` — the domain's backlog (`backlog.md`, one line per item; the
  plan of the base is the top's `planning/plan.md`). Description —
  `<domain>-vault/planning.md`.
- `docs/` · `inbox/` — files, outside git. Description —
  `<domain>-vault/docs.md`.

## Operations

<a line per operation: name — when — file>

## Rules

- Knowledge in the vault, records beside it. Writing rules — the base
  `../meta-vault/principles.md` + deltas in `<domain>-vault/principles.md`.
- <hard rules of the business: what the agent may not do without the owner's
  word>
- <the legal frame of speech for the field, if regulated: what may not be
  claimed>
- <data source: live or closed — "do not refer to the old table">
- Secrets — only `../secrets/` and `.env`.

## Links

- The top: `../CLAUDE.md`. A blocker that gates the top — as a specific line
  in `../planning/plan.md` §Caution.
- Neighbouring domains: may be referenced, may not be written to.
~~~

## Rules

- **Everything in the room is listed** — every records folder, project, zone.
  What is not in the door, the agent will not find on the first try.
- **"Answers" is the domain's readiness test:** the door + `HOME.md` +
  `status.md` answer these questions, otherwise the domain is not ready.
- The invariant is repeated verbatim — there is no inheritance.
