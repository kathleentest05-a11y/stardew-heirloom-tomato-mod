# Vanilla gift tastes: raw tomato and every tomato dish

Part I is a research note for `docs/requirements.md` §§7.2–7.6; Part II
(below) is the normative home of this mod's gifting criteria for raw
heirlooms, Heirloom Caprese, and Heirloom Cherry Salad. Compiled Nov 2026 from
the Stardew Valley Wiki (game version 1.6): the resolved `{{GiftsByItem}}`
tables on each item page, cross-checked against the raw
`Data/NPCGiftTastes` published on the wiki's Modding:Gift taste data page
(as of 1.6.15). Where the raw data contains a conflict (Harvey both likes
the Cooking category and specifically dislikes Pizza), the resolved
per-item table wins — it matches the game's History note "1.4: Harvey now
dislikes [Pizza] as a gift."

Scope: all 34 giftable villagers, the raw Tomato, and the eight vanilla
cooked dishes with Tomato as an ingredient. Friendship values: Love +80,
Like +45, Neutral +20, Dislike −20, Hate −40.

## The mechanics in one paragraph

Most of the matrix is two universal category tastes: **all Vegetables are
universally Liked** and **all Cooking is universally Liked** (exceptions:
Fried Egg/Bread neutral, Strange Bun/Seafoam Pudding hated). Named
exceptions below are per-villager item or category overrides on top of
that. Three villagers (Krobus, Leo, Willy) personally dislike the whole
Cooking category, so they Dislike almost every cooked dish, tomato or not;
Willy then re-likes individual fish dishes.

## Raw Tomato (Vegetable, 60g)

- **Love (0):** nobody.
- **Like (29):** Robin, Demetrius, Maru, Sebastian, Linus, Leo, Pierre,
  Caroline, Alex, George, Evelyn, Lewis, Clint, Penny, Pam, Emily, Jodi,
  Kent, Leah, Shane, Marnie, Elliott, Gus, Dwarf, Wizard, Harvey, Sandy,
  Willy, Krobus.
- **Dislike (5):** Abigail, Haley, Jas, Vincent, Sam — the
  vegetable-averse. (Abigail dislikes the Vegetable category but loves the
  one vegetable Pumpkin by item override.)

## The eight tomato dishes

"Liked by everyone else" means every villager not named for that dish.
Cooked dishes have no Neutral tier in this set.

| Dish (ingredients; source) | Love | Dislike / Hate |
| --- | --- | --- |
| Vegetable Medley (Tomato + Beet; Caroline 7♥ mail) | **Lewis, Jodi, Leah** | Dislike: Willy, Krobus, Leo |
| Pizza (Wheat Flour + Tomato + Cheese; Queen of Sauce / Saloon) | **Sam, Shane** | Hate: **Leah**. Dislike: Elliott, Harvey, Willy, Krobus, Leo |
| Spaghetti (Wheat Flour + Tomato; Lewis 3♥ mail) | **Robin** | Dislike: Willy, Krobus, Leo |
| Eggplant Parmesan (Eggplant + Tomato; Lewis 7♥ mail) | **Jodi** | Dislike: Willy, Krobus, Leo |
| Bruschetta (Bread + Oil + Tomato; Queen of Sauce) | — | Dislike: Willy, Krobus, Leo |
| Fish Stew (Crayfish + Mussel + Periwinkle + Tomato; Willy 7♥ mail) | — | Dislike: Krobus, Leo |
| Shrimp Cocktail (Tomato + Shrimp + Wild Horseradish; Queen of Sauce) | — | Dislike: Krobus, Willy, Leo |
| Squid Ink Ravioli (Squid Ink + Wheat Flour + Tomato; Combat 9) | — | Dislike: Leo, Willy, Krobus |

Five of the eight tomato dishes are **loved by nobody at all**. Vanilla is
stingy with Loved on tomato cooking; our mod is already more generous.

## Villager tomato-affinity (raw + 8 dishes, ranked)

- **Jodi — the tomato villager.** Loves 2 of 8 tomato dishes (Vegetable
  Medley, Eggplant Parmesan), likes raw tomato and the other six. Only
  villager with two tomato loves.
- **1 Love, likes everything else:** Lewis (Vegetable Medley; also the
  sender of the Spaghetti and Eggplant Parmesan recipes), Robin
  (Spaghetti), Shane (Pizza).
- **1 Love with a black mark:** Leah (loves Vegetable Medley, **hates
  Pizza**), Sam (loves Pizza, dislikes raw Tomato).
- **Likes all 9, loves none (19):** Alex, Caroline, Clint, Demetrius,
  Dwarf, Emily, Evelyn, George, **Gus**, Kent, Linus, Marnie, Maru, Pam,
  Penny, Pierre, Sandy, Sebastian, Wizard. Harvey is the near-miss: likes
  8, dislikes Pizza. Note for our §7 choices: Gus, Maru, Demetrius,
  Sebastian, and Caroline love *no* vanilla tomato item — their heirloom
  Loves in this mod are our invention, argued from background, not pattern.
- **Dislikes raw only:** Abigail, Haley, Jas, Vincent (all like every
  cooked tomato dish — cooking "fixes" vegetables for them).
- **Elliott:** likes everything except Pizza (Dislike).
- **Anti-cooked trio:** Willy dislikes 7 of 8 dishes (likes Fish Stew,
  likes raw Tomato); Krobus and Leo dislike all 8 dishes but like raw
  Tomato.

## Soup comparators (for a bisque decision)

| Soup | Love | Notes |
| --- | --- | --- |
| Pumpkin Soup (Pumpkin + Milk; **Robin 7♥ mail**) | **Sebastian** | Robin *sends* it; her son loves it. Robin herself only Likes it. |
| Lobster Bisque (Lobster + Milk; Queen of Sauce, also **Willy 9♥ mail**) | — | The existing bisque is loved by nobody; liked by 32, disliked by Krobus/Leo. Willy *sends* the recipe and Likes the dish (item 730 is in his personal Like list, overriding his Cooking-category Dislike) — he does not Love it; his Loves are Catfish, Octopus, Sea Cucumber, Sturgeon, Pumpkin, Diamond, Gold/Iridium Bar, Mead. Recipe-sender ≠ Loved is a recurring vanilla pattern (cf. Robin/Pumpkin Soup). |
| Tom Kha Soup (Coconut + Shrimp + Common Mushroom) | **Penny, Elliott** | Elliott also loves Lobster and Crab Cakes — the fancy-coastal-soup profile. |
| Parsnip Soup | **Pam** | Pierre hates it. |
| Chowder, Trout Soup, Fish Stew, Algae/Moss Soup | — | Soup Loves are rare: 3 soups of 8 have any. |

## What this means for our mod

1. **§7.2's baseline is exactly right for raw heirlooms:** 29 Like, 5
   Dislike, 0 Love comes free from the Vegetable category. Any raw-fruit
   Loved entry we add is a deliberate promotion, and 100g+ is a stricter
   bar than vanilla ever sets (it gives Loved to the 40g Hot Pepper).
2. **Every cooked dish we add will be Disliked by Krobus and Leo, and
   usually Willy, with no work from us** — they dislike the Cooking
   category. Test plans should expect exactly that trio, not "liked by
   everyone."
3. **Evidence-ranked candidates for a tomato soup/bisque Love:**
   Jodi (only double tomato-lover, family cook) > Lewis (loves Vegetable
   Medley, sends two tomato recipes) ≈ Robin (loves Spaghetti, sends the
   Pumpkin Soup recipe) > Sebastian (the one soup-lover, via Pumpkin
   Soup; likes all 9 tomato items; hates Goat Cheese, so keep goat cheese
   out of his dish) > Elliott/Penny (soup lovers by Tom Kha) > Gus (chef,
   but vanilla gives him no tomato Love at all — pure background argument).
4. **Leah hates Pizza.** She is already a Loved recipient on two of our
   three dishes; the matrix argues against making her the universal
   tomato-dish lover.

---

# Part II — This mod's gifting criteria (normative)

Moved here from `docs/requirements.md` so this file is the single source of
truth for the gifting rules it covers: **raw heirlooms, Heirloom Caprese,
and Heirloom Cherry Salad**. The requirements doc keeps one-line summaries
with pointers here. (Heirloom Tomato Bisque's gifting criterion remains in
requirements §7.6.) Requirements-doc section numbers below are written as
"requirements §…".

## Raw heirloom fruit: vanilla baseline, premium Loved exceptions

Decision: heirlooms inherit vanilla crop gifting. Only high-value fruit
earns Loved status, split by character background. Vanilla reference
points (verified Nov 2026; full matrix in Part I above):

- Raw vanilla tomato is **Liked (+45)** by 29 villagers — including Leah,
  Maru, Demetrius, and Gus — **Loved (+80) by nobody**, and Disliked (−20)
  by the vegetable-averse Abigail, Haley, Jas, Sam, and Vincent. This is
  mostly the universal All-Vegetables Liked taste plus per-villager
  vegetable dislikes, driven by the item's Vegetable category.
- Leah already loves Salad, Goat Cheese, Vegetable Medley, Stir Fry,
  Poppyseed Muffin, Truffle, and Wine — fresh, garden-and-forage food.
- Maru already loves Cauliflower, Cheese Cauliflower, Pepper Poppers, and
  Strawberry alongside her tech/mineral gifts; her father Demetrius, the
  valley's scientist, loves Strawberry and Bean Hotpot and likes all fruit.
- Gus, the Stardrop Saloon chef, loves cooked dishes (Escargot, Fish Taco,
  Tropical Curry) and Orange; no raw vegetable is a Loved gift for him.
- Mayor Lewis is tomato-adjacent in exactly one way: he loves Vegetable
  Medley (Tomato + Beet; also loved by Jodi and Leah) and Hot Pepper, but
  only Likes raw tomato. His vanilla pattern is raw = Liked, cooked tomato
  dish = Loved — the Heirloom Caprese criterion below follows it and
  rule 2 does not promote him.
- A cheap regrowing Loved gift is not new: Shane (and Lewis) love Hot
  Pepper — Summer, 5 days to first harvest, 3-day regrow, 40g. The
  two-gifts-per-week limit, not price, is vanilla's main romance brake.

Requirements:

1. **Baseline comes from the category, not hand-written lists.** Every
   heirloom fruit is category Vegetable (requirements §7.1), so it must
   land exactly where the vanilla tomato lands for every villager unless
   rule 2 or the dish criteria below say otherwise. Do not copy long Liked
   lists into `Data/NPCGiftTastes`; instead verify in-game (or against the
   gift-taste data) that each fruit matches the vanilla tomato for a
   sample of Likers and all five Dislikers. Quality multipliers, the
   two-per-week cap, and the birthday multiplier are vanilla mechanics and
   need no mod data. This baseline also applies to our basil
   (requirements §7.4), which is Loved by nobody.
2. **Loved exceptions are earned at 100g+.** A variety whose final
   requirements-§5.1 base sell price (after rounding and clamping, normal
   quality) is **100g or more** is also a Loved gift as follows — and no
   variety below 100g is Loved by anyone as a raw fruit:
   - **Leah, Maru, and Demetrius** love *any* 100g+ heirloom. (Leah: prized
     garden produce. Maru and Demetrius: the science household appreciating
     a premium cultivar.)
   - **Gus** loves only 100g+ heirlooms whose sourced fruit type
     (requirements §4.1) is **beefsteak/slicing or paste** — a chef's
     cooking tomatoes. 100g+ cherry/small types, and everything under
     100g, stay Liked for Gus.
   These are the *only* raw-fruit `Data/NPCGiftTastes` edits the mod makes:
   item-level Loved entries that must visibly override the baseline Liked
   taste for those four villagers and for no one else. In particular Lewis
   stays Liked for every raw heirloom, at any price; his Loved entry is
   for the cooked Heirloom Caprese only.
3. **Record it per variety.** The requirements-§9 checklist entry states
   the final price, whether the 100g threshold is met, the fruit type, and
   therefore exactly which of Leah / Maru / Demetrius / Gus (if any) love
   it. If a requirements-§8 balance adjustment later moves a price across
   100g, the gift entry changes with it and the change is noted — price
   and Loved status never drift apart.
4. **Balance note.** Even the cheapest qualifying (100g+, 12–14-day,
   Summer-only, regrowing) Loved gift here is slower and far pricier than
   Shane's Hot Pepper, so no extra romance-speed mitigation is required.
   The threshold exists to keep varieties distinct, not to protect a
   difficulty curve vanilla itself does not have.

## Heirloom Caprese: gift-taste criterion

Dish definition stays in requirements §7.3; only its gifting rule lives
here. As a cooked dish it inherits the universal All-Cooking Liked taste
for most villagers. Explicit `Data/NPCGiftTastes` Loved entries are added
for **Leah, Gus, and Lewis only** (Leah already loves Salad and Vegetable
Medley; Gus loves fine cooked dishes and sends the recipe; Lewis loves
the cooked-tomato Vegetable Medley while only liking raw tomato). Jodi,
who also loves Vegetable Medley, is deliberately *not* added — the Loved
list stops at three named, argued cases rather than importing Vegetable
Medley's whole list. Nobody else is hand-listed in either direction;
villagers with category-level cooking exceptions keep their vanilla
behaviour (expect Krobus, Leo, and Willy to Dislike it, per Part I).
Verify Leah (Loved), Gus (Loved), Lewis (Loved for Caprese but only Liked
for a 100g+ raw beefsteak), three ordinary Likers, and one vanilla
cooking-exception villager in testing.

## Heirloom Cherry Salad: gift-taste criterion

Dish definition stays in requirements §7.5; only its gifting rule lives
here. Universal All-Cooking Liked baseline, with explicit Loved entries
for **Leah and Harvey only** (Leah already loves vanilla Salad; Harvey
loves Super Meal and Pickles — the health-food end of the vanilla menu).
Jodi (loves Vegetable Medley) and Caroline (mails Vegetable Medley, loves
Green Tea) were considered and deliberately not added: two argued names
keep this dish's list distinct from Caprese's Leah/Gus/Lewis, with Leah as
the only overlap, justified separately for each dish. Expect Krobus, Leo,
and Willy to Dislike it per Part I. Verify Leah (Loved), Harvey (Loved),
three ordinary Likers, and one vanilla cooking-exception villager.
