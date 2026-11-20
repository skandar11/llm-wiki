---
title: ledger — description of the earnings records
type: reference
status: active
sensitivity: private
scope: work
updated: 2026-10-10
related:
  - HOME
  - tax-calendar
---

# ledger — earnings

| Path | What it holds |
|---|---|
| `../ledger/<year>.md` | the legal entity's receipt lines for the year; a year = a file, a new year — a new file |

## Rules

- **The event matters more than the total** — the total is always computed
  from the lines, never stored beside them.
- An entry is **«not for taxes»** by default; for taxes — only on the owner's
  explicit mark.
- Only what the legal entity earned: personal spending and transfers are not
  kept here.
- Amounts without details: an account/contract number goes as a pointer to
  the document in `../docs/`.
- The year — as the tax regime counts it.
