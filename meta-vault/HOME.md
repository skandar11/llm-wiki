---
type: reference
status: active
sensitivity: normal
scope: all
tags: [home, index, vault, map]
updated: 2026-07-30
---

# meta-vault

meta-vault верхнего level'а: vault *о самом неймспейсе* — связи **вниз** ко всем
доменам. Семантическая карта — начинать отсюда. Конвенции —
[[meta-vault/principles|principles]]. Растёт по мере надобности, один файл =
один объект.

> Карта неймспейса — `../CLAUDE.md`. Новые домены рождаются из
> [[meta-vault/vault-template|vault-template]].

---

## Домены (связи вниз)

- **`../project/`** — домен-заготовка: первое дело владельца (переименуй под
  своё). Дверь + `project-vault/` + `docs/` + `inbox/`.
- **`../office/`** — бэк-офис: юрлицо, налоги, финансы, архив документов.
  Дверь + `office-vault/` + `docs/` + `inbox/`.

## Задачи (hot-state уровня)

Горячее состояние верхнего уровня = эти два объекта; `status.md` на верху нет
намеренно ([[meta-vault/principles|principles]] §Hot-state).

- [[meta-vault/inbox/README|inbox/]] — одна дверь захвата: кидай что угодно,
  zero ceremony.
- [[meta-vault/backlog|Backlog]] — **реестр**: все живые пункты одной строкой
  (суть · исполнитель · указатель вниз). Разбирается регулярной сессией:
  inbox → проход реестра → свод.

Домены ведут свои задачи у себя (`<домен>-vault/backlog.md` + `tasks/`);
сверху — строка с указателем вниз.

## Планирование

- [[meta-vault/plans/README|plans/]] — полка стратегических сборок (не
  календарные обязательства; обязательства ведёт [[meta-vault/backlog|backlog]]).

## Владелец

- [[meta-vault/owner|Owner]] — профиль владельца: кто, чем занимается, как
  обращаться.
- [[meta-vault/preferences|Preferences]] — правила владельца агенту:
  инвариант, стиль работы, язык. Настраиваемый шаблон.
- [[meta-vault/for-owner/README|for-owner/]] — полка объяснялок: материалы,
  которые агент готовит владельцу для чтения.

## Люди

- [[meta-vault/people/README|people/]] — реестр идентичностей: карточка на
  человека из ≥2 доменов.

## Решения и идеи

- [[meta-vault/decisions/README|decisions/]] — датированные прецеденты
  `YYYY-MM-DD-*`. Пусто — первое решение уровня запишется сюда.
- [[meta-vault/ideas/README|ideas/]] — forward-looking предложения мета-уровня,
  отдельно от устоявшихся decisions.

## Harness (автоматизации, каналы)

- [[meta-vault/harness/README|harness/]] — слой автоматизаций: реестр
  (hooks/cron), протокол закрытия сессии, шаблон подключения каналов
  (Telegram / WhatsApp).

## Meta

- [[meta-vault/glossary|Glossary]] — канон терминов: две оси (level vs
  stream/flow) + RU-алиасы.
- [[meta-vault/vault-template|Vault template]] — база-баз: «папка = точка
  входа», контракт дверь/карта, скелет project-vault. Новые домены рождаются
  отсюда.
- [[meta-vault/secrets-map|Secrets map]] — где живут доступы (без значений).
- [[meta-vault/principles|Principles]] — правила vault.

---

См. также: карта неймспейса `../CLAUDE.md`.
