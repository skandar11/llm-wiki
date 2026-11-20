# office — back office (legal entity, taxes, finance, documents)

The back-office room: everything around the **owner's legal entity** —
registration, bank, taxes, record of earnings, contracts, official papers.
The agent is the same as everywhere (`../CLAUDE.md`); this door is the map of
the room.

> **Invariant (verbatim, as in every door):** NEVER `AskUserQuestion` /
> popup dialogs — questions to the owner in plain text. Discuss first, write
> after the word: «do X» is an order, «maybe / probably» is thinking aloud.
> Nothing leaves without the owner's word.

## What is here

- `office-vault/` — knowledge: the legal entity's profile, the tax calendar,
  forms. Start — `HOME.md`; state — `status.md`; questions —
  `questions-OWNER.md`; operations — `operations.md`.
- `ledger/` — records: earnings, a year = a file (`ledger/2026.md`).
  Description — `office-vault/ledger.md`.
- `planning/` — records: the office's `backlog.md` (what waits, one line per
  item); the plan of the base is the top's `planning/plan.md`. Description —
  `office-vault/planning.md`.
- `docs/` — the archive of papers (scans, PDFs); `inbox/` — papers waiting to
  be sorted. **Both outside git.** Bins and index — `office-vault/docs.md`.

## Rules (hard)

- **Privacy above all.** The office's real papers and records live only in a
  **private or local** copy of the namespace; this domain with its data never
  goes to a public remote.
- **Personal data not in markdown.** Tax IDs, addresses, account and document
  numbers live only in the scans in `docs/`; vault files hold pointers to the
  document, not values.
- **Work only.** Personal spending is not kept here; the ledger records what
  the legal entity earned.
- **Taxes — only on the owner's explicit mark.** By default a `ledger/` entry
  is «not for taxes»; the owner says himself when it is for taxes.
- **All documents come here**: work and personal papers alike (identity,
  finance, archives). NOT here: handwritten personal texts (that is a primary
  source, not papers) and secrets/access codes (→ `../secrets/`).
- Other domains do not write here horizontally — consumption goes through the
  top, as everywhere.

## Links

- The top: `../CLAUDE.md` (the namespace map), `../meta-vault/HOME.md`.
- Consumers of the legal entity: the business domain (`../project/` —
  acquiring, client contracts) — as needed.
