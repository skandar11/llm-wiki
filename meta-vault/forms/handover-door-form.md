---
title: handover form — sections of the root door at handover
type: reference
status: active
sensitivity: normal
scope: all
updated: 2026-10-22
related:
  - ../operations/build-namespace
---

# Handover form

The root door `CLAUDE.md` lives from the first day of the build. When the
namespace is handed over to a person who will open it on their own, the door
is completed with these sections. The person opens the repository without us
— the door must withstand that.

## Sections that are added

First the **delivery method** is chosen — "How to start" depends on it:

| Method | When | "How to start" |
|---|---|---|
| **GitHub** (private repository) | the owner will work from several machines or we update the base | clone over SSH, section "Access" below |
| **Owner's machine** | the build goes directly on his computer, in his Claude | the folder is already in place: open the root |
| **Archive / flash drive** | no GitHub, one machine | `git bundle create base.bundle --all` → the owner runs `git clone base.bundle <folder>`; the history travels with it |

~~~
## How to start (verbatim)

1. <by delivery method: `git clone git@github.com:<account>/<repository>.git` ·
   the folder is already in place · `git clone base.bundle <folder>`>
2. A clean machine — prepare it with one command from the root:
   macOS — `sh bin/setup` · Windows —
   `powershell -ExecutionPolicy Bypass -File bin\setup.ps1`.
3. Open the root in Claude — this door leads from there.
4. First request: "<a live question of the owner that the base surely
   answers>".

## Access to the repository — once per device

The repository is private, the machine needs access — an **SSH key**, created
on the machine itself:

    ssh-keygen -t ed25519 -C "<device name>" -f ~/.ssh/id_ed25519

Open `~/.ssh/id_ed25519.pub`, copy the whole line, paste it at
`github.com/settings/keys` → **New SSH key**. Check: `ssh -T git@github.com`
answers with a greeting with the login. The file without `.pub` stays on the
machine forever and is never sent anywhere. Port 22 closed → in
`~/.ssh/config`: `Host github.com` / `HostName ssh.github.com` / `Port 443`.

## Step 0 — secrets

Keys are not stored in git. `secrets/` is created by hand on each machine;
what to put in it — `meta-vault/secrets-map.md`. Values are passed only
outside git.

## Windows  <required if the owner's machine is Windows>

- Put the folder close to the disk root (`C:\<name>\`), not deep inside
  `Documents`: Windows does not create files with a path longer than 260
  characters. `bin/check` warns about paths longer than 200.
- Long paths are enabled by the machine's owner, once, in PowerShell as
  administrator:
  `New-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name LongPathsEnabled -Value 1 -PropertyType DWORD -Force`
- Python is called `py`, not `python3`: `py bin\check`.
- <what of the engine does not work on Windows — honestly>.

## Data accuracy  <required if the data was taken from a third-party source>

A dated snapshot; the source of truth is outside; prices and stock go stale;
updating means taking the snapshot again.

## What there is and what there is not

<honestly: what the base can do now · what it cannot · what is unchecked>
~~~

## Rules

- **Sections drop out by delivery method.** "Access to the repository" — only
  for GitHub; "Windows" — only for a Windows machine; "Data accuracy" — only
  for taken data. A conditional section left in the door with
  `<required if…>` is unfinished work: before handover there are zero of them.
- **Access — by SSH key, not by browser login.** `gh auth login` through a
  browser fails steadily on other people's machines (the code expires, the
  wrong browser, corporate SSO). Do not suggest a deploy key — it is for one
  repository.
- **The private half of the key is never sent.** The owner generates it on his
  own machine; he is given the text of the command, not a key.
- "What there is and what there is not" is required: without it the person
  believes the base can do everything and reads the very first failure as a
  breakage.
- The old source is closed → say so directly here.
- **The door does not lie about delivery.** The repository's visibility, the
  remote or the delivery method changed — the door is fixed in the same
  commit. Otherwise a month later it says "the repository is public" while it
  has long been closed.
- A public repository — only for a template without the owner's data. A base
  with the owner's name, correspondence or export — private or without a
  remote.
