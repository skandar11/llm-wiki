# <business name> — domain (rename the folder to fit yours)

The room of the owner's first business — <configure: shop, practice, course,
workshop — whatever you do>. The agent is the same as everywhere
(`../CLAUDE.md`); this door is the map of the room. Until configured it is a
blank: the `<configure>` marks get filled in, and the `project/` folder is
renamed together with the links in all doors and maps.

> **Invariant (verbatim, as in every door):** NEVER `AskUserQuestion` /
> popup dialogs — questions to the owner in plain text. Discuss first, write
> after the word: «do X» is an order, «maybe / probably» is thinking aloud.
> Nothing leaves without the owner's word.

## What is here

- `project-vault/` — the knowledge and method of the business. Start —
  `HOME.md`, state — `status.md`, what waits for the owner's word —
  `questions-OWNER.md`, operations — `operations.md`.
- `planning/` — records: the business's `backlog.md` (what waits, one line
  per item); the plan of the base is the top's `planning/plan.md`.
  Description — `project-vault/planning.md`.
- `docs/` — the business's files (scans, PDFs, exports); `inbox/` — the
  intake for sorting. **Both outside git.** Description —
  `project-vault/docs.md`.
- <configure: code projects — each with its own door>

## Rules

- **Knowledge in the vault, records beside it** ([[../meta-vault/vault-template|vault-template]]
  §The seam). Writing rules — the base [[../meta-vault/principles|principles]] +
  deltas in `project-vault/principles.md`.
- **A zone and a folder are born with the first object** — and at once get a
  line here and in `HOME.md`.
- <configure: what the agent must not do without your word — write to
  clients? change prices? What is not kept here?>
- Secrets — only `../secrets/` and `.env`; files hold pointers.

## Links

- The top: `../CLAUDE.md`, `../meta-vault/HOME.md`. A blocker that gates the
  top — a specific line in `../planning/plan.md` §Caution.
- Session close — `../CLAUDE.md` §Session close.
