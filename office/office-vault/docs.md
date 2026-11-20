---
title: docs — description of the papers archive
type: reference
status: active
sensitivity: private
scope: work
updated: 2026-10-10
related:
  - HOME
---

# docs — the archive of official papers

Description of the `../docs/` and `../inbox/` folders. Binaries: scans, PDFs.
**Outside git**, private/local copy only, no cloud. Naming:
`YYYY-MM-DD-<what>.<ext>` (English kebab-case), date = the document's date.
Vault files point here; personal-data values live only in the scans
themselves. This is the home of **all** the owner's papers — work and
personal; not here: handwritten personal texts (a primary source, not papers)
and access codes (→ `../../secrets/`).

## Bins

- `identity/` — personal documents: passport, diplomas, IDs.
- `legal-entity/` — the legal entity:
  - `registration/` — registration documents;
  - `bank/` — certificates and statements of the legal entity's accounts;
  - `taxes/<year>/` — filed returns and payment confirmations;
  - `contracts/` — contracts.
- `personal-finance/` — personal bank documents (an individual's
  certificates, statements).
- `misc/` — other papers that have no bin of their own.

Each document put in is a line in its bin's `registry.md`: file name · what
it is · where it came from (the original name, if renamed).

## inbox

`../inbox/` — papers **not yet sorted** (downloaded certificates, contracts
received, receipts). It empties, it does not pile up: file → rename by the
convention → a bin in `docs/` + a line in its `registry.md`.
