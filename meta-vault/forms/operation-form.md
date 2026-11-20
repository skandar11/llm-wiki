---
title: operation form
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - ../vault-template
  - process-form
  - tool-form
---

# Operation form

An operation is one formalized action: what the agent does when the owner
asks. They live in `<domain>-vault/operations/`, a file per action; a line in
`operations.md` of the same vault. The agent works **by the operation, not by
memory** — so it is written so that it can be executed without guessing.

Two kinds, **both** are needed: **write** (create, correct, mark, accept,
close) and **read** (the answer to a question the owner asks regularly). A
base with only writing is upside down: a person asks more often than they
dictate.

## Example

~~~
---
title: new client
type: operation
trigger: phrase
executor: agent
status: live
---

# New client

**When:** "add a new one: <name>, <phone>, <what is needed>".

**Steps:**
1. Check for a duplicate — search by surname in `../clients/`. A match → ask,
   do not multiply.
2. Create `../clients/<familia-imya>.md` by the form from `clients.md`.
3. A service is named → link it through [[another-operation]].

**Edge cases:** the service is not named → the card exists, we fill it in
later.
~~~

## Header

- **`trigger:`** — `phrase` (the owner says it — the usual case) · `skill`
  (a thin pointer here, holds no truth) · `event` (hook/cron).
- **`executor:`** — `agent` (by steps in words) · `skill → <name>` ·
  `code → <path>` (the code is beside the vault — **there is no code in the
  vault**). Skill and code — as a line in `inventory/executors.md`.
- **`status:`** — `possible` (noticed) · `in-dev` (being built) · `live` —
  **only after a run on a live case**.

## Required parts

- **Title** — as the owner would name the action.
- **"When"** — live phrases of the owner **in his words**; the agent
  recognizes the operation by them. Several formulations — list them all.
- **"Steps"** — a numbered list; each step names the **specific file** that
  changes, not "update the base". Three special kinds of step:
  - an adjacent action → a link to another operation, not a retelling;
  - an external tool → by the note from `tools/` ([[tool-form]]);
  - a human decides → **`⏸ owner:`** what to show — then by his word.
    Everything that goes outside (publishing, sending, uploading into someone
    else's system) passes through such a step without fail.

## Optional

"Edge cases" · a section for a variant that behaves differently · "Not here"
(similar, but a different operation) · "Important" (a rule that is easy to
break).

## Rules

- **One operation — one action.** A chain to a business outcome is a process
  ([[process-form]]): the process knows its operations, not the other way
  round.
- **What the agent does not know — write it directly:** "exactly how much —
  the owner says, do not count it yourself".
- **A step that changes money or a counter ends with recalculating the
  subtotals.**
- **A read operation says where the base lies:** an empty cell is not zero,
  "no mark" is not a debt, an unfilled field is not absence.
- **A new operation → three lines:** `operations.md`, the domain door,
  `HOME.md`. An operation the door does not know about does not exist for the
  agent.

A live sample of the bundle — `../examples/marketplace.md`.
