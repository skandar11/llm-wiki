---
title: zone and records folder form
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - ../vault-template
  - operation-form
---

# How to create a zone or a records folder

The largest unit **inside** an existing domain. To create a whole domain —
[[../operations/new-domain|new domain]].

First the seam ([[../vault-template|vault-template]] §The seam):
**knowledge** (how we do, what we know) → a zone inside the vault;
**records** (what we did, what exists) → a folder beside the vault + a
description file in the vault.

## Is it needed

The new thing is a separate folder only if **both** are true:

- **its own unit of storage**, not reducible to a neighbouring one;
- **its own rhythm of growth** — it is replenished at its own pace and for its
  own reason.

If not met — it is a subfolder of an existing one. Example: timesheets grow
monthly, but their unit is the student, so they are a subfolder in
`students/`, not a separate folder.

## Steps (records folder)

1. **`<domain>-vault/<folder>.md` — the description.** Sections: **what is
   where** (a path → what it holds table) · **rules**, including the
   **boundary** (what never happens here and why) · **how it grows** (new
   object / month / year) · **what is not there yet** — an honest list of
   gaps.
2. **The folder `<domain>/<folder>/` beside the vault — with the first
   object.** Inside only records; the registry of rows — `registry.md`; the
   form of files — `form.md`. No rules inside.
3. **A section in `HOME.md`** — what · where · description · operations.
4. **A paragraph in the domain door** — the folder's name, what is inside,
   where the description is.
5. **Operations** — at least one that reads or writes it
   ([[operation-form]]). A folder without operations is a reference, not a
   working one.
6. **It accumulates over time — by years and months right away.** The year is
   as the field itself counts it (calendar, academic, fiscal).

A knowledge zone inside the vault — steps 1, 3, 4 (the description `<zone>.md`
beside the folder `<zone>/`); the folder is born with the first file.

## Check before closing

- [ ] The run of the [[../operations/check-links-and-names|check]] is clean.
- [ ] Not a single link to a folder — folders are written by code.
- [ ] The pipe in links inside tables is escaped: `[[id\|Name]]`.
- [ ] No field lives in two places.

## What not to do

- **Do not create a folder for a single card** — while there are few objects,
  they live in a neighbouring one.
- **Do not invent content.** A stub "what to put here" is honest; invented
  records are not.
- **Do not put rules in a records folder** — they live in the description in
  the vault, otherwise they drift apart.
