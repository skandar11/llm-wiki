---
title: people — description of the people records folder
type: reference
status: active
sensitivity: normal
scope: all
axis: vault
updated: 2026-10-10
related:
  - HOME
---

# people — registry of people

Description of the records folder `../people/`. The folder is born with the
first card.

One card per person who appears in **≥2 domains** or matters across the
namespace. A card answers "who is this" (name, how to address them, aliases,
where mentioned) — **not** "what they mean": readings and context stay in the
domains.

## Card form

`../people/<name>.md`, file name — lowercase english (`alice.md`):

```yaml
type: person
relation: personal | work | public | historical
address: <how the agent names the person — the only form in its speech>
aliases: [all spellings encountered]
ids: {…}                 # only identifiers that have already surfaced
sensitivity: private     # always
```

Body: 1–2 lines on who this is → "Where mentioned" (pointers by domain) →
"Registry notes" (what not to merge, open questions of identity).

## Rules

- **`address:` is the law of the agent's speech.** Elders and teachers — by
  first name and patronymic, if that is customary; a bare surname — only in
  verbatim quotes and tables. Exceptions are not multiplied by rules — the
  data lives in the card.
- **Cards are always `sensitivity: private`**, they do not go to a public
  remote.
- Diverging spellings are merged into `aliases`.
