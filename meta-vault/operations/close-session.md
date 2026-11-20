---
title: close the session
type: operation
status: possible
sensitivity: normal
scope: all
updated: 2026-11-09
related:
  - ../harness/automations/session-close
  - ../operations
  - ingest
---

# Close the session

- **trigger:** event — the end of a session in which the tree changed
- **executor:** agent (optionally a reminder hook —
  [[../harness/automations/session-close|session-close]])
- **status:** possible

## Steps

0. **The session is ingested** ([[ingest]]): everything the owner said that
   changes knowledge lies as pages (a decision, a card, a rule), every new page
   has a line in `HOME.md`, and `log.md` has the session's line(s). A session
   whose words live only in chat is not closed.
1. The hot state of the level where the work went matches reality:
   `<domain>-vault/status.md` (+ §Structure, if the build changed); at the top
   — `../../planning/plan.md`, touched only when the session changed what it
   holds.
2. The map (`HOME.md`, the door) knows about every new, moved and dead object —
   "a record without a map update = lost work".
3. Loose ends — a line in the level's `planning/backlog.md`; a blocker that
   gates the top — a specific line in `../../planning/plan.md` §Caution.
4. A checkpoint commit in every touched repository. ⏸ owner — push only on
   their word.
5. To the owner — in one line, what remains unclosed. "Nothing to close" is
   also one line, said explicitly.
