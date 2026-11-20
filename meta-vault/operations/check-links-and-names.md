---
title: check the base
type: operation
trigger: phrase
executor: code → bin/check
status: live
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - ../structure
  - build-namespace
---

# Check the base

**When:** "check the base", "is everything in place", "did anything break?" —
and **always** before a handover, after any change of layout, and after
accepting a new template version.

**Why a run and not eyes.** A broken link is invisible: the file opens, the
text reads, but the connection is dead. A number is not written without a run.

## Steps

1. `python3 bin/check` from anywhere in the namespace. It counts: broken links
   · non-unique names without a path · links to folders · an unescaped pipe in
   tables · anything resembling a secret in the git index · secrets under git ·
   remaining `<configure>`. Code in fenced blocks and in `backticks` is not
   counted — the forms show samples.
2. Numbers with a date go in `meta-vault/structure.md` §Health. A zero without
   a date is not a record.
3. Something broken found → fix it **separately**: the run only counts. A link
   to a non-unique name — by path; a name collision — by renaming the data
   file, not the description.

**Edge cases:**

- A link to something not yet created, on purpose → it stays, but is listed in
  `structure.md` by name; "0 broken" then cannot be written.
- The base is not in git → secrets in the index are not checked, `bin/check`
  will say so; there is no guarantee that nothing leaked.

## Part of lint

This run is **step 0 of [[lint]]** — the structure. Content (contradictions, stale
pages, orphans, missing pages and links) is checked by the agent in the steps that
follow; the numbers of this run land dated in `structure.md` §Health.
