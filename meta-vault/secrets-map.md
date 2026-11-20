---
title: Secrets map — where access credentials live (without values) + the secrets/ contract
updated: 2026-10-10
type: reference
status: active
sensitivity: normal
scope: all
tags: [secrets, security, access]
---

# Secrets map

Pointers, **without values**. Tracked files never hold the secrets
themselves — only a map of *where* they live.

## Contract of `../secrets/`

A folder at the root of the namespace, **entirely outside git**
(`.gitignore`). Only keys, tokens, passwords — documents and personal data are
not secrets, they live in the domains' `docs/`. Format — plain markdown; such
storage presumes a machine under the owner's sole control, otherwise — a
password manager or encryption.

1. **NEVER SYNC** — do not put it in iCloud/Dropbox/any sync.
2. **NEVER COMMIT** — do not `git add -f`; a global excludesfile is
   recommended (`~/.config/git/ignore`: `secrets/`, `*.env`, `*.key`, `id_*`).
3. **NEVER INDEX** — the RAG/indexer excludes `secrets/`.

## Global level — `../secrets/`

| File | What | Consumers |
|---|---|---|
| _(empty — `tokens.md`, `passwords.md` appear as needed)_ | | |

## Project level

A project's credentials are in its `.env`, never in tracked files. A line
here: project · path to `.env` · which keys (names, not values). Tool configs
(`.mcp.json` etc.) take a key only by reference `${NAME}` from the
environment, never by value.

_(empty)_
