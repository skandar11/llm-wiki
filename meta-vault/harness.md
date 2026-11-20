---
title: harness — the harness zone and description of the inventory folder
type: reference
status: active
sensitivity: normal
scope: all
axis: cross
updated: 2026-10-10
tags: [harness, inventory, executors, automations, channels]
related:
  - HOME
  - glossary
  - harness/channels
  - harness/automations/session-close
---

# harness — the agent's hands

Knowledge of the harness layer (specs, laws) is here and in `harness/`; the
registries of what is actually installed are in the records folder
`../inventory/`. The term "harness" — [[glossary]]: the runtime client that
executes the agent; replaceable, data must outlive it.

## What is where

| Path | What it holds |
|---|---|
| `../inventory/executors.md` | all hands of the agent: skills, scripts, sub-agents, MCP, channels — one per line |
| `../inventory/automations.md` | registry of automations (hooks / cron) |
| `harness/automations/<name>.md` | automation spec: goal · reads · writes · never · step |
| [[harness/channels]] | law of correspondence channels: reading and writing are separated |

## Laws of the layer

- **One agent, the rest are executors.** The agent holds judgment; an executor
  does a step and carries no judgment. An executor does not exist until it is
  in `executors.md`.
- **Three kinds of things:** knowledge (markdown) — here; executors (scripts,
  gates) — in a code folder inside the namespace, in git; configs — the
  harness's disposable cache, recreated from specs.
- **Registry = law:** a config in the cache without a line in `../inventory/`
  is a bug.
- **Reviewability:** every step of escalation (reminder → gate →
  auto-action) is an explicit word of the owner.
- **Enforcement is code, not a prompt:** a rule held only by text in an
  instruction does not hold. A real gate is a script/hook; text is defense in
  depth.
- **Machine files are in English** (configs, scripts, names); verbatim quotes
  of the owner stay in the original language.

## Coupling to the harness

Specs and registries are harness-independent markdown. Implementations (hooks,
scripts) are rebuilt **from the specs of this zone** when the tool changes;
the data does not change.
