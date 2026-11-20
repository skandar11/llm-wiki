---
title: operations — registry of the office's operations
type: registry
status: active
sensitivity: private
scope: work
updated: 2026-10-10
related:
  - HOME
---

# The office's operations

Form — [[../../meta-vault/vault-template|vault-template]] §Operations.

| Operation | Trigger | Kind | Status |
|---|---|---|---|
| record a receipt | «money came», «record the payment» | write → `../ledger/<year>.md` | possible |
| sort the papers | «sort the papers», a new file in `../inbox/` | write → `../docs/` + the bin's `registry.md` | possible |
| nearest deadline | «what about taxes», «when to file» | read ← [[tax-calendar]] + [[status]] | possible |

_(operations as lines; when there are more than three steps — a file of its
own in `operations/`)_
