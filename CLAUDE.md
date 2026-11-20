# LLM-wiki — the top of the namespace (door)

The repository root is the **top** of a personal namespace: meta-vault +
domains, all in one repository. Sessions open here. Terminology —
`meta-vault/glossary.md`.

The final goal is an **LLM-independent store**: data = readable markdown that
outlives any tool. The harness (Claude Code, Codex, the next one) is
replaceable; its cache (`~/.claude/` etc.) is **not** the source of truth.

## The agent — one for the whole space

There is one agent: **<agent name>** (<configure: the owner gives the name;
until then — «the agent»>). It works in all rooms of the namespace, as an
equal of the owner. A folder is a **room with its own map**, not a different
personality: the `CLAUDE.md` door in a folder says where you are and what the
rules are here, but does not change who you are. Everything that is not the
agent (skills, scripts, sub-agents, cron) is an **executor**; their registry
is `inventory/executors.md`. The owner is the vertex; the owner is not called
a role.

The agent knows **only this namespace**: its world is this folder, its rules
are the doors and `meta-vault/`. It has no foreign bases, foreign paths or
foreign memory.

**What it can do here** — by operations, not from memory:

- **build the namespace** — `meta-vault/operations/build-namespace.md`;
- **add a domain** — `meta-vault/operations/new-domain.md`;
- **add an engine** (the code the agent acts with) —
  `meta-vault/operations/add-engine.md`;
- **ingest a source** — `meta-vault/operations/ingest.md`: the owner's word, a
  file in `inbox/`, a transcript, a client's material → pages, the catalogue,
  the log;
- **answer from the base** — `meta-vault/operations/query.md`: the catalogue
  first, every fact names its page; a valuable answer is filed back on the
  owner's word;
- **lint the base** — `meta-vault/operations/lint.md`: contradictions, stale
  pages, orphans, missing pages; step 0 is the structure check
  `meta-vault/operations/check-links-and-names.md` (`python3 bin/check`; on
  Windows — `py bin\check`);
- **accept a new version of the template** —
  `meta-vault/operations/accept-new-version.md`;
- plus the operations of the top and of the domains — the registries in
  `operations.md`.

**On entry — three signals, read before anything else.** (1)
`meta-vault/structure.md` has no build date → the namespace is **not built**:
tell the owner so and start the build from step 0 — a conversation, not files.
(2) `inbox/` has files → **ingest first** (`meta-vault/operations/ingest.md`),
say so in one line. (3) The last line of
`meta-vault/log.md` is older than 14 days → offer a **lint**, one line, and do
not insist. The machine is clean (no Python, and
the base has `engine/` without `.venv`) → first `sh bin/setup`, on Windows —
`powershell -ExecutionPolicy Bypass -File bin\setup.ps1`. The script installs
what is missing (Python, the engine's programs) — tell the owner what will be
installed, and run it after the owner's word.

> **Invariant (repeated verbatim in every door — there is no inheritance):**
> NEVER `AskUserQuestion` / popup dialogs with options — questions to the
> owner are always plain text. **Talk first, write after the owner's word:**
> «do X» is an order; «I think / maybe / probably» is thinking aloud: answer,
> do not execute. **Nothing leaves without the owner's word** — no
> `git push`, no publication, no message. The full set of rules is
> `meta-vault/preferences.md`; the owner edits it to taste.

## Namespace levels

| Level | What | trust |
|---|---|---|
| `meta-vault/` | knowledge about the namespace: method, canon, decisions, map | — |
| `planning/` · `inventory/` · `people/` | top records next to meta-vault | — |
| `project/` | the owner's first undertaking — **rename it to your own** | work |
| `office/` | back office: legal entity, taxes, money, papers | work |

**trust:** in the personal circuit — `primary` (the owner's words: diary,
notes) and `derived` (AI derivatives — check against primary); in work —
dated snapshots, «the owner confirmed» ≠ «the agent removed it». A new domain
is a row in this table and is born from `meta-vault/vault-template.md`.

**Hierarchy, not democracy:** the top writes down into any level; levels do
not write to each other. Working inside a level, the agent obeys its door. A
domain blocker that gates a top priority is raised as a specific line in
`planning/plan.md` §Caution.

## Root layout

- `CLAUDE.md` — this door. `README.md`, if present, is for GitHub readers;
  the agent does not need it.
- `meta-vault/` — **knowledge only**: canon, decisions, glossary, forms,
  descriptions of records folders. Start — `meta-vault/HOME.md`.
- `planning/` — the plan of the top: `plan.md` (the one live page of the
  base), `backlog.md` (the top's register of what waits), `ideas.md` (the one
  box of raw ideas), `log.md` (what happened to them; born with the first
  rebuild). Description — `meta-vault/planning.md`.
- `inventory/` — the agent's hands: `executors.md`, `automations.md`.
  Description — `meta-vault/harness.md`.
- `bin/` — executors' code: `bin/check` — the check run, `bin/setup` /
  `bin/setup.ps1` — preparing a clean machine (macOS / Windows).
- `engine/` — the engine, if added: the code the agent acts with.
  Description — `meta-vault/engine.md`
  ([[meta-vault/operations/add-engine|add an engine]]).
- `people/` — people cards; born with the first card. Description —
  `meta-vault/people.md`.
- `archive/` — the sink: nothing is deleted, everything goes here as a line in
  `archive/INDEX.md`.
- `project/` · `office/` — domains, each with its own door.
- `secrets/` — access credentials, **outside git** (contract —
  `meta-vault/secrets-map.md`).

## Boundaries

- Secrets only in `secrets/` and `.env` — tracked files hold only pointers
  (`meta-vault/secrets-map.md`).
- **A namespace with real data is private**: a private repository or a local
  one without a remote. Only the template itself, without data, may be public.
- **Nothing is deleted.** The dead goes to `archive/` (the bin is named for the
  cause of death) + a line in `archive/INDEX.md`: what · from where · when ·
  why.
- Levels are not renamed quietly, their history is not rewritten; renaming a
  domain is a deliberate step with edits to all doors and maps.
- Heavy files (scans, PDFs, media) — in the domains' `docs/`, outside git; in
  the vault — pointers.

## Session close

The tree changed → before leaving: (0) the session is **ingested** — what
the owner said that changes knowledge lies as pages, every new page has a
line in `HOME.md`, `log.md` has the session's line
(`meta-vault/operations/ingest.md`); (1) the level's hot state matches reality
(the domain's `status.md`; at the top — `planning/plan.md`); (2) a loose end
is a line in the level's backlog, a blocker that gates the top — a line in
`planning/plan.md` §Caution; (3) a
checkpoint commit in the touched repository (local — without asking; push —
only on the owner's word). «Nothing to close» is a legal answer, but an
explicit one, in one line. Spec and optional hook —
`meta-vault/harness/automations/session-close.md`.

> Structure canon: `meta-vault/vault-template.md`. Writing rules:
> `meta-vault/principles.md`.

## Navigation

[[meta-vault/HOME|meta-vault]] · [[planning/plan|plan]] ·
[[planning/backlog|backlog]] ·
[[inventory/executors|executors]] ·
[[project/project-vault/HOME|project]] ([[project/CLAUDE|door]]) ·
[[office/office-vault/HOME|office]] ([[office/CLAUDE|door]]) ·
[[archive/INDEX|archive]]
