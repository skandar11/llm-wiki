---
title: new domain
type: operation
trigger: phrase
executor: agent
status: possible
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - build-namespace
  - ../vault-template
  - ../forms/domain-door-form
---

# New domain

**When:** "create a domain for <business>", "I have a new line of work", step 2
of [[build-namespace|the build]].

**First check that this is a domain.** A domain is an owner's process with its
own questions and its own hands. A topic, a product or a client is not a domain
(a card or a records folder inside an existing one). In doubt → ⏸ owner.

## Steps

`<slug>` — English kebab-case; `<NAME>` — the owner's name in the questions
files.

1. **The door** `<slug>/CLAUDE.md` — per [[../forms/domain-door-form|the door
   form]]; "Answers" — the owner's questions in their own words.
2. **The vault spine** `<slug>/<slug>-vault/` — modelled on the spine of a
   neighbouring domain (`project/` or the first one built), the content its
   own:
   - `HOME.md` — sections: spine · records folders · knowledge;
   - `status.md` — Blockers · Works · Structure (an entry "born <date>");
   - `principles.md` — "follows the base + these deltas";
   - `questions-<NAME>.md` · `operations.md` · `secrets-map.md`;
   - `planning.md` (describes `../planning/`) · `docs.md` (describes `../docs/`
     and `../inbox/`) · `tasks.md` (the cycle form) · `decisions.md`.
3. **Records** `<slug>/planning/backlog.md` (one line per item; closed lines
   → `backlog-closed.md`, born with the first).
4. **The business's records folders** — per [[../forms/zone-form|the zone
   form]], with a first object.
5. **Operations** — at least one read and one write
   ([[../forms/operation-form|the form]]).
6. **Upward:** a line in the table of levels, "Root layout" and "Navigation" of
   `../../CLAUDE.md`; a section in `HOME.md` §Domains; a line in `owner.md`.
7. `python3 bin/check` — clean. Checkpoint commit.

**Important.** The names `HOME`, `status`, `principles` repeat across domains —
link to them **by path** (`[[../../meta-vault/principles|principles]]`), not
the bare name; `bin/check` catches the bare one.
