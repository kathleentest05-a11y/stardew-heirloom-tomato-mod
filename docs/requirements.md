# Heirloom Tomatoes — Requirements

Status: Draft. The v1 variety list is locked (author, 2026-11-21; §10 and
[`docs/varieties.md`](varieties.md)), but locking the selection is not
approval: no variety is approved by this document alone. Each locked
variety must still pass the per-variety checklist in §9 before it is
added to `content.json`, and any addition or substitution requires a new
recorded decision and a full §3 → §9 pass.

**Locked v1 variety list (8):** San Marzano and Amish Paste (paste);
Mortgage Lifter, Black Krim, and Pineapple (beefsteak); Sungold and
Peacevine (cherry); and Green Zebra (saladette slicer). "Variety list" is
the accurate term, not "heirloom list": Sungold is a modern F1 hybrid
admitted only via §3.4, and Peacevine and Green Zebra are modern-bred
open-pollinated varieties; they must never be labelled heirloom where
that would be inaccurate (§3.4.3, `docs/varieties.md`). Green Zebra's
recipe category is decided (lean, §7.3): Caprese via beefsteak/slicing.

This document covers the full mod: variety selection, growth timing, pricing,
trademark vetting, in-game data, art, balance, and acceptance criteria. It is
a requirements document, not an implementation. Nothing here changes
`content.json`, `manifest.json`, or any sprite until a variety is approved.

## 1. Baseline: the vanilla tomato

All conversions and prices are anchored to the vanilla tomato so heirlooms
read as relatives of it, not as a separate economy.

| Vanilla property | Value |
| --- | --- |
| Season | Summer |
| Days to first harvest | 11 days (phases 2, 2, 2, 2, 3) |
| Regrowth after harvest | 4 days, 1 fruit per harvest (small chance of extra) |
| Base sell price (normal quality) | 60g |
| Seed price at Pierre's | 50g |
| Category in-game | Vegetable |
| Vanilla tomato gift taste | Liked (+45) by most villagers, incl. Leah, Maru, and Gus; Loved by nobody; Disliked by the vegetable-averse (Abigail, Haley, Jas, Sam, Vincent) |
| Vanilla cooking (1.6) | 81 recipes, none named Caprese or Caprese Salad (verified by web search, Nov 2026). Closest tomato dish: Bruschetta (Bread + Oil + Tomato, 210g) |

## 2. Goals and non-goals

### Goals

- Add several real, open-pollinated heirloom tomato varieties as growable
  Summer crops, each recognisably different in growth time, fruit, or value,
  plus a small number of select modern F1 hybrids that pass the uniqueness
  gate in §3.4 (Sungold is the first candidate). Heirlooms remain the mod's
  identity and the large majority of the list.
- Ground every variety's Days To Maturity (DTM), fruit weight, and habit in
  published data from trusted sources (§6), converted to Stardew time and
  prices by the fixed rules in §4 and §5.
- Keep every variety legally clean for an open-source (MIT) mod: no
  proprietary or trademarked variety names, ever (§3).
- Stay a plain Content Patcher pack for Stardew Valley 1.6+ as described in
  the README: no PPJA, Json Assets, or Producer Framework Mod.
- Give the harvest a kitchen and social life that follows vanilla rules:
  villager gift tastes based on the vanilla tomato (§7.2), and — after the
  variety list is set — cooking recipes that give each fruit type a job,
  starting with Heirloom Caprese for beefsteak/slicing types (§7.3,
  motivates the basil crop in §7.4), a cherry salad for cherry types
  (§7.5), a bisque for paste types (§7.6), and a tentative second
  cooked paste dish (§7.7) balancing the fresh/cooked menu.

### Non-goals

- No generic or "me-too" hybrid (F1) varieties. A hybrid enters only
  through the selective gate in §3.4, one named variety at a time, and is
  never described as an heirloom.
- No renaming of a trademarked or otherwise proprietary variety to sidestep
  §3. A disguised exclusion is still a violation.
- No new machines or NPCs, and no new cooking *system* — recipes in §7.3
  use the vanilla kitchen. Generic 1.6 machine rules for vegetables (juice,
  pickles, dried produce) are sufficient unless §7 says otherwise for a
  specific variety.
- **Out of scope: heirloom-as-vanilla-tomato substitution and
  ingredient-driven dish quality** (considered and rejected as too
  complex, author, 2026-11-21). Heirloom fruit does **not** count as
  the vanilla Tomato in the eight vanilla tomato recipes, vanilla
  `Data/CookingRecipes` entries are not edited to accept heirloom
  IDs, and cooking a dish with an heirloom does not raise its quality
  (no "heirloom → silver-quality dish" rule, and no heirloom +
  Qi Seasoning → iridium stacking). Cooked-dish quality stays exactly
  vanilla: normal by default, gold when Qi Seasoning is auto-consumed.
  Rationale: `Data/CookingRecipes` has no per-ingredient output-quality
  field and names fixed item/category IDs (§7.3), so both halves would
  need SMAPI code and a new cooking system — reversing the Framework
  decision in §10 — plus ingredient-choice/priority rules the vanilla
  cooking UI does not offer. (Green Zebra's recipe gap is instead
  closed by the lean beefsteak/slicing extension in §7.3.)
  Reopening requires a new recorded decision reversing §10's
  Content-Patcher-only framework; it is not a planned post-v1 feature.
- No attempt at botanical simulation. Real data sets the *relative* order
  and character of varieties; Stardew balance sets the absolute numbers.

## 3. Hard requirement: no proprietary or trademarked varieties

This is a gate, not a preference. A variety that fails this section does not
go into the mod, however popular, tasty, or well-documented it is.

### 3.1 The rule

- A variety **must not** be used if its name — or the specific strain being
  represented — is a registered or unregistered trademark, trade name, or
  branded series of a seed company or breeder (for example, a variety
  marketed exclusively under a single company's trademark).
- A variety **must not** be used if it is protected in a way that restricts
  free redistribution of the variety identity, such as active US Plant
  Variety Protection (PVP) or a utility patent covering the variety. When in
  doubt, treat it as protected and exclude it.
- Only varieties whose names are in genuine generic use for an
  open-pollinated variety may be used: the same name used by multiple
  independent sellers and reference sources, with no single owner claiming
  it.

### 3.2 Evidence required before approval

For each candidate variety, record all of the following in its checklist
entry (§9). One missing item means "not yet approved," not "probably fine."

1. **Multiple independent sources use the name generically** — at least two
   unrelated seed sellers or reference works (e.g. a university extension
   publication plus a seed catalogue from a different company) list the
   variety under the same name with no ™ or ® claim attached to it.
2. **Trademark check** — a search of the name in a trademark register
   (e.g. USPTO TESS) shows no live trademark covering seeds, plants, or
   produce under that name. Record the search date and result.
3. **No exclusive breeder claim** — no source describes the variety as a
   single company's exclusive introduction, branded line, or "available
   only from" offering in a way that ties the name to that company.
4. **Heirloom standing** — at least one trusted source (§6) describes the
   variety as heirloom or open-pollinated, ideally with a pre-modern or
   documented family/regional history. A recently bred open-pollinated
   variety may qualify only if items 1–3 are clearly satisfied. Modern F1
   hybrids cannot satisfy this item and are handled by §3.4 instead; items
   1–3 still apply to them in full.

### 3.3 Doubt means exclusion

- If evidence conflicts (one seller claims a trademark, another does not),
  the variety is excluded until the conflict is resolved in writing in its
  checklist entry.
- Distinct strains sharing a generic base name need care: if the generic
  name is clean but a named strain of it is a company's branded selection,
  only the generic form may be used, and its data must come from sources
  describing the generic variety, not the branded strain.
- The mod's own item names, descriptions, and documentation must not use any
  seed company's name, logo, catalogue copy, or photography. Descriptions
  are written fresh for this mod.

### 3.4 Selective hybrids: unique enough, or not at all

Decision (author, Nov 2026): select F1 hybrids may be included **generally
as a category but individually on merit** — a hybrid must be unique enough
that leaving it out would leave a real gap. Sungold is the motivating
example and first candidate. This softens the heirloom-only rule; it does
not soften §3.1's legal gate in any way.

A hybrid variety is approved only when its §9 entry proves all of:

1. **Benchmark uniqueness.** Trusted sources (§6) treat the variety as the
   standard for a distinct trait or niche (flavour class, colour, fruit
   type, earliness), and the entry names the open-pollinated alternatives
   that were considered for that slot and why each does not fill it.
   "It's popular" or "it's my favourite" is not uniqueness evidence.
2. **Legal gate, unchanged.** §3.2 items 1–3 pass in full: the name is in
   widespread generic varietal use by multiple independent sellers with no
   ™/® claim, a dated trademark-register search finds no live mark covering
   tomato seeds/plants/produce, and there is no in-force PVP/PBR or patent
   on the variety. That the breeder still produces the F1 seed from
   undisclosed parent lines does not by itself fail this item — the mod
   uses a variety *name* in a game, not the parents or the seed — but the
   breeder of origin is recorded, and any live exclusive *name* claim
   still excludes it under §3.3.
3. **Honest labelling.** Documentation and any player-facing text that
   mentions its background call it a modern F1 hybrid, never heirloom,
   heritage, or open-pollinated. (That a Seed Maker would return true
   seed in-game is an accepted gameplay abstraction, as with vanilla
   crops generally.)
4. **Selectivity budget.** Hybrids stay a small minority: at most one
   approved hybrid per fruit type (cherry, paste, beefsteak/slicing, …)
   unless a later recorded decision raises it, and every hybrid carries
   its own written approval — there is no blanket hybrid pass.

Sungold's preliminary position (to be confirmed in its §9 entry, not
assumed): F1 cherry bred by Tokita Seed (Japan, 1989), the benchmark sweet
orange cherry in extension and catalogue writing; at least one major seed
seller lists it as not PVP-protected; a quick trademark search found no
tomato-seed SUNGOLD registration (the US SUNGOLD mark found covers kiwi
fruit). The formal dated register search is still required before it is
added to `content.json`.

## 4. Growth: converting real DTM to Stardew time

Decision: proportional conversion, capped to a single Summer. Relative order
(early varieties mature before late ones) must match the real data; absolute
values must fit a 28-day Stardew season.

### 4.1 Recording real DTM

- DTM means the catalogue figure for days to maturity, normally counted
  **from transplant** for tomatoes. Record which basis each source uses
  (from transplant, from sowing, or unstated). Do not silently mix bases:
  if the only available figure is from sowing, note it and treat it as
  roughly `DTM_from_sow − 42` (about six weeks of indoor growth) for
  comparison, flagged as an estimate.
- Record DTM as a range when sources give one (e.g. 75–85). The value fed
  into §4.2 is the midpoint of the cross-source range from §6, rounded to a
  whole day.
- Also record growth habit (indeterminate, determinate, or dwarf) and fruit
  type (cherry, paste, slicing/beefsteak, etc.) from the same sources;
  §4.3 and §5 depend on them.

### 4.2 Conversion formula

The vanilla tomato (11 days) is treated as a mid-season variety with a
reference DTM of 75 days. Every heirloom scales from that anchor:

```text
StardewDays = clamp(round(11 × DTM / 75), 9, 14)
```

Worked examples (midpoint DTM → Stardew days to first harvest):

| Real DTM | 11 × DTM / 75 | Stardew days |
| --- | --- | --- |
| 55 | 8.1 | 9 (clamped) |
| 65 | 9.5 | 10 |
| 75 | 11.0 | 11 |
| 85 | 12.5 | 12 |
| 95 | 13.9 | 14 |

Rules that follow from the formula:

- **Ordering is preserved.** If variety A has a lower sourced DTM than
  variety B, its Stardew days must be less than or (only where clamping or
  rounding forces it) equal to B's — never greater.
- **Season is Summer** for every variety, matching the vanilla tomato. No
  variety may require a second season, the greenhouse, or Ginger Island to
  produce. The 14-day cap guarantees a Summer 1 planting still yields the
  first harvest plus at least three regrowth harvests before Summer 28.
- **Growth phases** split StardewDays across five phases as evenly as
  possible, with any remainder added to the last phase — the same shape as
  vanilla (11 days as 2, 2, 2, 2, 3).
- Rounding uses round-half-up, applied once to the unclamped value. Any
  hand adjustment of ±1 day for balance must be written next to the
  variety's checklist entry with its reason; silent tweaks are not allowed.

### 4.3 Regrowth and habit

- **Indeterminate** varieties regrow every 4 days, like vanilla. This is the
  default and needs no special justification.
- **Determinate** varieties must not quietly become indeterminate clones.
  Each determinate entry must state its model explicitly: either no regrow
  with more than one fruit at harvest, or a short regrow representing its
  concentrated flush. The choice, and its balance effect under §8, is
  recorded per variety.
- **Cherry and small-fruited** varieties keep the §4.2 first-harvest time
  but may use a shorter regrow (3 days) or multiple fruit per harvest to
  reflect many small fruit instead of one large one. §5 prices the single
  fruit; the yield choice is balanced in §8, not by inflating fruit price.
- Heirlooms are not trellis crops unless a variety's checklist entry argues
  otherwise; the vanilla tomato is grown without a trellis in Stardew
  terms, and consistency beats novelty here.

## 5. Pricing

Decision: one formula, anchored to the vanilla tomato, driven by sourced
fruit weight and converted maturity time, with a bounded heirloom premium.
Prices are computed, then checked for balance (§8) — never picked by feel.

### 5.1 Fruit sell price

```text
SellPrice = round5( 60 × sqrt(WeightOz / 5) × (StardewDays / 11) × Premium )
```

- `60` is the vanilla tomato's base sell price in gold, and `5 oz` is its
  assumed reference weight (a mid-sized slicing tomato). State this
  assumption wherever the formula is repeated; it is a modelling anchor,
  not a claim about the vanilla sprite.
- `WeightOz` is the cross-source typical fruit weight from §6, converted to
  ounces (1 oz ≈ 28.35 g). Where sources give a range, use the midpoint.
  The square root dampens extremes so a 16 oz beefsteak is worth more than
  a 5 oz tomato, but not triple per fruit on a regrowing plant.
- `StardewDays / 11` compensates a variety for its actual in-game wait
  relative to vanilla. Raw real DTM is not used here, so the game never
  pays for waiting time the player does not experience.
- `Premium` is the heirloom premium: **1.20** by default. It may rise to at
  most **1.40** when the checklist documents genuine scarcity (for example,
  preservation listings by a seed-saver organisation or few independent
  commercial sources). "It tastes famous" is not scarcity evidence.
- `round5` rounds to the nearest 5g. Clamp the result to **35g–180g** for
  paste/slicing/beefsteak fruit. Cherry and currant types may price below
  35g per fruit, with the difference made up in yield (§4.3), recorded per
  variety.
- Quality prices (silver/gold/iridium), the Tiller bonus, and artisan
  values follow from the base price through the game's normal rules. They
  are not hand-set per variety.

### 5.2 Seed price and availability

```text
SeedPrice = round5(SellPrice × 0.8)
```

- This mirrors vanilla's ratio (50g seeds for a 60g tomato) closely enough
  for a regrowing crop whose seed cost is paid once per plant.
- Seeds are sold at Pierre's during Summer (the vanilla tomato's home
  shelf) with no year, friendship, or quest gate, unless a checklist entry
  argues for one. JojaMart and the Traveling Cart entries are optional and,
  if added, follow vanilla mark-up conventions rather than new numbers.
- Seed sell-back price follows the game's usual convention for seeds
  (half the purchase price, as with vanilla Tomato Seeds at 25g) unless the
  object data requires otherwise.

## 6. Sources for variety data

Every number in §4 and §5 must be traceable. "The web says so" is not a
source; a named page, catalogue entry, or publication is.

### 6.1 Trusted, in preference order

1. **University and state extension services, USDA resources** (including
   GRIN/accession records) — preferred for DTM, habit, and disease or
   regional notes. Extension trial results outrank catalogue marketing.
2. **Seed-preservation and reference organisations** — e.g. Seed Savers
   Exchange listings and variety histories; also useful as heirloom-status
   and scarcity evidence for §3 and §5.
3. **Established seed catalogues** with full cultural data per variety
   (DTM, weight, habit) — used for cross-checking and for weight figures
   extension sources often omit. Catalogue superlatives ("best ever!",
   "huge yields!") are never data.
4. **Farmer's Almanac and similar general references** — acceptable as a
   supporting source for season/DTM plausibility, never as the sole source
   for a number that enters a formula.

Not acceptable as formula inputs: unsourced wiki or forum claims, AI
summaries, marketplace listings with no cultural data, and any single
retailer's marketing copy standing alone.

### 6.2 Cross-checking rules

- Each of DTM, typical weight, and habit needs **at least two independent
  trusted sources** (different publishers — two catalogues reselling the
  same wholesaler's text count as one).
- Where sources disagree, carry the full range into the checklist, use its
  midpoint in the formulas, and note the spread. A spread wider than ±10
  days on DTM or ±50% on weight must be flagged: the variety can proceed,
  but its §8 balance check uses both ends of the range.
- Convert all weights to ounces and all DTM figures to the from-transplant
  basis (§4.1) *before* comparing sources, so like is compared with like.
- Record, per source: publisher, variety name as listed, the exact DTM /
  weight / habit claims used, and the access date. Catalogue numbers change
  between editions; a future editor must be able to see what was read.

## 7. In-game data requirements

### 7.1 Per-variety data

Following the 1.6 approach in the README, each approved variety adds:

- **IDs** — stable string IDs prefixed with the mod `UniqueID`, e.g.
  `kathleentest05-a11y.HeirloomTomatoes_<Variety>Tomato` and a matching
  `...Seeds` ID. IDs, once shipped, never change (save compatibility).
- **`Data/Objects`** — fruit and seed entries: display name and description
  via `i18n/default.json` (`{{i18n:key}}`), price from §5, category
  Vegetable for the fruit (so generic juice/pickle/dehydrator rules apply),
  and edibility in line with vanilla vegetables of similar price.
- **`Data/Crops`** — keyed by the seed ID: Summer only, phases from §4.2,
  regrowth/harvest yield from §4.3, harvest item is the fruit ID, custom
  crop `Texture` from `assets/` rather than patching vanilla tilesheets.
- **`Data/Shops`** — seed sold at Pierre's in Summer at the §5.2 price.
- **Sprites** — an object sprite for fruit and seed (16×16, on the mod's own
  spritesheet in `assets/`) and a crop texture showing each growth phase
  through harvest. Fruit colour/shape must visibly distinguish the variety
  (stripes, ribbing, size cues), not colour alone, so varieties remain
  tellable apart at a glance and for colour-blind players.
- **Gift tastes / recipes / bundles** — gift tastes follow §7.2 and cooking
  recipes follow §7.3 (beefsteak/slicing), §7.5 (cherry), §7.6 (paste),
  and — if committed after its tentative-spec gate — §7.7 (second paste dish).
  Beyond those, no Community Center bundle, quest, or
  `Data/Machines` rule is added unless a checklist entry calls for it by
  name.
- **Text** — every player-facing string goes through i18n keys. Descriptions
  are one or two short lines, written for this mod (§3.3), and may mention
  the real traits the data encodes (size, earliness, use as paste/slicer).

### 7.2 Gift tastes (moved)

The gifting criteria for raw heirloom fruit now live in
[`docs/gift-tastes-tomatoes.md`](gift-tastes-tomatoes.md) Part II, which is
the single source of truth for them. Summary: heirlooms inherit the
vanilla tomato baseline via the Vegetable category, and only 100g+
varieties are Loved — by Leah, Maru, and Demetrius (any type) and by Gus
(beefsteak/slicing or paste only). The full criteria — baseline
verification, the 100g threshold, per-variety recording, and the balance
note — are Part II of that doc and are not duplicated here. References
elsewhere in this document to "§7.2" mean that moved section.

### 7.3 Cooking: Heirloom Caprese (starter recipe)

Phase: cooking recipes are defined **after the locked variety list**
(§10), because eligibility depends on which locked beefsteak/slicing
varieties pass §9. The starter recipe below is settled now so the
variety list can be judged against it; further recipes are §11
material. **Lean decision (author, 2026-11-21): Caprese eligibility
is beefsteak/slicing, not beefsteak only** — this is how Green Zebra
(sourced type: saladette slicer) gets a dish, without reclassifying
it as a beefsteak and without a separate saladette recipe or onion
crop (the expanded tomato-onion-salad route in `docs/varieties.md`
is not pursued).

Verified starting facts: vanilla Stardew Valley 1.6 has 81 cooking recipes
and **no Caprese of any kind** — the nearest tomato dishes are Bruschetta
(Bread + Oil + Tomato), Vegetable Medley, and Salad. The name is therefore
free in vanilla, but the Cornucopia family ships a "Caprese Salad"
(author, 2026-11-22; not in More Crops 1.7.0, which has no cooking
recipes — expected in Cornucopia's cooking add-on, not yet read), so
this mod's dish is named **Heirloom Caprese**
to stay distinguishable when both are installed. Its item/recipe IDs use
the mod prefix (§7) regardless of display name.

Requirements:

- **Ingredients:** Cheese (1) + Basil (1, §7.4) + Vinegar (1) + **any one
  beefsteak/slicing-type tomato from this mod** (1) — i.e. the locked
  beefsteaks (Mortgage Lifter, Black Krim, Pineapple) plus the locked
  saladette slicer Green Zebra, each only once it passes §9. Cow
  Cheese stands in for mozzarella; Goat Cheese is not used (it is
  already a Leah Loved gift on its own, and requiring goats would
  gate a starter recipe behind a deluxe barn). Paste, cherry, and
  vanilla tomatoes do not qualify. Green Zebra's inclusion is by its
  sourced *slicing* type; no doc, description, or data field may
  relabel it a beefsteak to achieve this.
  The Vinegar is the vanilla item (200g year-round at Pierre's, as in Salad,
  Coleslaw, and Radish Salad) standing in for a balsamic drizzle. **No
  balsamic item, crop, or machine rule is added for this** — one shop-bought
  bottle already in the game does the job, and a single-use artisan chain
  for one salad is exactly the bloat this mod avoids. The dish description
  may call it a balsamic-style dressing; the data stays plain Vinegar.
- **"Any beefsteak/slicing" must be prototyped, not assumed.** A vanilla
  `Data/CookingRecipes` entry names fixed ingredient item/category IDs, so
  accepting several different fruit IDs needs a proven mechanism (e.g. a
  shared category/context-tag ingredient if 1.6 honours one for cooking,
  or one recipe entry per qualifying variety yielding the same dish).
  Before the recipe is committed, prototype it in-game and record which
  mechanism shipped, proving both directions: every approved
  beefsteak/slicing variety (including Green Zebra) cooks it, and no
  paste, cherry, vanilla tomato, or other vegetable does. If a
  mechanism produces duplicate cookbook entries or accepts wrong items,
  it fails and the fallback is re-decided before release — silently
  narrowing to a single variety is not allowed.
- **Dish object:** a normal cooked dish via `Data/Objects` +
  `Data/CookingRecipes`, with its own 16×16 sprite (sliced tomato, white
  cheese, green basil — readable at icon size) and i18n name/description.
  Energy/health between Salad/Bruschetta (113 energy) and the vinegar
  salads (Radish Salad: 200 energy), sell price in the 250–300g band —
  above Bruschetta (210g) because of the 200g Vinegar and the
  (usually 100g-class, Green Zebra excepted) slicing tomato, but
  still not the sum of its ingredients, consistent with
  vanilla salads — and **no buff** by default. Exact numbers are fixed when
  the recipe is implemented and recorded with the §8-style arithmetic,
  including the purchased-Vinegar cost.
- **Unlock:** mailed by **Gus at 3+ hearts**, in his voice as the Saloon
  chef sharing a way to show off a slicing tomato. Letter text goes through
  i18n like everything else. (If recipe-mail proves awkward in Content
  Patcher, the Stardrop Saloon shop is the acceptable fallback — record
  which shipped.)
- **Implementation record (author decision 2026-11-22; prototype test
  passed in-game the same day):**
  - *Mechanism:* vanilla 1.6 recipe ingredients are matched only by
    "unqualified item ID or category number" (game code docs,
    `CraftingRecipe.recipeList`), so vanilla cannot express "any slicing
    tomato" without duplicate recipes (A) or a custom category that
    would strip the Vegetable category (B). Shipped instead: **SpaceCore
    as a required dependency** (1.28.4+), using its Content
    Patcher-editable `spacechase0.SpaceCore/CookingRecipeOverrides` asset
    with a `ContextTag` ingredient on `heirloom_tomato_slicer`. That tag
    is on Mortgage Lifter, Black Krim, Pineapple, and Green Zebra only.
    One recipe, one cookbook entry. The vanilla `Data/CookingRecipes`
    entry stays for unlock, name, and listing; its own ingredient list
    (Mortgage Lifter as a stand-in) is replaced by SpaceCore.
  - *Unlock:* the vanilla `f Gus 3` condition, which mails the recipe
    the day after reaching 3 hearts — verified in-game 2026-11-22. The
    game reuses Gus's standard recipe letter (the same one that brings
    Salmon Dinner): Saloon-chef voice, but not tomato-specific. **Author
    decision 2026-11-22: keep the vanilla letter**; no custom mail or
    trigger action. This relaxes "sharing a way to show off a slicing
    tomato" above for v1.
  - *Basil:* the ingredient uses the `{{BasilItemId}}` token (§7.4).
  - *Numbers:* sell 280g; Edibility 60 (150 energy); no buff.
    Ingredients (Cheese 230 + Basil 30 + Vinegar 200 purchased +
    slicer 65–170) total about 525–630g. So the dish sells below its
    inputs, as vanilla salads do, and above Bruschetta (210g). Energy
    sits between Salad (113) and Radish Salad (200).
  - *Prototype test (in-game 2026-11-22, SpaceCore 1.28.4, our basil
    via `BasilSource` fallback):* exactly one cookbook entry; the tomato
    slot shows "Slicing Heirloom Tomato (any)" with the Mortgage Lifter
    icon. Mortgage Lifter, Black Krim, Pineapple, and Green Zebra each
    cook it — pass. San Marzano (paste), Sungold (cherry), and vanilla
    Tomato are refused even with Cheese, basil, and Vinegar present —
    pass. Dish sprite and description display correctly. Sells for
    280g (sold to Pierre) — pass. Not yet checked: Amish Paste/Peacevine
    refusal (same tags as tested ones) and the recipe with Cornucopia's
    basil.
- **Caprese gift tastes:** moved to
  [`docs/gift-tastes-tomatoes.md`](gift-tastes-tomatoes.md) Part II
  (summary: universal cooking Liked; Loved by Leah, Gus, and Lewis only).

### 7.4 Basil: a supporting crop, with a Cornucopia switch

Heirloom Caprese needs basil, which vanilla does not have. Cornucopia –
More Crops does: its Basil is an Essential Pack herb (Spring, fast-growing,
about 30g). This mod must work identically for players with and without
Cornucopia, without forcing a second, confusing basil on Cornucopia players.

Decision: **ship our own basil, plus a player config that can swap the
Caprese recipe to Cornucopia's basil.**

- **Our basil** is a small supporting crop under the same systems as the
  tomatoes, simplified: its own prefixed fruit/seed IDs, `Data/Objects`
  (category Vegetable/greens so §7.2's baseline applies to it too, Loved by
  nobody), `Data/Crops`, sprites, i18n, and seeds at Pierre's. It is a
  generic sweet/Genovese-style basil — §3's generic-name evidence applies
  in brief (basil variety names are not exempt just because basil is a
  side crop). Seasons **Spring, Summer, and Fall** (author decision
  2026-11-22, replacing Summer-only: real basil is finicky in summer heat,
  and a longer window makes it a dependable pantry herb), maturing no later
  than the earliest beefsteak harvest and regrowing, so a Year-1 player can
  cook Caprese the same Summer they unlock it. Its exact days, regrow, and
  seed/sell prices (cheap herb band, cf. Cornucopia's 30g) are fixed when
  implemented and recorded in a §9-style entry; the tomato DTM/pricing
  formulas (§§4–5) do not apply to it.
- **Config `BasilSource`: `Auto` (default) | `Ours` | `Cornucopia`**, as a
  Content Patcher config option (Generic Mod Config Menu surfaces CP
  configs automatically; GMCM stays optional, never a dependency).
  Semantics, evaluated with Content Patcher's `HasMod` condition for
  Cornucopia – More Crops:
  - `Auto`: use Cornucopia's basil if that mod is installed, else ours.
  - `Ours`: always our basil, even beside Cornucopia.
  - `Cornucopia`: Cornucopia's basil **only if installed**; without it,
    fall back to ours (the recipe must never point at a missing item).
- **What the switch changes — and what it must not.** The active source
  swaps the single basil ingredient ID in Heirloom Caprese and hides our
  Basil Seeds from Pierre's while Cornucopia basil is active (no point
  selling a duplicate). It must **never** remove our basil object/crop
  definitions: plants growing and leaves in chests in an existing save
  stay valid if the player flips the config or uninstalls Cornucopia
  mid-save. The dish's own ID never changes.
- **Verify Cornucopia's identifiers from the real mod, never from memory.**
  At implementation time, read the installed Cornucopia – More Crops pack
  to confirm its `UniqueID` (for `HasMod`, and as an optional — not
  required — manifest dependency if needed for load order) and its basil
  item ID (for the recipe patch). Record both, with the Cornucopia version
  checked, in the recipe's notes. Guessed IDs are a release blocker.
- **Test matrix (all four, in-game):** (1) this mod alone; (2) with
  Cornucopia on `Auto`; (3) with Cornucopia forced to `Ours`; (4)
  `Cornucopia` selected but Cornucopia absent. Each must show: Caprese
  cookable with the correct basil, the correct seed on Pierre's shelf, and
  no broken/missing items after switching config on an existing save.

### 7.5 Cooking: Heirloom Cherry Salad (second recipe)

Phase: same as §7.3 — defined after the locked variety list (§10), once
it is known which locked cherry types pass §9. Its job is to give
cherry/small-fruited
varieties (§4.3) a use Heirloom Caprese deliberately denies them.

On the obvious cherry candidate: **Sungold is eligible only via §3.4.**
It is an F1 hybrid bred by the Tokita Seed Company (released 1989 in
Japan), not an open-pollinated heirloom — exactly the case the selective
hybrid gate was written for. If its §9 entry clears §3.4 (benchmark
uniqueness as the sweet orange cherry, full legal gate), Sungold itself
goes in under its own name, honestly labelled a modern hybrid, and is a
natural Heirloom Cherry Salad ingredient. If it does not clear §3.4, the
salad slot is filled by approved open-pollinated cherries instead; a
sound-alike rename remains forbidden either way (§3.3).

Requirements:

- **Name:** **Heirloom Cherry Salad**, distinct from vanilla Salad (Leek +
  Dandelion + Vinegar) and Radish Salad (Oil + Vinegar + Radish). Prefixed
  item/recipe IDs as §7.1.
- **Ingredients:** Oil (1) + Vinegar (1) + Kale (1) + **any one cherry-type
  heirloom tomato from this mod (×2 fruit)**. Two fruit because one cherry
  item is a single small fruit (§4.3 yields are expected to make this
  cheap); the count is revisited when cherry yields are fixed, and any
  change is recorded. Beefsteak, paste, and vanilla tomatoes do not
  qualify. **No arugula** is added: a new leafy crop for one salad is the
  same bloat §7.3 rejected for balsamic. Kale is the green because vanilla
  already treats it as a cooking green (Stir Fry, Salmon Dinner), it is a
  farm-planned Spring crop (6 days, 110g) the player can store into
  Summer, and it keeps this dish distinct from vanilla Salad. Dandelion
  was the runner-up (vanilla Salad's own green) and is recorded as
  rejected so it is not relitigated per implementation.
- **"Any cherry" mechanism:** identical constraint and prototype duty as
  §7.3's "any beefsteak/slicing" — prove every approved cherry type
  cooks it and no other tomato or vegetable does, with no duplicate
  cookbook entries. All "any <type>" recipes (§§7.3/7.5/7.6 and the
  tentative §7.7) should ship on the *same* proven mechanism; if that
  mechanism fails, they are re-decided together.
- **Dish object:** own sprite (halved cherries over dark greens — readable
  at 16×16) and i18n name/description. Model its numbers on Radish Salad,
  vanilla's Oil + Vinegar + produce template (200 energy, 300g): target
  sell band **300–350g** given the added Kale (110g) and two cherries,
  energy in the 150–200 range, **no buff** by default. Exact values are
  fixed at implementation with the arithmetic recorded, including the
  300g of shop-bought Oil + Vinegar — as with vanilla salads, sell price
  need not exceed ingredient cost.
- **Unlock:** mailed by **Harvey at 3+ hearts** (the town doctor
  recommending an actually-enjoyable salad), with the Stardrop Saloon
  shop as acceptable fallback if recipe-mail proves awkward, per §7.3's
  precedent. Record which shipped.
- **Gift tastes:** moved to
  [`docs/gift-tastes-tomatoes.md`](gift-tastes-tomatoes.md) Part II
  (summary: universal cooking Liked; Loved by Leah and Harvey only).

### 7.6 Cooking: Heirloom Tomato Bisque (paste-variety dish)

Phase: after the locked variety list (§10), like §§7.3/7.5. Settled after a
full audit of vanilla gift tastes for raw tomato and all eight vanilla
tomato dishes — see `docs/gift-tastes-tomatoes.md`, which this section's
choices cite. Vanilla has a Lobster Bisque (loved by nobody) but no
tomato bisque or tomato soup, so the name **Heirloom Tomato Bisque** is
free and pattern-consistent ("Heirloom" prefix as §§7.3/7.5).

This replaces the earlier idea of reserving Robin for a spaghetti-like
paste dish. The audit killed it: a Wheat Flour + tomato dish differing
from vanilla Spaghetti only by tomato ID would be a reskin, and Robin's
soup connection turned out to be that she *sends* the Pumpkin Soup recipe
while only Liking the dish (her son Sebastian is the one who loves it).

Requirements:

- **Ingredients:** **any one paste-type heirloom tomato (×2 fruit)** +
  Milk (1, any milk via the vanilla milk-category ingredient, as in
  Pumpkin Soup). This follows vanilla's bisque/soup template — Lobster
  Bisque and Pumpkin Soup are both "main ingredient + Milk" — so no new
  cream item, no garlic, and no second basil dependency (§7.4's switch
  stays a Caprese-only concern). Two fruit because paste types are cooked
  down; revisited when paste yields are fixed. Beefsteak, cherry, and
  vanilla tomatoes do not qualify.
- **"Any paste" mechanism:** the same proven mechanism as §7.3/§7.5,
  with the same both-directions prototype proof. If that mechanism
  fails, all "any <type>" dishes (including tentative §7.7) are
  re-decided together.
- **Dish object:** own 16×16 sprite (bowl of deep-red soup, pale swirl),
  i18n name/description. Numbers modelled on the vanilla soup band
  (Pumpkin Soup 300g/200 energy; Lobster Bisque 205g/225 energy): target
  sell **200–300g**, energy 150–225, **no buff** by default — this mod's
  dishes stay buff-free unless a later recorded decision changes it.
- **Unlock:** mailed by **Gus at 7+ hearts** — his second, later tomato
  recipe after Caprese at 3+ (§7.3) — with the Stardrop Saloon shop as
  fallback, per §§7.3/7.5 precedent. Record which shipped.
- **Gift tastes:** universal All-Cooking Liked baseline, with explicit
  Loved entries for **Gus and Jodi only**. Gus: the chef, on background
  argument (vanilla gives him no tomato Love; he likes all nine tomato
  items). Jodi: the audit's strongest evidence case — the only villager
  who loves two vanilla tomato dishes (Vegetable Medley, Eggplant
  Parmesan) and likes everything else tomato. Robin (sends Pumpkin Soup
  recipe, loves Spaghetti) and Sebastian (loves Pumpkin Soup, likes all
  nine tomato items, hates Goat Cheese) were considered and deliberately
  not added. Robin simply has no heirloom-specific Loved gift, which
  needs no compensation. Verify Gus (Loved), Jodi (Loved), Robin and
  Sebastian (Liked, *not* Loved), three ordinary Likers, and the expected
  cooked-dish Dislikers Krobus, Leo, and Willy (see the audit doc).

### 7.7 Cooking: Heirloom Tomato Shakshuka (tentative second paste dish)

Status: **tentative candidate** (author, 2026-11-21), recorded as part
of the lean menu decision in §7.3: two fresh dishes (Caprese incl.
Green Zebra, Cherry Salad) balanced by two cooked paste dishes
(Bisque, this). It becomes a committed dish only when (a) the shared
"any paste" mechanism is prototyped per §7.6, and (b) its unlock,
gift tastes, and exact numbers below are settled and recorded. If
the mechanism fails, this dish is re-decided together with
§§7.3/7.5/7.6, not rescued by narrowing to one paste variety.

Why a second paste dish earns its slot (not salad-ratio cosmetics):
paste varieties are cooking tomatoes — San Marzano in particular has
no raw-fruit Loved gift at its chosen 70g — and §7.6 is a late
(Gus 7♥) milk-based soup. A hearty, earlier, non-soup paste dish
gives the type a distinct second job and an earlier special use.

Candidate spec (to be settled before commitment):

- **Name:** **Heirloom Tomato Shakshuka**, prefixed item/recipe IDs
  as §7.1. (Check for display-name collisions with common recipe
  mods at implementation time, as §7.3 did for Caprese.)
- **Ingredients:** **any one paste-type tomato from this mod
  (×2 fruit)** + Egg (1, any egg via the vanilla egg-category
  ingredient) + Hot Pepper (1). No Wheat Flour — this must not become
  a Spaghetti/Pizza reskin (§7.6) — and no new crop, item, or basil
  dependency. Beefsteak/slicing, cherry, and vanilla tomatoes do not
  qualify. Paste types are the culinary fit: low-moisture fruit
  cooks down to a thick sauce that does not waterlog the eggs. The
  ×2 count is revisited with paste yields, as in §7.6.
- **"Any paste" mechanism:** identical constraint and both-directions
  prototype proof as §7.6 (every approved paste variety cooks it; no
  other tomato or vegetable does; no duplicate cookbook entries).
- **Dish object:** own 16×16 sprite (dark skillet, red sauce, white/
  yolk egg — readable at icon size) and i18n name/description.
  Working target band only: sell **200–350g**, energy **150–225**,
  **no buff** by default (consistent with §§7.3–7.6). Exact values
  are fixed at implementation with the arithmetic recorded, using
  both paste varieties' final §5 prices.
- **Unlock + gift tastes (unsettled — record the choice here before
  commitment):** working assumption is an early mail unlock (3+
  hearts, mirroring the salads' progression) so paste has a use
  before Gus 7♥. Evidence-based candidates from the gift audit
  (`docs/gift-tastes-tomatoes.md`): Shane (loves Hot Pepper, Pepper
  Poppers, and Pizza; cooked tomato overcomes his raw-tomato
  dislike) and Jodi (loves two vanilla tomato dishes) as Loved
  recipients, with sender to be chosen between them (or Gus, at the
  cost of a third Gus recipe). Do not add Leah by default — she is
  already Loved on both salads (audit Part I point 4). Whoever is
  chosen, verify the Loved pair, three ordinary Likers, and the
  expected cooked-dish Dislikers Krobus, Leo, and Willy.

## 8. Balance acceptance check

Before a variety ships, compute its per-plant Summer return under fixed
assumptions and record it: planted Summer 1, watered daily, no fertilizer
or Speed-Gro, normal quality, harvests through Summer 28, seed cost counted
once. Compare against the same computation for the vanilla tomato
(11 days, regrow 4, 60g fruit, 50g seed).

- Target band: total profit per plant between **0.9× and 1.75× vanilla**.
  Late, large, or scarce-premium varieties belong near the top; early
  varieties earn their keep through extra harvests, not price.
- No variety may strictly dominate another shipped variety on every axis
  (earlier *and* higher-yielding *and* higher-priced per fruit) unless its
  seed price or yield model compensates — and that compensation is written
  down, not assumed.
- A result outside the band is fixed by adjusting the documented levers
  only (premium within §5.1 bounds, regrow, fruits per harvest), each
  change recorded with its arithmetic. It is never fixed by quietly editing
  the sourced DTM or weight; the real data is the real data.
- Where §6.2 flagged a wide source spread, run the check at both ends of
  the range; both results are recorded.

## 9. Per-variety approval checklist

One entry per candidate (a table per variety in a future
`docs/varieties.md` is fine). A variety enters `content.json` only when
every line is filled in and §3 passes outright.

```text
Variety name (as used in-game):
Heirloom / open-pollinated evidence (§3.2.4) — or, for a hybrid,
  §3.4 uniqueness case incl. OP alternatives considered:
Trademark check — register, date, result (§3.2.2):
Two independent generic-name sources (§3.2.1):
Exclusive-claim check (§3.2.3):
Sources — DTM (basis, values, range, midpoint):
Sources — typical weight (values, oz midpoint):
Sources — habit and fruit type:
StardewDays (formula result, any ±1 adjustment + reason):
Growth phases:
Regrow / fruits per harvest (habit model, §4.3):
SellPrice (full formula arithmetic, premium + its justification):
SeedPrice and shop entry:
§8 balance result vs vanilla (both range ends if flagged):
Gift tastes (§7.2: final price vs 100g, fruit type, Loved by which of
  Leah / Maru / Demetrius / Gus — expected: none below 100g):
Recipe eligibility (sourced fruit type §4.1): beefsteak/slicing (incl.
  saladette slicer) → Caprese (§7.3), cherry → Cherry Salad (§7.5),
  paste → Tomato Bisque (§7.6) + tentative Shakshuka (§7.7):
Sprite / crop-texture notes (distinguishing traits, §7):
```

## 10. Decisions already made

| Decision | Choice |
| --- | --- |
| Document scope | Full mod requirements (this document) |
| Variety list (v1) | Locked (author, 2026-11-21): San Marzano + Amish Paste (paste), Mortgage Lifter + Black Krim + Pineapple (beefsteak), Sungold + Peacevine (cherry), Green Zebra (saladette). Selection only — each still needs §9 sign-off before `content.json`; excluded researched varieties (Brandywine, Sweet 100, Kellogg's Breakfast, 4th of July) stay out, and an early OP slicer (e.g. Stupice) is post-v1/stretch, not v1. Sungold is a §3.4 modern F1 and Peacevine/Green Zebra are modern-bred OP, never mislabelled heirloom. Research record: `docs/varieties.md` |
| DTM conversion | Proportional to vanilla, Summer-capped (§4.2) |
| Pricing | Formula anchored to vanilla 60g / 50g seed (§5) |
| Trademarked varieties | Hard exclusion, no renames (§3) |
| Framework | Content Patcher only, Stardew Valley 1.6+ (README) |
| Vanilla-recipe substitution / dish quality | Out of scope (author, 2026-11-21): heirlooms do not substitute for the vanilla Tomato in vanilla recipes, and ingredient identity never changes cooked-dish quality (no heirloom→silver, no heirloom+Qi Seasoning→iridium); Qi Seasoning remains vanilla set-to-gold. Too complex — would require a SMAPI code cooking system. See §2 Non-goals |
| Season | Summer for all varieties (§4.2) |
| Raw-fruit gifting | Vanilla tomato baseline; 100g+ Loved by Leah/Maru/Demetrius, plus Gus for 100g+ beefsteak/slicing or paste only (§7.2) |
| Starter recipe | Heirloom Caprese after variety list: Cheese + Basil + vanilla Vinegar (no balsamic item) + any beefsteak/slicing tomato from this mod (lean decision, author 2026-11-21 — includes Green Zebra as saladette slicer, never relabelled beefsteak; no separate saladette/onion recipe); Gus 3-heart mail; Loved by Leah + Gus + Lewis, Lewis cooked-only (§7.3) |
| Basil | Own Spring–Fall basil crop (author, 2026-11-22) + `BasilSource` config (`Auto`/`Ours`/`Cornucopia`) swapping Caprese to Cornucopia basil when installed (§7.4) |
| Second recipe | Heirloom Cherry Salad after variety list: Oil + Vinegar + Kale (no arugula) + any cherry heirloom ×2; Harvey 3-heart mail; Loved by Leah + Harvey (§7.5) |
| Sungold | First §3.4 selective-hybrid candidate — in under its own name if the full legal gate passes; labelled modern F1, never heirloom (§3.4, §7.5) |
| Hybrids in general | Selective only: benchmark-unique, legally clean, one per fruit type, individually approved (§3.4) |
| Paste dish | Heirloom Tomato Bisque after variety list: paste heirloom ×2 + Milk; Gus 7-heart mail; Loved by Gus + Jodi. Robin reservation withdrawn per gift audit (§7.6) |
| Second paste dish (tentative) | Heirloom Tomato Shakshuka candidate (author, 2026-11-21, lean menu): any paste ×2 + Egg (any) + Hot Pepper, no Wheat Flour/new crop; hearty earlier cooked counterpart to Bisque so the menu is 2 fresh + 2 cooked. Tentative only — committed only after the §7.7 spec gate (prototype + settled unlock/gifts/numbers) |

## 11. Open questions

- Per-variety §9 sign-off for the locked v1 list (§10,
  `docs/varieties.md`): remaining §8 range-end checks and final §5 prices;
  San Marzano's EUIPO/WIPO confirmation and literal-"produce" reading
  (its weight is decided: ~4.0 oz typical, `docs/varieties.md`);
  Amish Paste's population (and consequent
  100g gift row); and the project-wide §3.1 utility-patent decision
  (search, or record why existing evidence suffices). (Green Zebra's
  recipe category is decided: Caprese via beefsteak/slicing, §7.3.)
- Tentative §7.7 Shakshuka settlement: exact unlock sender/hearts,
  Loved recipients, and energy/price within its working bands, to be
  recorded in §7.7 before it counts as a committed dish.
- Determinate modelling (§4.3): not a v1 question — all eight locked
  varieties are indeterminate, so the determinate model stays untested
  unless a future post-v1 addition (e.g. Roma) is approved.
- Cherry/small-fruited yields for Sungold + Peacevine: 3-day regrow,
  multiple fruit per harvest, or both — to be settled jointly against
  the §8 band (Peacevine provisional model: 2 fruit / 4 days).
- Whether any variety warrants a non-Pierre source (Traveling Cart,
  JojaMart) or a farming-level unlock; default is plain Pierre's, Summer.
- Implementation unknowns to close by prototype, not debate (§§7.3–7.7):
  the shared "any beefsteak/slicing / any cherry / any paste" ingredient
  mechanism; Cornucopia – More Crops' exact `UniqueID` and basil item ID;
  our basil's exact days/prices; the settled dishes' (and, if committed,
  §7.7's) exact energy/price, cherry and paste fruit counts once yields
  (§4.3) are fixed, and the recipe letter texts.
