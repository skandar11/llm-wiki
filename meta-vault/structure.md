---
title: structure — the state of the namespace build
type: status
status: active
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - vault-template
  - operations/check-links-and-names
  - operations/accept-new-version
---

# Structure — the state of the build

The state of the **layout** of the namespace, separate from the state of the
business (the business — in the domains' `status.md` and `../planning/plan.md`).
A snapshot, not a journal.

## Version

- **Template form:** 2026-11-10 (the first line of §Form journal in [[vault-template]]).
- **Built:** <build date — operation [[operations/build-namespace|build the namespace]]>
- **Owner:** <name> · **agent:** <name>

## Health (from the `bin/check` run, dated)

_(no run yet)_

## Divergences from the template

| Template rule | How here | Why |
|---|---|---|

## Asked for, not built

**Verbatim, in the owner's words**, with the date and the outcome (built / not /
decided not to build — why). The most valuable section: it shows what the base
lacked in practice.

_(empty)_

## Lessons for the template

What this build learned that will serve **any** next one: a rule that was
missing, a form that did not fit, a recipe step that had to be worked around.
One line — date · what · where in the template to fix it. The template's keeper
lifts the lessons from here.

_(empty)_

## Method files (shipped from the template on [[operations/accept-new-version|a new version]])

`meta-vault/vault-template.md` · `meta-vault/principles.md` ·
`meta-vault/glossary.md` · `meta-vault/forms/` · `meta-vault/examples/` ·
`meta-vault/harness/` · `meta-vault/operations/build-namespace.md` ·
`new-domain.md` · `add-engine.md` · `check-links-and-names.md` ·
`accept-new-version.md` · `ingest.md` · `query.md` · `lint.md` · `bin/check` ·
`bin/setup` · `bin/setup.ps1` · `.gitattributes`. Everything else is the owner's —
including `log.md` and `sources/`, which are the base's own history.

## Build journal

Newest on top; layout only.

- 2026-11-09 — the template.
