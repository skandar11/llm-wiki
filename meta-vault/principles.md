---
type: reference
status: active
sensitivity: normal
scope: all
tags: [principles, conventions, vault, deltas, base]
updated: 2026-11-09
---

# Principles — writing rules (base of bases)

The **base** of writing conventions for every namespace built from this
template and for every domain of our own house. A level's vault records only
its **deltas** against this file. Structure and entry points — [[vault-template]];
this file holds the rules at the level of objects. Terms — [[glossary]].

**Core:** one file = one object · the file name is its role and a search hook ·
links via `[[…]]` **by path** (§Links) · **one field — one place** (§One field) ·
flat structure · frontmatter on every object · no secrets in files (pointers
only) · one language of the base — **English** · maps and registries show the
**current state**, history lives in `decisions/`, `_archive/` and git, never
retold in maps · **the vault holds knowledge and method; records live in
folders beside it** ([[vault-template]] §The seam) · conformance is measured
**by the run, not by eyes** (`bin/check`).

## The seam: knowledge or record

One question before every write:

> *"Is this how we do things / what we know — or what we did / what we have?"*

Knowledge → vault: a method, a form, a principle, the description of a records
folder, a decision, a lesson. A record → the folder beside the vault: a registry
row, a state, a journal, a plan, the card of a person or a client. A vault that
holds data outgrows its map — the first reason bases drift.

## Rules

- **File name = its role.** `CLAUDE.md` door · `HOME.md` map · `<name>.md` the
  description of a zone or of the records folder `<name>/` (the file **beside**
  the folder, not inside) · `registry.md` the table of rows inside a records
  folder · `form.md` the file form of a sub-shelf · `card.md` the record of one
  object. **`README.md` — only in code read from outside** (the root of a
  repository on GitHub).
- **Zone and folder are born with the first object**, never ahead of need —
  and at that moment get a line in the map and in the door. A folder without a
  line in the map does not exist.
- **Nothing is deleted.** Dead things go to `../archive/` + a line in
  `../archive/INDEX.md` (what · from where · when · why). `_archive/` inside
  the vault is a terminal zone; maps do not link into it, decisions (provenance)
  may.
- **Verbatim is verbatim.** The owner's words in decisions and cards are a
  quote with a date, not a paraphrase, in the language they were said in. A
  primary source (a diary, authored texts) is not copied into the vault: it
  lives at its own path; here are notes *about* it.
- **Language.** The base is written in **English**: files exist for retrieval,
  and English is what an agent searches best. Verbatim quotes stay in their
  language; the wrapper around them is English. A translation for a client, if
  needed, is made on the client's side and never replaces the source (the
  owner's word 2026-11-09).
- **Sensitivity.** `sensitivity: normal | private`; `private` never leaves to
  a public remote (the egress wall).
- **Scope.** `scope: personal | work | all` — who reads and uses it. Not a
  privacy label.
- **Personal data.** A base with real data is private by construction (a
  private repository or no remote), so a person's public facts — name, public
  contacts, what they said in the work — may be stored in cards and decisions.
  Secrets (keys, passwords, government or bank identifiers) — never; pointers
  only (`secrets-map.md`). Third-party documents (contracts, scans, CVs) stay
  outside git where they lie; the base holds a pointer and a line about them.
- **Axis** — only where it removes ambiguity: `axis: vault | agentic | engine |
  cross` ([[glossary]]).
- **`trust` is a property of data, not of operational documents.** `trust:
  primary | derived` is carried by content objects (corpora, syntheses);
  decisions, methods, principles are curated canon and carry no `trust`. The
  test: *"is this a piece of knowledge I store, or a rule for how the system
  runs?"* Only the former gets `trust`.
- **Size.** A soft cap of ~120 lines — for single-concept reference files;
  decisions and write-ups legitimately run longer and are kept honest by
  strong internal structure (headers, tables), not by a line count. A
  reference file past the cap is split, or it is `research/` (a TL;DR block +
  `feeds-into:`).
- **A changed form is dated; old files are not mass-rewritten.** The form gets
  a line "from YYYY-MM-DD we write it so" in [[vault-template]] §Form journal;
  older files are rewritten only by the owner's word.
- **History lives in `log.md` and git, never inside a page.** A page says how it
  is now; what changed and when is a line in the vault's `log.md`
  (`## [YYYY-MM-DD] operation | title`). A Δ-block or a dated "what happened"
  section inside a card, a registry or a plan is a hole in the form.
- **Do not duplicate a skill's or an operation's steps in prose — link.**

## Links — by path

The first reader of a base is an agent, and an agent resolves a path the way
the filesystem does; Obsidian is a viewer.

- **A link is a path relative to the file it stands in:** `[[../glossary]]`,
  `[[decisions/2026-08-23-data-out-of-meta-vault]]`. **A bare name is legal
  only for a sibling in the same folder or for a name that is unique in the
  base** (`[[glossary]]`); a name that repeats across folders (`HOME`,
  `status`, `principles`, `operations` …) is linked **by path**. The run
  reports a repeated name without a path as "needs a path".
- **A link to a folder does not work** — there is no file by that name. Write
  folder paths as code: `planning/`, `office/ledger/`.
- **Inside a table the pipe is escaped:** `[[id\|Name]]`. Without the
  backslash the table row breaks exactly there and the eye does not see it.
- **Examples of wrong links inside rules are written in code spans** — the run
  skips code; a rule is not rewritten to please a checker.
- Older files may be written otherwise; they are brought to the rule by the
  owner's word, not file by file.

## One field — one place

The truth about an object lives in its card; lists, indexes, maps and
registries are **links to it, not a second copy**. Duplicating a field means
deciding where the truth is and putting a link in the other place. If two
places diverge, the one named as the truth wins — the divergence is a defect
of the copy, not a question.

## Zone sub-shelves

The flat rule applies to knowledge shelves: one object per file, no deep
trees. A zone MAY hold one journal or spec sub-shelf — the approved pattern:
`runs/`, `precedents/`, `automations/`. A second nesting level, or a zone
outgrowing its shelf, is a **promotion signal**: the zone wants to be a level
of its own.

## Frontmatter

**Descriptive, not enforced** — the schema follows practice.

```yaml
---
type: reference | registry | decision | idea | operation | status | person | note | lesson | spec | run-retro
status: idea | proposed | accepted | active | draft | done | closed | superseded | archived
sensitivity: normal | private     # private never leaves to a public remote
scope: personal | work | all      # who it is for — not a privacy label
updated: YYYY-MM-DD               # or date: when identity IS the event date (decisions, retros)
tags: [search-hooks]              # recommended; related: builds the graph
---
```

- **New genre = add it to the list above in the same commit that introduces
  it.**
- Optional: `trust: primary | derived` (data only, rule above); `axis`; `related:`.
