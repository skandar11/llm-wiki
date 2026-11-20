---
title: operations — registry of the top's operations
type: registry
status: active
sensitivity: normal
scope: all
axis: vault
updated: 2026-11-09
related:
  - HOME
  - vault-template
---

# Operations of the top

The agent acts **by an operation, not from memory**. The form of an operation
is [[vault-template]] §Operations. There is no operation until there is a line
here.

| Operation | Trigger | Kind | Status |
|---|---|---|---|
| [[operations/ingest\|ingest]] | a new source: the owner's word, a file in `inbox/`, a transcript, a client's material; «record this», «take this in»; session close | write | possible |
| [[operations/query\|query]] | any question to the base: «what do we know about …», «what did we decide …», «compare …»; the start of a session | read | possible |
| [[operations/lint\|lint]] | «check the base», «lint»; the end of a batch ingest; the level's automation; the log silent for 14 days | read + write | possible |
| [[operations/triage-inbox\|triage the inbox]] | «triage the inbox», «what has been dropped in» — step 3 of ingest | write | possible |
| [[operations/close-session\|close the session]] | end of a session where files changed | write | possible |
| [[operations/how-are-things\|how are things]] | «how are things», «what's on fire» — a query with a fixed question | read | possible |
| [[operations/build-namespace\|build the namespace]] | «build the namespace», first launch | write | possible |
| [[operations/new-domain\|new domain]] | «add a domain for …» | write | possible |
| [[operations/add-engine\|add an engine]] | «I need a script / so that the agent itself …» | write | possible |
| [[operations/check-links-and-names\|check the base]] | «check the base», before handover — step 0 of lint (structure) | read | live |
| [[operations/accept-new-version\|accept a new version]] | «update the method» | write | possible |

`possible` → `live` — only after a live run.

**The cycle of knowledge** — [[vault-template]] §The cycle of knowledge: every source
enters through **ingest**, every answer comes from the pages through **query**, the
base is kept healthy by **lint**. `log.md` beside this file is the chronology of all
three; `HOME.md` is the map and the catalogue they keep current.
