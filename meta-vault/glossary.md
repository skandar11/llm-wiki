---
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-11-10
tags: [glossary, terminology, vault, axes, harness]
axis: cross
---

# Glossary — do not mix the two axes

One word = one concept. Both axes are historically easy to call
"levels/layers"; this file is the single source of truth that keeps them
apart.

## Two axes (+ auxiliary vocabularies)

- **Vault axis (vertical)** — where knowledge lives + ownership (the
  namespace). Term: **level**.
- **Agentic axis (horizontal)** — how work flows through phases of
  responsibility. Terms: **stream / flow / meta-layer / orchestrator**.

Beside the axes there are three more vocabularies; they too MUST NOT reuse
"level/layer":

- **zone** — tiers of knowledge curation (canon / precedent / journal /
  lessons).
- **engine** — the code the agent acts with (scripts, importers, reports; a
  RAG substrate is a special case).
- **harness** — the runtime client that executes agents (Claude Code / Codex /
  chat client / SDK): loads doors by cwd, provides tools, skills, permissions,
  memory. Replaceable; data must outlive it.

In total, five non-overlapping vocabularies. "layer" is reserved only for
**meta-layer**.

## Terms

| Term | Axis | Definition | Do NOT call it |
|---|---|---|---|
| **level** | vault | A tier of the namespace hierarchy: the top level on top, domains below. Answers *where knowledge lives and who owns it*. | layer, stream, stage |
| **vault** | vault | The curated wiki folder of one domain (`<domain>-vault`). A container, one per domain. By genre it is an LLM-**wiki** (manual curation, navigation), not a RAG corpus. **English word only — do not transliterate or decline it** (see RU aliases). | engine, corpus, level, ~~волт~~/~~вольт~~ |
| **meta-vault** | vault | The single cross-domain top-level vault (`meta-vault/`): its content is *about the namespace itself* — tech profiles of the domains, links down to all domains. "meta" in the exact reflexive sense (a plane above all domains), twin of **meta-layer** on the vault axis. | super-vault, level, "root" (these words name only the hierarchy, not the *about-the-whole* function) |
| **projection** | vault | A cross-domain **output**: draws from many levels, does not own the source, lives at the top level with **its own door**, writes **outward** to a surface (for example `public` → sites, presentations). The outer element of the vault axis — *level* looks inward (source), *projection* outward (publication). **No `-vault/`** (it owns no curated knowledge): door + map + specs + output. | level (source), meta-vault (about-the-whole, *inward*), surface (a channel, not a projection), vault (a projection has none) |
| **stream** | agentic | A structural lane of responsibility (design, build, deploy, QA…). Permanent, parallelizable, may split/merge/be optional. Replaces "department". Answers *where in the pipeline*. | level, department, layer |
| **flow** | agentic | The trajectory of **one** work item (one feature) through streams. Temporary, per unit of work. One stream serves many flows. Answers *how a unit moves*. | stream (it is not a lane) |
| **meta-layer** | agentic | A supervisory layer **above** streams. Improves *the workflow itself* (context slicing, parallelism, retrieval requirements) over the distance of many runs — not a product. The only legal use of "layer". | orchestrator |
| **orchestrator** | agentic | The conductor who leads streams to the release of **one product**. Lives inside the product axis. Cares about output quality, not the pipeline. | meta-layer |
| **engine** | — | The code the agent acts with: scripts, importers, report builds, external programs; a RAG substrate (vector index, search) is a special case. Lives in `engine/`, versioned in git; knowledge about it is `engine.md` in the vault ([[forms/engine-form\|form]]). Meta formulates the *demand*; the engine *supplies*. | meta-layer, stream |
| **zone** | knowledge | A tier of knowledge-base curation, each with its own semantics: **canon / precedent / journal / lessons**. Maps to folders. Answers *how distilled / how trusted a piece of knowledge is*. | layer, level |
| **harness** | — | The runtime client that executes an agent session: resolves cwd → auto-loads the chain of doors (`CLAUDE.md` up through the parents), provides tools / permissions / skills / auto-memory; carries its own safety gates. Interchangeable and disposable: Claude Code, Codex (door = `AGENTS.md`), chat client, Agent SDK. The harness cache (`~/.claude/` etc.) is **not** truth; data must outlive any harness (LLM independence). The **agent** is one, described by doors (markdown); the harness *executes* it; the **engine** — extracts. Door contract: [[vault-template]]. | agent, engine, model, level |

## Vocabulary of the build (agent, doors, records)

| Term | Definition | Do NOT call it |
|---|---|---|
| **agent** | One for the whole space, with the name the owner gave. Holds judgment, works in all rooms; a folder does not change who it is. | role, folder persona |
| **executor** | Everything that is not the agent: skill, script, sub-agent, MCP, cron. Does a step, carries no judgment. Registry — `inventory/executors.md`. | agent |
| **door** | The file the harness auto-loads from cwd: `CLAUDE.md` / `AGENTS.md`. The manifest of a room. | README |
| **map** | `HOME.md` at the vault root — semantic navigation; read through the door. | door, index README |
| **records folder** | A folder **alongside** the vault, one per kind of records (`planning/`, `people/`, `ledger/`): what has been done and what exists. Description — `<vault>/<name>.md`. | warehouse, vault zone |
| **plan** | The one live page of the base, `planning/plan.md` at the top: what we do now, a line per thing with a pointer to its home. One per base; a domain has a backlog, not a plan. | week, month, priorities, roadmap |
| **backlog** | A level's register of what waits, `planning/backlog.md`: one line per item, `essence — executor → pointer · status`. Closed lines → `backlog-closed.md`. | todo list, journal, task tracker |
| **operation** | An action of a level by a written form (trigger · executor · status · steps). A skill is the atomic executor of a step; the operation knows its skills, not the other way round. | skill, a procedure "from memory" |
| **primary / derived** | Trust in a source: primary — the owner's words; derived — AI derivatives, checked against primary. | — |
| **sink (archive)** | `archive/` + `archive/INDEX.md`: where the dead goes instead of being deleted. | deletion bin |

## `meta-` — a cross-axis prefix (not reserved)

Only the noun **`layer`** is reserved (→ only `meta-layer`), so that tiers and
lanes are never called "layer". The qualifier **`meta-`** is *not* reserved:
it means "the encompassing, about-the-whole element of its axis". One meaning,
applied across axes:

- agentic axis → **meta-layer** (the plane above all streams: improves the
  workflow itself)
- vault axis → **meta-vault** (the vault above all domains: knowledge about
  the namespace itself)

Do not write bare `meta` as a term — always `meta-layer` or `meta-vault`, so
the axis is explicit. `super-vault` (English only) names the hierarchy ("from
above"); **meta-vault** names the function ("about the whole") — and that is
exactly what distinguishes this vault.

## Why these words (geometry)

The shape of the word matches the shape of the thing — and explains why
"layer" is reserved:

- **stream** = a *lane* — one of many vertical tracks. Local, structural.
- **flow** = a *line* — the trajectory of one unit. Single.
- **level** = a *tier* of the vault hierarchy. Local to a domain.
- **meta-layer** = a *plane covering all streams and all flows at once*.
  **Global.**
- **projection** = the *casting* of many domains onto an outer surface — a
  shadow/map of the whole **outside** the vault. (Direction, not coverage:
  *level* looks inward, *projection* — outward.)

"layer" is the only term with the semantics of **coverage, globality** — a
plane over the whole field, not a lane and not a line. This is exactly why it
is reserved for meta and nothing else: meta is the only thing that covers
everything beneath it.

## Anchor phrase

> **Levels** — where knowledge lives (vault). **Stream** — a lane of work
> (structure, *where*). **Flow** — the path of one feature through streams
> (*how it moves*). **Meta-layer** — what improves the pipeline.
> **Orchestrator** — the one who leads streams to the product.

## RU aliases (canonical English on the left)

The owner may write a term in Russian / transliterated; it maps 1:1 to the
English canon:

- `уровень` → **level**
- **vault / meta-vault / super-vault — English only.** Do not transliterate
  or decline: write `vault` as an indeclinable loanword («в vault»,
  «конвенции vault», «по всем vault»). Retired: ~~волт~~ / ~~вольт~~ /
  ~~мета-волт~~ / ~~суперволт~~ (reads as «вольт» = the unit of voltage).
- `вики` → **wiki** (the genre of a vault; not the container)
- `стрим` → **stream**
- `флоу` → **flow**
- `метаслой` / `мета-слой` → **meta-layer**
- `оркестратор` → **orchestrator**
- `движок` → **engine**
- `зона` → **zone**
- `проекция` → **projection**
- `харнесс` → **harness** (declines freely; this is NOT the agent and NOT the
  engine)

⚠️ **DO NOT use «поток» as a term** — in Russian it means *both* stream *and*
flow, i.e. it is ambiguous. Always write the transliteration: `стрим` (stream)
or `флоу` (flow).

## Spelling / traps

- «поток» is ambiguous (= stream *and* flow) — do not use it as a term; write
  `стрим` / `флоу`.
- English `stream` (not "steam" = vapour).
- The noun "layer" is reserved only for **meta-layer**. The prefix "meta-" is
  NOT reserved — it is cross-axis (`meta-layer` agentic, `meta-vault` — vault
  axis). Do not write bare "meta" as a term.
- «вики» (a genre: a manually curated LLM-wiki) ≠ **vault** (a container
  folder) ≠ "corpus"/engine (a RAG substrate).
- Retired: «супер-вики» / «суперволт» as the name of the meta-vault → use
  **meta-vault**.
- Retired transliteration: `волт` / `вольт` / `мета-волт` → always the English
  **vault** / **meta-vault** (indeclinable).
- "Semantic levels" → simply "levels": the word "semantic" distinguishes
  nothing.
