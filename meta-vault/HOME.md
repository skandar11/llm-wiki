---
type: reference
status: active
sensitivity: normal
scope: all
tags: [home, index, vault, map]
updated: 2026-11-10
---

# meta-vault — map and catalogue

The top's meta-vault: a vault *about the namespace itself* — **knowledge
only** (canon, method, decisions, forms, descriptions of records folders).
What has been done and what exists is in the records folders alongside
(`../planning/`, `../inventory/`, `../people/`). Conventions — [[principles]].
Door — `../CLAUDE.md`.

**This file is the map and the catalogue of the vault:** every page has one
line here — a link and what it holds — grouped by zone. [[operations/ingest|Ingest]]
adds the line when a page is born; [[operations/query|query]] reads this file
first; a page without a line here is an orphan for [[operations/lint|lint]].
The chronology of the vault — [[log]] (`log.md`, append-only).

## Owner and agent

- [[owner]] — who the owner is, how to address them.
- [[preferences]] — the owner's rules for the agent: invariant, style,
  language.
- [[for-owner]] — a shelf of explainers: the agent writes, the owner reads.

## Top records folders (description here, records alongside)

- [[planning]] → `../planning/` — the form of the plan at every level:
  `plan.md` (the one live page of the base) · `backlog.md` (the level's
  register, one line per item) · `ideas.md` (the one box of raw ideas) ·
  `log.md` (what happened to them). Operations:
  [[operations/ingest|ingest]] (step 3 — [[operations/triage-inbox|triage the
  inbox]]), [[operations/close-session|close the session]],
  [[operations/lint|lint]] (marks stale lines).
- [[harness]] → `../inventory/` — the agent's hands: executors, automations;
  specs — `harness/`.
- [[people]] → `../people/` — people cards across domains.

## The cycle of knowledge

- [[operations/ingest|ingest]] — a source enters: read → discuss → source page
  (`sources/`) → touched pages → a line here → a line in [[log]].
- [[operations/query|query]] — an answer comes from the pages, names them, and
  on the owner's word is filed back as a page.
- [[operations/lint|lint]] — the health of the content: contradictions, stale,
  orphans, missing pages and links; fixes and questions, not a report.
- `sources/` — a summary page per ingested source (born with the first one);
  `log.md` — the chronology (`## [date] operation | title`).

## The kit — how the base is built

- [[operations/build-namespace|build the namespace]] — the main recipe:
  conversation → top → domains → records → operations → privacy → check →
  handover.
- [[operations/new-domain|new domain]] ·
  [[operations/add-engine|add an engine]] ·
  [[operations/check-links-and-names|check the base]]
  · [[operations/accept-new-version|accept a new version of the template]].
- Forms: [[forms/domain-door-form|domain door]] · [[forms/zone-form|zone and
  records folder]] · [[forms/operation-form|operation]] ·
  [[forms/process-form|process]] · [[forms/tool-form|tool]] ·
  [[forms/handover-door-form|handover]].
- Example of a chain: [[examples/marketplace|list a product on a
  marketplace]].
- [[structure]] — build state: form version, health, divergences.

## Knowledge

- [[decisions]] → `decisions/` — dated decisions, the owner's verbatim words.
  The folder is born with the first decision.
- [[ideas]] → `ideas/` — proposals that are not yet decisions.
- [[operations]] — the registry of the top's operations; files —
  `operations/`.
- [[glossary]] — the canon of terms.
- [[vault-template]] — the base of bases: the form of a level, vault, records
  folders; the form journal.
- [[principles]] — writing rules.
- [[secrets-map]] — where access credentials live (without values) + the
  `secrets/` contract.

## Domains (links downward)

- `../project/` — the first undertaking (rename it to your own). Door +
  `project-vault/` + `planning/` + `docs/` + `inbox/`.
- `../office/` — back office. Door + `office-vault/` + `planning/` +
  `ledger/` + `docs/` + `inbox/`.

Sink — `../archive/INDEX.md`.
