---
title: add an engine
type: operation
trigger: phrase · step 0 of the build (the owner needs code)
executor: agent
status: possible
sensitivity: normal
scope: all
updated: 2026-10-22
related:
  - build-namespace
  - ../forms/engine-form
  - ../forms/handover-door-form
---

# Add an engine

**An engine** is the code the agent acts with: scripts, importers, report
building, portal search, editing, recording and transcription. The knowledge
about the engine lives in the vault, the code itself in `engine/` next to it.

**When:** "I need a script / automation / for the agent to assemble … on its
own", step 0 of [[build-namespace|the build]] showed manual work that code
should do, not a conversation.

**First check that this is an engine.** If the agent copes with an operation
on its own, no code is needed. Code is needed when a step repeats identically,
there is a lot of data, or an external program is required (ffmpeg, a browser,
PDF). In doubt → ⏸ owner.

## Steps

1. **Where it lives.** Code called by the operations of one domain —
   `<domain>/engine/`; by the operations of two or more domains — `engine/` at
   the root. The description follows [[../forms/engine-form|the form]]:
   `<domain>-vault/engine.md` or `meta-vault/engine.md`.
2. **Dependencies in one file:** `engine/requirements.txt` or
   `engine/pyproject.toml` (Python). Another language — a line in the
   description and a step in `engine/setup-extra.sh` /
   `engine/setup-extra.ps1`.
3. **System programs** (ffmpeg, fonts, a browser) — in
   `engine/setup-extra.sh` (macOS: `brew install …`) and
   `engine/setup-extra.ps1` (Windows: `winget install … --scope user`).
   `bin/setup` and `bin/setup.ps1` call them themselves.
4. **Platforms — honestly.** For each executor: works on macOS · Windows ·
   Linux. Does not work on the owner's machine — say so in the description and
   in the door ("editing is Mac-only for now"). Paths — only relative from the
   root or through `os.path.join` / `pathlib`; temporary files — `tempfile`,
   not `/tmp`. File encoding — `utf-8`, explicitly.
5. **The engine's data and models** (cache, weights, exports) — outside git: a
   line in `.gitignore`, and in the description — where they live and how to
   get them again.
6. **Keys** — only `.env` / `secrets/`, the key names as a line in
   `secrets-map.md`. In `.mcp.json` — only `${KEY_NAME}`, not the value.
7. **Executors** — a line per script in `../../inventory/executors.md`; an
   operation that calls it names it in the `executor:` field.
8. **Installation — with the owner's consent:** `bin/setup` installs missing
   programs (Python, ffmpeg) on their machine — say what will be installed and
   wait for the word.
9. **Test on a clean machine:** `sh bin/setup` (macOS) /
   `powershell -ExecutionPolicy Bypass -File bin\setup.ps1` (Windows) from
   scratch, then one live operation. Not run on the owner's platform — the
   operation's status is `possible`, and that is a line in "What exists and
   what does not".
10. The door: in "First run" — "no `.venv` → `bin/setup`"; in "What exists and
   what does not" — the platforms. `python3 bin/check` — clean. Checkpoint
   commit.

**Not here:** RAG and search over the base are not an engine by default: the
agent reads the base directly, and an index is added when questions go
unanswered without it.
