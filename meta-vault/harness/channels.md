---
title: Channels — personal correspondence channels (Telegram / WhatsApp): connection template
type: registry
status: active
sensitivity: normal
scope: all
axis: cross
updated: 2026-10-10
tags: [channels, telegram, whatsapp, harness, access, registry]
related:
  - ../harness
  - ../secrets-map
  - ../preferences
---

# Channels — personal correspondence channels

A template for connecting the owner's correspondence (Telegram / WhatsApp) to
the agent. Correspondence = **primary source and private root**: read by the
task, not copied outside. The main rule of the layer — **reading and writing
are separated by construction**, not by a promise in a prompt.

## Registry (read)

Filled in at connection; a channel does not exist for the agent until it is
in this table.

| Channel | Reading mechanism | Mode | Data / secrets | Status |
|---|---|---|---|---|
| **Telegram** (personal dialogs) | reader script on MTProto (Telethon), read-only by construction: the file has no send/edit/delete methods | read | api keys + session — outside git, a line in [[../secrets-map\|secrets-map]] | not connected |
| **WhatsApp** | the local WhatsApp Desktop DB, sqlite strictly `mode=ro` | read | path to the app container's `ChatStorage.sqlite` | not connected |

Connection rules:

- **Telegram:** your own application at my.telegram.org (the owner's
  api_id/api_hash), login is a human step (the code comes to the owner). The
  session file = a key to the correspondence: stored outside git, never sent.
- **WhatsApp:** the DB is live (it updates while the app runs) → open it
  **only read-only** (`mode=ro` or a temporary copy); do not interfere with
  the app; never copy the DB into tracked/synced places.
- **The executor is a CLI script** in the namespace's code folder:
  `executor: <path to your reader CLI>` — fill it in at connection. CLI-first
  = independence from the harness: any tool calls it as a command. The
  script — a line in `inventory/executors.md`.

## Access model

| Who | Actions |
|---|---|
| The top level (the owner + his agent) | read by the task; send — only when the ladder below is open |
| Domains and their agents | do not read or write personal correspondence |

A channel that belongs to a **domain** (a business line where the
interlocutors are the business's clients, not the owner's people) is not part
of this registry: it lives inside its domain with **its own** keys and
session — the two circuits do not see each other physically, not by policy.

## Rules

- **Channels are read-only.** No agent sends or posts anything until the owner
  has opened a rung of the write ladder (below) with an explicit word.
- Extracted artifacts: a task from a message — a line in the executing
  level's `planning/backlog.md`; a message that carries knowledge — a file in
  `inbox/` for ingest; conversational requests are answered in the chat,
  without records.
- Regular readers (a digest by cron) are automations: their own line in
  `inventory/automations.md` + their own spec.
- Do not make dumps outside; reading — in place.

## Writing (send) — a ladder, closed by default

An outgoing message is an **irreversible external action on behalf of the
owner**, the strictest gate of the namespace. Rungs; each = an explicit word
of the owner:

- Rung 0 — **draft-only**: the agent writes a draft, the owner sends it by
  hand. No sending mechanism is needed at all. **The starting and recommended
  one.**
- Rung 1 — **per-message approval**: the exact text + the recipient in the
  chat → the owner's "yes" to this text → sending.
- Rung 2+ — **scoped auto-send**: an allowlist of recipients × classes of
  messages × limits; each widening of the scope is a separate word.

Enforcement is **code, not a prompt**: a gate script with an allowlist file,
limits and a journal of outgoing (the journal entry **before** sending — the
trace survives a failure); on top — the harness's permission prompt on the
command; the text in the spec is the third line of defence. Kill-switch:
remove the enabled flag of the channel; for Telegram — revoke the write
session in the device settings.
