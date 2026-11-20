---
title: build the namespace
type: operation
trigger: phrase · event (first run in an unbuilt namespace)
executor: agent
status: possible
sensitivity: normal
scope: all
updated: 2026-10-22
related:
  - new-domain
  - check-links-and-names
  - ../vault-template
  - ../forms/handover-door-form
---

# Build the namespace

The agent's main skill in a fresh clone of the template. The output is **the
owner's namespace**: one repository, always launched from the root, where the
agent answers their questions and makes their changes through operations.

**When:** "build the namespace", "build me an LLM-wiki", "let's set it up", and
also **the first run** if the namespace is not built: `meta-vault/structure.md`
has no build date. Then the agent's first move is to say that the base is not
built and to start from step 0.

> **The main trap — mechanics outrun semantics.** Data is pulled easily, files
> are born fast, and the build slides into migration without ever properly
> talking to the owner. The result is a beautiful, useless folder. Step 0 is
> not shortened.

## Step 0. The conversation — before a single line

There are no records until the conversation has happened. Find out, **in the
owner's words**:

- **Who they are** and what they do; how to address them; what they will call
  the agent.
- **What questions they ask every day** — the future read operations and the
  main readiness test. "Who hasn't paid" matters more than a tidy schema.
- **What they do by hand every day** — the future write operations.
- **Where the data is now** — spreadsheets, a notebook, their head, someone
  else's CRM, a website.
- **What hurts** in the current way of working.
- **Does the old source stay alive or close?** If it closes, the data is
  migrated once, and the door says so plainly: "do not send people to the old
  spreadsheet".
- **Is the data their own or scraped from a third-party source** (a showcase,
  someone else's site)? Scraped → it is derived, and the door says so in a
  "Data accuracy" section.
- **A regulated field?** (medicine, finance, legal services, education) — the
  legal framing of speech, once, in the domain's door.
- **Is code needed** — something that repeats identically and often (exports,
  reports, portal search, editing)? Yes → after the domains,
  [[add-engine|add an engine]].
- **Is there a legal entity or sole proprietorship** — the `office/` domain
  depends on it (step 2).
- **Which machine and how we deliver:** macOS or Windows; GitHub, their
  computer or an archive ([[../forms/handover-door-form|handover form]]).

From the same conversation comes **the cut into domains**: how the owner
themselves groups their affairs. We cut **by the owner's processes**, not by
products or topics: a product passes through all processes, and a cut by it
tears each one across. An object that runs through all domains is a card, not a
folder. The back office (legal entity, taxes, papers) is the `office/` domain,
if the owner has a legal entity.

⏸ owner: retell the cut as one table (domain · answers · does by hand) and wait
for the word. Without the word, step 1 does not begin.

## Step 1. The top

1. `meta-vault/owner.md` — who, how to address, languages, what they do, the
   agent's name. What they did not say is a stub, not an invention.
2. `CLAUDE.md` §The agent — the agent's name in place of `<agent name>`.
3. `meta-vault/preferences.md` — the form of address (informal/formal) and the
   owner's deltas, if they named them.
4. The owner's name in the questions files: `questions-OWNER.md` →
   `questions-<NAME>.md` in capitals (`git mv` in each domain + the link in the
   same domain's `HOME.md`). In the method files `OWNER` stays — it is the
   form's placeholder.

## Step 2. Domains

1. **The first domain — from `project/`:** `git mv project <slug>`,
   `git mv <slug>/project-vault <slug>/<slug>-vault`; replace
   `project-vault` → `<slug>-vault` and `project/` → `<slug>/` **only** in
   the domain's own files and in the maps: `CLAUDE.md`, `meta-vault/HOME.md`,
   `meta-vault/owner.md`, `office/CLAUDE.md` (all occurrences, including
   `[[project/…]]` and `../project/`). In the domain's door remove the
   paragraph "not set up yet — a stub", in its `questions-` the question about
   the name. **Do not touch the method files** (the list is in
   `meta-vault/structure.md`): in them `project/` is the name of the
   template's stub, not of your domain. `<slug>` — English kebab-case.
2. **Each next one** — the operation [[new-domain|new domain]].
3. **`office/`:** needed — configure it per the markers; not needed —
   `git mv office archive/unused-template-office/` + a line in
   `archive/INDEX.md`. Nothing is deleted.
4. **The root door** — a line per domain in the table of levels, in "Root
   layout" and in "Navigation" (the link's caption is the name of the
   business); `meta-vault/HOME.md` §Domains; `meta-vault/owner.md` §What they
   do.
5. In each domain door — "Answers": the owner's questions from step 0
   ([[../forms/domain-door-form|door form]]).

## Step 3. Records and migration

1. Records folders — per [[../forms/zone-form|the form]]: the description in
   the vault, the folder next to it, with a first object. Usually two to four
   per domain; do not split in advance.
2. Data migration:
   - **the source is read in full**, not piece by piece;
   - **sums are checked against the source**, and the base says what matched
     and what did not — in the file where it will be used;
   - **what the source lacks is not invented:** a dash with an explanation + a
     line in `questions-<NAME>.md`;
   - the source's typos are reduced to one spelling, the list of discrepancies
     stays;
   - hundreds of objects of one kind (SKUs, statement rows) — **as a snapshot
     table**, not a file per object; a file per object when there are dozens.
3. Heavy files go to the domain's `docs/` (outside git), pointers in the vault.

## Step 4. Operations — equally for writing and for reading

For each question from step 0 — a read operation; for each manual action — a
write operation ([[../forms/operation-form|the form]]). A read operation says
where the base lies. A new operation is three lines: `operations.md`, the door,
`HOME.md`. Status `possible` until run on a live case.

## Step 5. Privacy and secrets

- Personal data lives in cards **only if the repository is private — and that
  is ensured, not declared.** While there is no private remote, "the repository
  is private" must not be written.
- Tokens, keys, passwords — only in `secrets/` (outside git); pointer lines in
  `meta-vault/secrets-map.md`. Personal data is not secrets; they are
  different things.
- **The template's remote is not a place for the owner's data.** If the folder
  is a clone of the template from GitHub, its `origin` points to the public
  template: `git remote rename origin template` (it stays for
  [[accept-new-version|accepting a new version]]). If the folder came as a copy
  or an archive, there is no remote, and this step is skipped. ⏸ owner: their
  own private remote — on their word and under their account.

## Step 6. Check

1. `python3 bin/check` — zero broken; each remaining `<configure>` is either
   filled in or a line in `questions-<NAME>.md` ("a stub — honestly").
2. Walk through three or four of the owner's questions from step 0 yourself:
   does the base answer? No — the base is not ready, however many files it has.
3. If there is an engine — from scratch on the owner's platform: `bin/setup` /
   `bin\setup.ps1`, then one live operation. Nowhere to test — a line in "What
   exists and what does not".
4. `meta-vault/structure.md` — the build date (with it the namespace counts as
   built), the owner, the agent, the run's figures, a line in the build
   journal; whatever had to be done off-template goes in §Divergences from the
   template and §Lessons for the template.
5. Checkpoint commit.

## Step 7. Handover (if the owner will open it themselves)

The root door is finished per the [[../forms/handover-door-form|handover
form]]: delivery method, "how to start" verbatim, access, secrets step 0,
Windows, "what exists and what does not". If the build was done right on the
owner's machine, the handover comes down to finishing the door: there is no
"Access" section, "how to start" is "open the root". ⏸ owner: push — only on
their word.

**Not here:** a zone in an already built domain — [[../forms/zone-form|zone
form]]; a new template version — [[accept-new-version]].
