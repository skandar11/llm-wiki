---
title: session-close — session closing protocol
type: spec
status: active
sensitivity: normal
scope: all
updated: 2026-10-10
tags: [session-close, discipline, ritual, hooks, harness]
related:
  - ../../harness
  - ../../operations/close-session
  - ../../vault-template
---

# session-close — session closing protocol

The chronic disease of any live base: the session ended — the level's records
were not updated. `status.md` is dead for weeks, the map does not know about
new files, tails did not reach the backlog. The founding rule: **a record
without a map update = lost work** — a file that nothing points to does not
exist for the next session.

## The ritual (core; works by hand)

At the end of a session, **if files were changed in it**, the agent closes
the records of the level where the work went:

1. **The level's status.md** — hot state: what is done, what is in progress,
   blockers are visible right here (contract —
   [[../../vault-template|vault-template]] §status.md contract). At the top
   level there is no `status.md` — there `planning/plan.md` is brought to
   the present (touched only when the session changed what it holds).
2. **The map (HOME.md)** — if objects appeared, moved or died: the map must
   know about them.
3. **Backlog** (the level's `planning/backlog.md`) — new tails in one line;
   closed ones leave for `backlog-closed.md`; a blocker that gates the top —
   a line in `planning/plan.md` §Caution.
4. **Inbox** — what was thrown in during the session is sorted out or
   explicitly left.
5. **A checkpoint commit** in the touched repositories (push — only on the
   word).
6. **Tell the owner what remains unclosed** — in one line, without
   embellishment.

"Nothing to close" is a legal answer, but an **explicit** one: the agent says
it in one line, rather than staying silent.

The operation — [[../../operations/close-session|close the session]]; this
file is the spec and an optional hook.

## The law of automation

Do not automate until the ritual works by hand. The hook below is an amplifier
of discipline, not its replacement: it reminds, the agent closes.

## Appendix: automation by hooks (Claude Code) — off by default

A line in `inventory/automations.md` + the owner's word — then it is turned
on.

Mechanics of the "snapshot variant": the harness itself reminds the agent at
the end of the session — but only if the file tree really changed **in this
session**.

- **SessionStart** — takes the hash of `git status --porcelain` of the working
  tree; does not overwrite an existing snapshot of the same session
  (resilience to resume/compact).
- **Stop** — compares the current hash with the snapshot; if the tree
  changed — exits once with code 2: the agent gets the reminder and runs the
  ritual.
- **Once per session** — a `reminded` stamp on the session_id; after that
  stops pass silently. `stop_hook_active` → skip (protection from looping).

Boundaries: a non-git cwd → skip; a session older than the hook (no snapshot)
→ skip — the old dirt of the tree must not nag; automations set
`NAMESPACE_AUTOMATION=1` → the hook is silent; the hook writes **only**
stamps in `~/.local/state/session-close/` (auto-cleanup older than 7 days),
does not edit files, does not touch git. Kill-switch: remove the hooks block
from `~/.claude/settings.json` and delete the script.

The block in `~/.claude/settings.json`:

```json
{
  "hooks": {
    "SessionStart": [{ "hooks": [{ "type": "command",
      "command": "~/bin/session-close-reminder start" }] }],
    "Stop": [{ "hooks": [{ "type": "command",
      "command": "~/bin/session-close-reminder stop" }] }]
  }
}
```

The script `~/bin/session-close-reminder` (the base does not ship it: the
owner creates the file from the text below in the `bin` folder of his home
directory and makes it executable):

```zsh
#!/bin/zsh
# session-close-reminder — executor; source of truth:
# meta-vault/harness/automations/session-close.md
set -u
mode="${1:-}"
[ "${NAMESPACE_AUTOMATION:-0}" = "1" ] && exit 0

input=$(cat 2>/dev/null || true)
parsed=$(printf '%s' "$input" | python3 -c '
import json,sys
try: d=json.load(sys.stdin)
except Exception: d={}
print(d.get("session_id",""))
print(d.get("cwd",""))
print("1" if d.get("stop_hook_active") else "0")
' 2>/dev/null)
sid=$(printf '%s\n' "$parsed" | sed -n 1p)
cwd=$(printf '%s\n' "$parsed" | sed -n 2p)
stop_active=$(printf '%s\n' "$parsed" | sed -n 3p)

STATE="$HOME/.local/state/session-close"; mkdir -p "$STATE"
find "$STATE" -type f -mtime +7 -delete 2>/dev/null
[ -z "$sid" ] && exit 0
[ -n "$cwd" ] || cwd="$PWD"
git -C "$cwd" rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0
# macOS: md5; Linux: replace with md5sum
hash=$(git -C "$cwd" status --porcelain 2>/dev/null | md5)

case "$mode" in
  start)
    # do not overwrite the snapshot (resume/compact send SessionStart again)
    [ -f "$STATE/$sid.snap" ] || printf '%s' "$hash" > "$STATE/$sid.snap"
    ;;
  stop)
    [ "$stop_active" = "1" ] && exit 0
    [ -f "$STATE/$sid.reminded" ] && exit 0
    [ -f "$STATE/$sid.snap" ] || exit 0   # session older than the hook: do not nag
    snap=$(cat "$STATE/$sid.snap")
    if [ "$hash" != "$snap" ]; then
      : > "$STATE/$sid.reminded"
      cat >&2 <<'MSG'
session-close: the working tree changed in this session. Before closing, run
the level's closing ritual from its local CLAUDE.md (update status / map /
backlog); if there is nothing to close, tell the owner so explicitly in one
line. The reminder is one-time (spec: meta-vault/harness/automations/session-close.md).
MSG
      exit 2
    fi
    ;;
esac
exit 0
```

## Tightening ladder

The reminder is the first rung. A gate instead of a reminder (the stop does
not pass until the records are closed) or own texts per level — only as a
separate conscious step, when the reminder stops being enough.
