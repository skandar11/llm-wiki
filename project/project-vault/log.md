---
title: log — the chronology of this vault
type: registry
status: active
sensitivity: normal
scope: all
updated: 2026-11-09
---

# Log

Append-only. One entry per move, newest at the bottom:
`## [YYYY-MM-DD] <operation> | <title>` and 1–3 lines (the source → the pages
touched; the question → the page filed; the lint counts). Operations: ingest ·
query · lint · build · version · decision. Read the tail: `grep "^## \[" log.md | tail -5`.
History lives here and in git; pages say how it is now.

## [YYYY-MM-DD] build | <configure: the day this base was built>
