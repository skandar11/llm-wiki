---
title: Owner — profile of the namespace owner
type: reference
status: active
sensitivity: private
scope: all
updated: 2026-10-10
tags: [owner, profile, identity]
related:
  - preferences
  - HOME
---

# Owner — profile of the owner

Who the owner of this namespace is. The agent reads this file to know who it
works with; the **rules** of communication live separately —
[[preferences]]. Fill it in during setup; a stub with an honest "we put this
here" is fine, invented data is not.

## Who

- **Name:** <name>
- **Form of address:** <informal / formal; what to call them>
- **Languages:** <native; the one they read and think in>

## Agent

- **Agent name:** <what the owner calls the agent — the same name as in
  `../CLAUDE.md`>

## What they do

- <undertaking 1 — in one line; domain: `../project/` (rename it)>
- <undertaking 2, if any>
- Legal entity and papers — `../office/`.

## Context for the agent

- <what the agent should know about the owner so as not to ask the same
  questions again: rhythm of work, what hurts, what not to do>

## What this file does not hold

Secret identifiers (document numbers, accounts) do not go here: personal data
lives in `office/docs/` (scans), access credentials — in `secrets/`. Here is
only what the owner is willing to see in every agent session.
