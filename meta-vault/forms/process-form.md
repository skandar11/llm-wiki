---
title: process form
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
related:
  - operation-form
---

# Process form

A process is a chain of operations to a business outcome: "list a product on
the platforms", "enrol a new student". It stands **above** the operations.
`<domain>-vault/processes/` (a process across domains —
`meta-vault/processes/`); the folder appears with the first one.

A process file is thin: links, gates, short connectors. The steps live in the
operations.

## Example

~~~
---
title: list a product
type: process
outcome: the product is on sale on all platforms
---

# Process — list a product

1. [[create-product-card]]
2. ⏸ owner: approved the card
3. [[publish-to-marketplace]] — to each platform
4. [[check-listing]]
~~~

## Rules

- **The process knows its operations; an operation does not list its
  processes** — backlinks show the reverse link.
- **The outcome is required** — "what this ends with". Without an outcome it
  is just a list.
- **A chain starts with two operations.**
- Between operations — only `⏸ owner` gates and short connectors. If you want
  to write steps — they belong in an operation.
