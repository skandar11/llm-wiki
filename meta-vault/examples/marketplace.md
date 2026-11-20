# Example — "list a product on the marketplace"

**A synthetic sample, not a live base.** It shows how a process, operations
and a tool lie together and link to each other. Look at it when you assemble
the first bundle in a new base. The content is invented as a teaching one — it
is not copied into a live base: a live bundle is assembled from the owner's
business, in his words.

The files lie as they would lie in a base:

```
<domain>-vault/
  processes/list-product.md             process — a chain to an outcome
  operations/create-product-card.md    preparation operation (no outward exit)
  operations/publish-to-marketplace.md operation with an outward exit → ⏸ owner
  operations/check-listing.md           answering operation (read)
  tools/marketplace-cabinet.md          tool note
```

## What to look at (five teaching points)

1. **Attributes in the header** — `trigger × executor × status`; two of the
   operations are marked with what they mature into (event, code).
2. **Links instead of retelling** — the process contains no steps, the
   operations do not retell each other or the note.
3. **`⏸ owner` stands only where the action goes outside** — preparing the
   card does not need him, publishing always does.
4. **The tool separately, the keys separately** — the note has not a single
   secret value, only a pointer into the map.
5. **Honest statuses: `possible`** — the set has not been run live, and the
   sample does not pretend; `live` appears only after a run.
