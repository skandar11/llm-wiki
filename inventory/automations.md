---
title: Automations — registry of the namespace's automations (hooks / cron)
type: registry
status: active
sensitivity: normal
scope: all
axis: cross
updated: 2026-10-10
tags: [automations, harness, hooks, cron, registry, control]
related:
  - ../meta-vault/harness
  - executors
---

# Automations — the reviewable meta level of hooks and cron

A condition to always keep for the owner: **this meta level must be readable
by him** — which is why the registry is in the vault, not a config buried in
the harness. Principles of the layer (spec in the vault / config in the cache
· registry = law): `meta-vault/harness.md`.

**This file is only the registry.** The full spec of each automation (goal ·
reads · writes · never · escalation ladder) is a file of its own,
`meta-vault/harness/automations/<name>.md`.

## Registry

| Automation | Trigger | Reads | Writes | Config (cache) | Kill-switch | Status |
|---|---|---|---|---|---|---|
| **[[../meta-vault/harness/automations/session-close\|session-close]]** | hooks: SessionStart (snapshot) + Stop (reminder) | `git status` of the session's tree | only state stamps → `~/.local/state/session-close/` | `~/.claude/settings.json` §hooks → script (see the spec) | remove the hooks block + rm the script | off — the owner turns it on with a word |

## Adding an automation

One table line + a spec file `meta-vault/harness/automations/<name>.md` (goal
· reads · writes · never · ladder step). Without a line here the automation
does not exist; a config found in the cache without a line is a bug.

## Escalation ladder

Every automation starts at the weakest step (a reminder / a draft report) and
is strengthened only by the owner's explicit word, step by step: reminder →
gate → auto-action with a bounded scope. There are no automations in the
namespace that silently do the irreversible.
