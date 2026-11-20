---
title: accept a new template version
type: operation
trigger: phrase
executor: agent
status: possible
sensitivity: normal
scope: all
updated: 2026-11-06
related:
  - ../structure
  - ../vault-template
  - check-links-and-names
---

# Accept a new template version

**When:** "update the method", "a new template version is out", "pull the
template".

**What changes.** Only the **method files** — the list is in
`../structure.md` §Method files. Everything else belongs to the owner (their
domains, decisions, preferences, owner) and is not touched: a new version
changes the method, not the files already written. Bringing the files in line
with the new method is a separate step, on the owner's word.

## Steps

1. **Where from.** The remote `template` (after the build, the template's
   `origin` is renamed to this). If it is missing — three paths:
   - **there is a network and the owner agrees** — ⏸ owner: `git remote add
     template https://github.com/skandar11/llm-wiki.git`, then step 2;
   - **the new template arrived as a folder** (USB stick, archive, no network)
     — read the journal and take the method files from it, the steps are the
     same; if the base has no git, first `git init` and a "before accepting"
     commit;
   - **the base has no remote `template` and nobody will add one** (this is
     the case for bases built by `bin/new` or sent as an archive: `origin` is
     the base's own repository, the template is not among the remotes) — see
     §"A base without a remote `template`" below.
2. `git fetch template`. In `template/main:meta-vault/vault-template.md`
   §Form journal read **only the lines newer** than the version in
   `../structure.md` — this is the only place that says what changed in
   substance. (With a folder or without a remote, the same reading, but from
   the template's folder.)
3. ⏸ owner: retell the changes and ask whether we accept them.
4. Record what we are leaving: the old version — as a line in
   `../structure.md` §Build journal.
5. Replace the method files: `git checkout template/main -- <paths from the
   list>`. Touch nothing outside the list.
6. **Check every changed rule against the base — by opening the files.** For
   each one: the base already does it that way / the base does it differently.
   If differently → two legitimate outcomes: bring it in line (on the owner's
   word) **or** write a line in `../structure.md` §Divergences from the
   template with the reason. **There is no third** — a silent divergence breeds
   two editions of one rule.
7. The new version goes into `../structure.md`. Run
   [[check-links-and-names|the check]]: forms may have been renamed. Commit.

**Important.** A divergence from the template is not a defect in itself — a
living base is usually right in its own case. The defect is an unrecorded
divergence.

## A base without a remote `template`

Whoever keeps the template holds its folder and a copy of the base next to it;
the base itself does not pull the template over the network. Then the version
is accepted by **the template's keeper**, and the owner receives it with an
ordinary `git pull`:

1. The template's keeper opens the copy of the base on their side and goes
   through steps 2–7 above, taking the method files from the current
   template's folder (`structure.md` §Method files — the same list), not from
   `template/main`. The retelling to the owner (step 3) goes out as text; the
   decision is theirs.
2. A commit in the copy of the base: "accepted template version <date>". First
   a "before accepting" commit, if the tree holds someone else's edits.
3. Send the commit to the base's remote (`git push`) — **only on the owner's
   word** (for us, Skandar's): without their word nothing leaves the machine.
   With no network or no access to the remote — `git bundle` instead of push.
4. The owner runs `git pull` on their machine (or receives a `git bundle`
   archive, if they have no network to the base). The method edits arrive in
   their tree together with the commit; step 5 does not touch their files.
5. The base records the acceptance itself, in `../structure.md` §Build journal:
   one line — the date, the version we left, the version we came to, what from
   step 6 became "bring in line" and what became "divergence". The version goes
   in §Version.

There is no need to update a client's base without agreement with them: steps
1–2 are done by the template's keeper at the owner's request or on a planned
round of the bases.
