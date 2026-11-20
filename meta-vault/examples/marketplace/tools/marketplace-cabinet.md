---
type: tool
tool: marketplace-kabinet
---
# Tool — marketplace cabinet

A note on one platform (Kaspi, Wildberries, Ozon — each has its own copy with
its own name). It is used by [[publish-to-marketplace]] and
[[check-listing]] — the steps "how to use the platform" are written once
here, the operations link.

**What it can do:** product cards · prices · stock · moderation statuses ·
price-list exports.

**How to use it:** <filled in from the live platform: card fields, categories,
photo formats, where to look at the moderation status>.

**Limits and pitfalls:** <moderation takes N days; which fields do not change
after publication; photo limits>.

**Maturing into code:** platforms sometimes have price-list auto-upload by
feed or API — when listing takes root by hand, the operation changes its
executor to `code → <path>`, and the feed format and address are recorded
here.

**Access:** the owner logs in; login/key — a line in the domain's
`secrets-map.md`, there are never values in this file.
