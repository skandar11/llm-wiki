---
title: engine description form
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-22
related:
  - ../operations/add-engine
  - operation-form
  - tool-form
---

# Engine description form

The description of the `engine/` code lives in the vault as the file
`engine.md` (`meta-vault/engine.md` for the shared engine,
`<domain>-vault/engine.md` for a domain's engine). The agent reads it before
calling a script; a person reads it to know what is there and what it stands
on. It is created by the [[../operations/add-engine|operation]].

## Template

~~~
---
title: engine — <what it does in one line>
type: reference
status: active
updated: <YYYY-MM-DD>
---

# engine — <what it does>

Description of the code in `<path>/engine/`. The code is there, the knowledge
is here.

## What is in it

| File | What it does | Which operation calls it | macOS | Windows |
|---|---|---|---|---|
| `<script>` | <in one line> | [[operations/<operation>\|<operation>]] | yes | no — <why> |

## What the machine needs

- Python <version>, dependencies — `engine/requirements.txt` / `pyproject.toml`.
- System programs: <ffmpeg, a font, a browser> — installed by `bin/setup`
  through `engine/setup-extra.sh` / `.ps1`.
- Install from scratch: `sh bin/setup` · Windows:
  `powershell -ExecutionPolicy Bypass -File bin\setup.ps1`.

## Data outside git

<cache, models, exports: where they live, how to get them again>

## Keys

<names of keys from secrets-map.md, or "none needed">

## State of the code

<what works and was checked live (date) · what is broken · debt>
~~~

## Rules

- **A line for every file that anyone calls.** A script with no line here and
  no line in `inventory/executors.md` does not exist.
- **Platform — as a column, not a guess.** "Not checked on Windows" is an
  honest answer; "works everywhere" without a run is not.
- **State — with the date of a live run.** Code that was run a month ago on
  an old site may no longer work: the date shows it.
