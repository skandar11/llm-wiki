---
type: operation
action: create-product-card
trigger: phrase
executor: agent
status: possible
---
# Operation — create a product card

**When:** "create a card for <product>", "add a new product", and also as
step 1 of the process [[list-product]].

**Steps:**

1. Check for a duplicate — search by name in the product zone. Exists →
   update the existing card, do not multiply a second one.
2. Assemble the card by the zone's form: name · photos · description · price ·
   stock. Photos and materials are given by the owner; what is missing — a
   question to him, do not invent.
3. Check the price and stock against the base; **exactly how much — the owner
   says, do not count it yourself**, if the base has no figure.
4. The draft is ready → mark `status: draft` in the card. Approval is the
   process gate, not of this operation: nothing goes outside from here.

**Edge cases:** no photos → the card stays a draft, a line to the owner in
the open questions.

**Not here:** listing on a platform — [[publish-to-marketplace]].
