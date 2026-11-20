---
title: executors — the agent's hands
type: registry
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - ../meta-vault/harness
  - automations
---

# Executors — the agent's hands

There is one agent (`../CLAUDE.md` §Agent). Everything else is executors: they
do a step, they carry no judgment. An executor does not exist until it is
here. The law — `meta-vault/harness.md`.

| Executor | Kind | Where it lives | What it does | Who calls it | Status |
|---|---|---|---|---|---|
| `bin/check` | script | `bin/check` (python3, stdlib) | a run: links, names, tables, secrets in the index; read-only | [[../meta-vault/operations/check-links-and-names\|check the base]] | live |
| `bin/setup` | script | `bin/setup` (sh; macOS, Linux) | a clean machine: git, Python, the engine's `.venv`, `secrets/`, a check run | first launch · [[../meta-vault/operations/add-engine\|add an engine]] | possible |
| `bin/setup.ps1` | script | `bin/setup.ps1` (PowerShell; Windows) | the same on Windows via winget, without administrator rights; warns about long paths | first launch · [[../meta-vault/operations/add-engine\|add an engine]] | possible |

_(a line for each skill, script, subagent, MCP server, channel; kind:
skill · script · subagent · mcp · channel · cron; status: possible · live ·
off)_
