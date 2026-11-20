---
title: tool form
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - operation-form
---

# Tool form

A note on an external thing that operations use: a marketplace cabinet,
someone else's CRM, a bank, an image generator. `<domain>-vault/tools/`, a
file per tool; the folder appears with the first tool.

Separate from the operations because a tool is used by **several**
operations and changes together with the service, not with the owner's
business.

## Example

~~~
---
title: marketplace cabinet
type: tool
---

# Tool — marketplace cabinet

**What it can do:** product cards, prices, stock, moderation statuses.

**How to use it:** <steps, field formats, templates — specifically>.

**Limits and pitfalls:** <what breaks, what the service cannot do, where to
wait>.

**Access:** the owner logs in; key/login — a line in `secrets-map.md`.
~~~

## Rules

- **There are never key values here** — only a pointer in `secrets-map.md`;
  values in `secrets/`, outside git.
- **A human enters the login and payment data.** A captcha and an SMS are
  always an `⏸ owner` step.
- **The service changes — the note is fixed**, operations are not touched. If
  fixing the note breaks an operation's step → the step retold the note
  instead of linking.
- A tool of one operation lives in its steps; it is moved into `tools/` when
  a second user appears.
