---
type: reference
status: active
sensitivity: normal
scope: all
axis: vault
updated: 2026-11-10
tags: [template, vault, doors, records, operations, convention, base, form-journal]
related:
  - HOME
  - principles
  - operations
  - structure
  - ../CLAUDE.md
---

# Vault template — the folder as entry point, the vault, records beside it

**The base of bases** for how a level is laid out: the folder, its vault and the
folders of records beside the vault. **This folder, `template/`, is the one
source of the form** — for every domain of our own house and for every base we
build for a client (the owner's word 2026-11-09). Domains and bases conform to
it and record only their **deltas** in their own `principles.md`. Writing rules
— [[principles]]; this file — **structure + the entry-point contract**.
Reshaping this file reshapes everything born from it, so every change of form
gets a line in §Form journal.

**The text is English.** The source of the template is written in English
everywhere; a translation, when a client needs one, is made on the client's
side and never replaces the source (the owner's word 2026-11-09: «Начальный
текст всегда будет на английском везде. Если нам нужно будет перевод у
клиента, пусть себе переводится»). Verbatim words of a person stay in the
language they were said in.

## The model — the folder is the entry point

A level folder is **not** just its vault. It holds a vault (knowledge + method)
**plus** folders of records beside it **plus** code projects, files — anything.
When an agent opens the folder as cwd it must, first try, know what this place
is, find the vault, every records folder and every project inside.

```
<level>/                       ← THE ENTRY POINT (the folder opened as cwd)
  CLAUDE.md        [door]       ← auto-loaded by the harness. The manifest.
  <level>-vault/                ← KNOWLEDGE + METHOD (how we do things, what we know)
    HOME.md        [map]        ← semantic navigation
    status.md      [hot]        ← the state now (+ §Structure)
    principles.md  [rules]      ← "follows the base + these deltas"
    questions-OWNER.md          ← what awaits the owner's word, one question per line
    operations.md + operations/ ← what is done here — by operation, not from memory
    planning.md people.md …     ← DESCRIPTION of each records folder (a file beside the folder's name)
    decisions/ systems/ …       ← the body (below)
  planning/ people/ …           ← RECORDS, one folder per kind; a registry inside = registry.md
  docs/ inbox/                  ← files, outside git
  <project>/ CLAUDE.md          ← every code repo has its own door
```

At the top of a namespace the vault is `meta-vault/`; a domain's vault is
`<domain>-vault/`.

## The seam — vault = knowledge and method; records beside it

The vault holds **how we do things and what we know**; **what we did, found
and have** lives in folders of records beside the vault, one folder per kind.
The test before every write:

> *"Is this how we do things / what we know — or what we did / what we have?"*

Knowledge → vault: a method, a form, a principle, the description of a records
folder, a system card, a decision, a lesson, a research conclusion. A record →
the folder beside: an entry, a state, a registry of facts, a journal, a plan
instance, a run, the card of a living person or client. A vault that holds
data outgrows its map — the first reason bases drift.

**The vault holds a file named after every records folder** — its description
and method (`planning.md` says what our plan is and how it is kept; a folder of
the same name in the vault may hold the method files). The records folder holds
records and **no rules**. The term is **records folder**.

## Entry-point contract

**Chain: door → `HOME.md` (map) → knowledge.** One role per file.

- **The door.** The harness **auto-loads** it from cwd up the parent chain;
  nothing else is auto-loaded. Its filename depends on the tool: **`CLAUDE.md`**
  (Claude Code), **`AGENTS.md`** (Codex and others); a folder used by more than
  one tool carries both as **content-synced twins** (only the tool-name wording
  differs) — correct for a tool-independent base, not a duplicate to delete.
  Required at every openable cwd: every level root **and** every code repo. The
  door is a **manifest**: (a) what this place is, (b) the route into the vault
  first (`HOME.md` + `status.md`), (c) **enumerate the records folders,
  projects and zones inside** so an agent finds everything first try, (d) name
  the level's operations registry. Thin and stable. **The door states no
  persona** — one agent works in the whole space; the door is the map of the
  room, not a new identity.
- **`HOME.md` — the map and the catalogue.** Reached *via* the door, never
  auto-loaded. Exactly one per vault root. Semantic navigation by topic, **one
  section per records folder** (what · where · its description file · its
  operations) — **and one line for every page of the vault** (a link + what it
  holds), grouped by zone. Ingest adds the line when a page is born; query
  reads this file first; a page without a line is an orphan. Not duplicated at
  the workspace root; no second map beside it.
- **No `README.md` in our zones.** Nobody reads these folders from outside; the
  harness opens only the door and everything else is reached by link, so a
  file is named by its role ([[principles]] §Rules, "file name = its role"): `CLAUDE.md`
  door · `HOME.md` map · `<name>.md` description of the zone or records folder
  `<name>/` (a file beside the folder, never inside) · `registry.md` a table of
  rows inside a records folder · `form.md` the file form of a sub-shelf ·
  `card.md` the record of one object. `README.md` survives only in code read
  from outside (the root of a repository on GitHub). Routing kept only in a
  README does not exist for the agent.
- A folder that is only a knowledge vault (no code) still gets a door if it
  can be opened as cwd; it may be a one-line redirect into `HOME.md`.

## Vault shape

`<level>-vault/` (`meta-vault/` at the top). **Mandatory** spine + **shared**
body + **optional** by the kind of business. Every zone is one file per
object ([[principles]]).

**Mandatory spine**

- `HOME.md` [map + catalogue] · `status.md` [hot, with §Structure] ·
  `principles.md` [rules — opens with "follows the base + these deltas"] ·
  `secrets-map.md` (pointers only; even if it only says "no secrets at this
  level") · **`log.md`** [chronology] — append-only, one entry per move:
  `## [YYYY-MM-DD] <operation> | <title>` + 1–3 lines; operations: ingest ·
  query · lint · build · version · decision. Greppable: `grep "^## \[" log.md |
  tail -5`. History leaves the pages and lives here (and in git); `status.md`
  stays a snapshot. At the top of a house a `CHANGELOG.md` may hold the
  versions of the canon; `log.md` holds what was done.
- `questions-OWNER.md` — **the one file of what awaits the owner's word**: one
  question per line, a pointer to the card it came from, newest on top.
  Questions are not tasks (those go to the plan) and not decisions (those get
  a dated file once answered). The agent asks one at a time when the question
  comes up in the work; the whole list only on request. `OWNER` in the
  filename is replaced by the owner's name in capitals, no angle brackets
  (NTFS forbids them).
- `operations.md` + `operations/` — the registry and the files of the level's
  operations (§Operations).
- `tasks.md` — the **form** of a cycle of a large task (`spec → plan → build →
  review → record`) and nothing else; run-data of cycles are records and live
  beside the vault — in the client's folder or in `planning/tasks/<cycle>/`;
  which one, the level says in its principles.
- **A description file for every records folder** beside the vault
  (`planning.md`, `people.md`, `market.md`, `clients.md` …) — §Records folder.
  `planning/` is the one records folder every level has; its form —
  [[planning]]: one plan of the base at the top (`plan.md`), a backlog per
  level (one line per item), the ideas box and the plan's own `log.md`.

**Shared body** (every zone is born with its first object)

- `decisions/` — dated precedents `YYYY-MM-DD-<slug>`, the owner's words
  verbatim, including negative ones ("rejected X"). **Structure decisions are
  decisions too** — "why tables, not cards", "rejected a zone for X".
  Description — `decisions.md`.
- `systems/` — own components (what each is and why, not implementation).
- `lessons/` — operational rules (trigger → rule → why).
- `tools/` — reference cards of external instruments (how to use, limits,
  pitfalls; keys — a pointer to `secrets-map` only).
- `sources/` — **a summary page per ingested source**: what it is, where the
  raw lies (a path, never a copy), the date, a TL;DR of 3–8 lines, what it
  changed (links to the touched pages). Born with the first source. The
  owner's word is a source whose page is a `decisions/` file; a long external
  write-up is `research/`.
- `_archive/` — terminal: no live links from canon. **Provenance pointers are
  legal** — `decisions/` and dated records may point into `_archive/`, because
  precedents keep their evidence; maps and navigation may not.

**Optional by the kind of business**

- `market.md` — the description of our market and the method of marketing;
  the records (positioning, keywords, competitors, field, surfaces, cases,
  ads) live beside the vault.
- `clients.md` — the form of a client card and the rules of the client
  folders; the cards and the cycles of each client live beside the vault.
- `research/` — long write-ups with a TL;DR block (3–8 lines) and `feeds-into:`
  in the frontmatter.
- `analytics/` — quantified analysis: every note states its data window ·
  sources · method · numbers, so a conclusion can be re-derived, not just
  trusted; business figures = `sensitivity: private`.
- `positioning.md` — if there is an outward offer (or inside `market.md`).
- `curriculum/` — if an education business.

**Flat.** Zones are flat; one sub-shelf per zone is the approved maximum
([[principles]] §Zone sub-shelves). A method that wants a folder of its own
becomes a file in the zone (`plans/differential-planning.md`, not
`differential-planning/README.md`).

## Records folder — the form

A records folder stands **beside** the vault, one per kind, and is **born with
its first object** — never ahead of need.

- **Test for a new folder — both must hold:** it has **its own unit of
  storage** (not reducible to a neighbour's) **and its own rhythm of growth**
  (fills at its own pace, for its own reason). One fails → a sub-folder inside
  an existing records folder, not a new one.
- **Inside — records only.** No contract file inside the folder. Its
  description is `<vault>/<folder>.md`; a registry of rows inside the folder is
  `registry.md`; the file form of a sub-shelf is `form.md`.
- **The description file in the vault** holds: **what lies where** (a table
  path → what it holds) · **rules, including the boundary** — what never lives
  in this folder and why · **how it grows** — what happens on a new object /
  month / year · **what is missing** — an honest list of gaps.
- **Records that accumulate in time are bucketed by year / month from day
  one** — the year as the *business* counts it (calendar, school, fiscal), not
  as looks tidier.
- **A records file carries no tasks, decisions or history:** tasks → the
  backlog (`planning/backlog.md`); decisions → `decisions/`; history → `log.md`, git
  and dated run files. A "§Open" / "§Tasks" / "§Δ" inside a records file is a
  hole, not a form.
- **Born with three lines elsewhere:** a section in `HOME.md`, a paragraph in
  the door, and at least one operation in `operations/` that reads or writes
  it. A records folder without an operation is a reference shelf, not a
  working folder.

## Operations

The agent acts **by operation, not from memory**. The registry of a level is
`operations.md`; the files are `operations/`; the form — `forms/operation-form`.

- **Two kinds, and both are needed:** *write* (record, change, accept, close)
  and *read* (answer a question the owner asks regularly). A level with only
  write operations is upside down — the owner asks more often than he
  dictates.
- **Header:** `trigger: phrase | skill | event` · `executor: agent | skill →
  <name> | code → <path>` · `status: possible | in-dev | live` (live **only
  after a live run**).
- **Skill = the atomic executable piece; operation = the action of the
  level.** A step of an operation may be executed by a skill; **the operation
  knows its skills, a skill never lists its operations** (backlinks show it).
  The truth of the action lives in the operation; a skill that carries truth
  is a bug.
- **"When"** — the owner's live phrases, in the owner's words, not a
  description of the action. **Steps name the concrete files they change** —
  that is the synchronisation mechanism between the vault and the records
  folders: an operation says which records folder and which vault file it
  touches.
- **`⏸ owner`** on every step where a human decides; everything that leaves
  the base (publish, send, upload) passes such a step.
- **A read operation says where the base lies:** an empty cell is not zero,
  "no mark" is not a debt, an unfilled field is not absence.
- **New operation → three lines:** a row in the level's `operations.md` ("no
  row — no operation"), a line in the door, a line in `HOME.md`.
- **Acceptance of a level:** the questions the level answers for the agent
  ("how are things", "what is built", "how is it laid out", "what was
  decided") are read operations; the level is ready when door + `HOME.md` +
  `status.md` answer them. Not answering — not ready, however many files it
  has.

## The cycle of knowledge — ingest · query · lint

Three operations every level has; the base lives through them and through
nothing else. Raw sources (the owner's words, transcripts, documents, files in
`inbox/`) are **immutable** and stay where they lie; the vault holds what is
compiled from them.

- **[[operations/ingest|Ingest]]** — a source enters: read whole → discuss with
  the owner → route (tasks, ideas, junk) → a source page in `sources/` → the
  pages it touches are updated → a line in `HOME.md` → a line in `log.md`. The
  owner's word is taken in the same session; a file in `inbox/` is taken at
  the next entry; a session is closed only when its words are ingested. A
  source is either ingested or lies visibly in `inbox/` — there is no third
  state.
- **[[operations/query|Query]]** — an answer comes from the pages: the
  catalogue first, then the pages; every fact names its page; where the base
  is silent, say so. A valuable answer (an analysis, a comparison, a synthesis)
  is filed back as a page on the owner's word, with a log line. The read
  operations of a level are queries with a fixed question.
- **[[operations/lint|Lint]]** — the health of the content, run by phrase, at
  the end of a batch ingest, by the level's automation, or when the log is
  silent for 14 days: step 0 the structure (`bin/check`), then contradictions ·
  stale · orphans · missing pages · missing links · gaps. Output — fixes and
  questions, not a report file.
- **On entry the door reads three signals:** no build date → build; `inbox/`
  not empty → ingest first; the log silent for 14 days → offer a lint.

## status.md contract

`status.md` is the **hot state**, read every session. The recording rule:
**blockers must be visible to a higher-level agent without drilling into side
documents.**

- **Blockers / not-done first — never buried.** State plainly what is **not**
  done and what is **gated, and on what**. A real blocker that sits in
  `docs/*.md` is invisible to an agent that reads the door + `status.md` only.
- **"Deployed / works" ≠ done — the demo view hides the last mile.** Always
  pair *what works* with *what is blocked*.
- **Blockers that gate a higher level go up** — copied as a **specific** line
  into the hot state the higher level actually reads (at the top of a
  namespace — `planning/plan.md` §Caution), not as a vague "gate". The top agent
  must hit it from its normal read.
- **A snapshot, not a journal.** `status.md` says how it is now; history is
  the git log of the file; open tails go to the plan. Past ~60 lines the file
  has turned into a journal — trim.
- **§Structure — the state of the level's build, separate from the state of
  its business.** Business and build rot differently; one file for both loses
  both. The section holds: **health numbers from the run, with the date**
  (links checked / broken / needing a path · folder links · unescaped pipes ·
  secrets in the git index — a zero without a date is not a record) · **last
  changes of the build**, dated, newest on top, structure only · **divergences
  from the base** — a table *base rule · how here · why* (an empty table is
  good; a silent divergence is how two editions of a rule are born). A base
  built from this template keeps the same in [[structure]].
- **Why it matters:** planning is two-altitude — the top owns priority, the
  level owns the real blockers; correctness comes from the data being right
  (an honest hot state), and a sub-agent is then an optimisation for depth,
  not a correctness crutch.

## Level invariant

What every level shares. New levels are born with all of it; gaps in existing
ones are hygiene items, not new decisions.

1. **One agent in the whole space, no persona in the door.** The door says
   what this place is; the voice is the one agent's everywhere. Everything that
   is not the agent — skills, scripts, sub-agents, cron — is an **executor**;
   their registry is `inventory/executors.md`. The owner is the top and is not
   called a role.
2. **Chain** door → `HOME.md` → `status.md` → `principles.md`; principles
   opens with *"follows the base + these deltas"*.
3. **Mandatory spine** (§Vault shape) **and records beside the vault**, one
   folder per kind, each with a description file in the vault (§The seam).
4. **Body minimum**: `decisions/ lessons/ systems/ tools/` — renaming is
   allowed only as a declared delta in principles, never silently.
5. **Twin rule**: a level opened by a second harness carries `AGENTS.md` as a
   content-synced twin of `CLAUDE.md` (§Entry-point contract).
6. **Closing convention**: the tree changed → before leaving, (0) the session
   is ingested — its words lie as pages, new pages have a line in `HOME.md`,
   `log.md` has the session's line; (1) the hot state matches reality
   (`status.md` of the domain; at the top — `planning/plan.md`), touched
   only when the session changed what it holds; (2) a checkpoint commit in
   each touched repository, `git add` by path — locally without asking, push
   **only by the owner's word**; (3) "nothing to close" is a legal answer, but
   explicit, one line. A level may override its mode, declared in its door.
7. **The owner's word rules** — repeated verbatim in every door, there is no
   inheritance: "do X" is an order; "I think / maybe / perhaps" is thinking
   aloud — answer, do not execute. Nothing leaves the base — `git push`, a
   publication, a message — without the owner's word. Questions to the owner
   are plain text, never popup choice widgets.

## Base + deltas

This template + [[principles]] are the **base**. A level's `principles.md`
opens with *"follows the base + these deltas"* and lists only what it changes.
New levels are **born from this template**, so they are correct on day one
rather than retrofitted.

- **A divergence is either fixed or recorded — there is no third way.** The
  base changed, or the level is written differently → bring the level to the
  rule, *or* write the divergence with its reason into the level's
  `principles.md` deltas and `status.md` §Structure. Silently drifting apart
  is how a rule gets two mutually exclusive editions that nobody can tell apart
  half a year later. A divergence itself is not a defect; an **unrecorded**
  one is.
- **Check three things, not two:** the form in the base · the deltas the level
  declares · **how the level's files are actually written** — the third
  decides. If the files follow neither, fix the files first, the form after: a
  vault with a form no file follows is worse than a vault without a form.
- **A changed form is dated; old files are not mass-rewritten.** The form gets
  one line — "from YYYY-MM-DD we write it so; older files are written
  otherwise" — in §Form journal, and existing files are rewritten only when
  the owner asks. Mass rewriting tears links and bloats history for a cosmetic
  gain.

## Conformance

Numbers come from the run, never from eyes: `bin/check` (operation
[[operations/check-links-and-names|check-links-and-names]]) — links checked /
broken / needing a path · folder links · unescaped pipes in tables · secrets in
the git index · names Windows forbids · long paths · another machine's paths.
They land, dated, in [[structure]] §Health of a base; a domain's own numbers —
in its `status.md` §Structure. A zero without a date is not a record.

## Form journal

Newest on top. A line only for what changes the form or a rule; text tidying
gets no line. Earlier history — the git log of this file and of the house text
it was merged from.

- **2026-11-10** — **the form of the plan, one for every level**
  ([[planning]]). `planning/` is the one records folder every level has:
  **`plan.md`** — the one live plan of the base, at the top only (a line per
  thing in work, a pointer to its home; `## Now` in the owner's words ·
  streams · `## Caution` · `## Later`); **`backlog.md`** — a register per
  level, one line per item `essence — executor → pointer · status`, sections
  by stream, closed lines to `backlog-closed.md`; **`ideas.md`** — the one box
  of raw ideas at the top; **`log.md`** — what happened to the plan files,
  born with the first rebuild. No plan per domain, no week · month ·
  priorities layers (the keeper's house ran them 2026-08 → 2026-10-21 and
  retired them). A blocker that gates the top goes into the plan §Caution,
  not into the top's backlog. Retired: `planning/inbox.md` (a task → the
  backlog, an idea → `ideas.md`, the rest → `inbox/` for ingest) and the
  never-born shelf `planning/plans/` (a plan-to-read is `tasks/<cycle>/`).
  Lint marks stale lines; the owner decides them at the rebuild. Source: the
  keeper's survey of planning across the house on 2026-11-09/10 — the house
  lived by plan · backlog · ideas · log while the template still shipped the
  form of 2026-10-10 (backlog + inbox.md + plans/); the owner's word
  2026-11-10 «С шаблона».

- **2026-11-09, evening** — rule added to [[principles]] §Rules: **personal
  data** — a base is private by construction, a person's public facts may be
  stored, secrets never, third-party documents stay outside git (lifted from a
  note of the academy's old memory head, ingested 2026-11-09).
- **2026-11-09, later** — **the cycle of knowledge: ingest · query · lint.**
  Three operations added to every level (`operations/ingest` · `query` ·
  `lint`; `triage-inbox` is step 3 of ingest, `check-links-and-names` is step
  0 of lint, `how-are-things` is a query with a fixed question). **`log.md`**
  joins the mandatory spine — the append-only chronology
  (`## [date] operation | title`); history leaves the pages ("§Δ inside a
  record is a hole"). **`HOME.md` is the map and the catalogue** — one line per
  page, kept by ingest, read first by query. **`sources/`** joins the shared
  body — a summary page per ingested source; raw stays immutable where it
  lies. The door reads three signals on entry (not built · inbox not empty ·
  log silent 14 days); session close starts with "the session is ingested".
  Source: the comparison with the LLM-wiki pattern (Karpathy, 2026-04) run by
  the template's keeper on 2026-11-09 — ingest and lint were named as the
  takeaways already on 2026-07-17 and had not landed.
- **2026-11-09** — **one source, English.** The two editions of the form — the
  keeper's own house text (English) and the kit's (Russian) — are merged into
  this one text in `template/meta-vault/`; the house file is now a pointer to
  this one plus the house's deltas, and the house's own domains are instances
  of the frame in the keeper's map of agents. The whole template is written in **English** (the
  owner's word 2026-11-09; a translation, if a client needs one, on the
  client's side). Merged in from the house text: §Level invariant,
  §Conformance, links by path with the bare-name exception for a sibling or a
  unique name, "one field — one place", zone sub-shelves, the frontmatter
  schema, the optional zones by kind of business, the "why" of the status
  contract. Kept from the kit: this journal, [[structure]], `forms/`, the
  build and version operations, `tasks.md` as a file. Renamed:
  `questions-ВЛАДЕЛЕЦ.md` → `questions-OWNER.md`; the version line of
  `structure.md` is `**Template form:** YYYY-MM-DD` (`bin/new` reads it); the
  `configure` placeholder replaces the Russian one (`bin/check` counts the marks).
  The decision is recorded with the template's keeper.
- **2026-11-06** — **accepting a version for a base without a `template`
  remote**: the operation `operations/accept-new-version` got a path for bases
  that have no template among their remotes (built by `bin/new` or sent as an
  archive — so every base; none had ever accepted a version): the template's
  keeper accepts from the template folder, the owner does `git pull`, the base
  records the acceptance in `structure.md` §Build journal. The method files
  are the same, the form of bases does not change. The same day `bin/check`
  skips only the **root** `archive/`: a data folder named `archive` deeper
  (`school/archive/`, `finance/archive/`) is read, otherwise links by name to
  its records counted as broken (lesson of moving the school's base, 06.11).
- **2026-10-22** — **one template for all**: a personal namespace, a client's
  base, an agent with code — one form (the owner's word 22.10: «да, единый
  шаблон»). **Delivery layer** added: operation `operations/add-engine` and form
  `forms/engine-form` (engine = the code the agent acts with; description
  `engine.md` in the vault, platforms as a column); `bin/setup` (macOS, Linux)
  and `bin/setup.ps1` (Windows, UTF-8 with BOM) — a clean machine in one
  command, hooks `engine/setup-extra.*`; `.gitattributes` (LF; CRLF for
  `.ps1`/`.cmd`); `bin/check` catches names Windows forbids and warns about
  paths over 200 characters and another machine's paths. Handover form: the
  delivery route (GitHub · the owner's machine · `git bundle`), a Windows
  section, "the door does not lie about delivery". `structure.md`: sections
  "Asked for, not built" and "Lessons for the template" — lessons rise into
  the template from there. Accepting a version also from a folder, offline.
  The term **engine** widened: the agent's code; RAG is one case. `README.md`
  and `LICENSE.md` — only at the public mirror of the template, they do not
  ship.
- **2026-10-10** — rebuilt to the current form + **the builder inside**: the
  agent in a fresh clone builds the owner's namespace by recipe
  (`operations/build-namespace` · `new-domain` · `check-links-and-names` ·
  `accept-new-version`), forms in `forms/`, an example in `examples/`, the
  run — `bin/check`, the state of the build — `structure.md`. Links to
  repeated names — by path. **Records moved out of the vault** (`backlog` →
  `planning/`, automations → `inventory/`, the office ledger →
  `office/ledger/`); **README out of the zones** — the description `<name>.md`
  beside the folder, the `secrets/` contract moved into `secrets-map.md`,
  `README.md` kept only at the root for GitHub; **one agent for the whole
  space** + `inventory/executors.md`; the domain spine gained
  `questions-OWNER.md`, `operations.md` + `operations/`, `status.md`
  §Structure; **the sink `archive/` + `INDEX.md`** — nothing is deleted; the
  invariant gained "do" vs "thinking aloud" and "outward — only by the word";
  session close with a checkpoint commit.
- **2026-09-25** — README out of our zones: `<zone>/README.md` → `<zone>.md`,
  records contracts archived (the description in the vault is enough),
  registries → `registry.md`, sub-shelf forms → `form.md`, new per-object
  records → `card.md`; level roots without a vault → `HOME.md`.
- **2026-08-23** — the seam written into the shape: vault = knowledge + method,
  records in folders beside the vault (one per kind, a description zone of the
  same name in the vault); `market/` and `plans/` stay in the vault as
  description + method, their records move beside; `tasks/` keeps the form
  only, run-data are records. **Added to the spine:** `operations/` (+
  registry; skill = atomic executor, the operation knows its skills) and
  `questions-OWNER.md`. **Added:** §Records folder — the form · §Operations
  (incl. acceptance by the agent's questions) · `status.md` §Structure
  (numbers from the run, the divergences table, snapshot ≤ ~60 lines) · the
  three rules of §Base + deltas (no third way · check three things · a dated
  form change) · this journal. Source: the kit's `new-vault` · `zone-template`
  · `operation-template` · `meta-status-template` and its check and
  version-acceptance operations, folded back into the base.
- **2026-07-30** — the form of a namespace: thin meta, domains `project/` and
  `office/`.
