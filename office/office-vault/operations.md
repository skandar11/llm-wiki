---
title: operations — реестр операций офиса
type: registry
status: active
sensitivity: private
scope: work
updated: 2026-10-10
related:
  - HOME
---

# Операции офиса

Форма — [[../../meta-vault/vault-template|vault-template]] §Операции.

| Операция | Вызов | Род | Статус |
|---|---|---|---|
| записать поступление | «пришли деньги», «запиши оплату» | write → `../ledger/<год>.md` | possible |
| разложить бумаги | «разбери бумаги», новый файл в `../inbox/` | write → `../docs/` + `registry.md` корзины | possible |
| ближайший дедлайн | «что по налогам», «когда сдавать» | read ← [[tax-calendar]] + [[status]] | possible |

_(операции строкой; когда шагов больше трёх — свой файл в `operations/`)_
