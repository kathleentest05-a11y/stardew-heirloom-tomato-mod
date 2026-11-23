# AGENTS.md

## Repository purpose

This repository is a Stardew Valley 1.6+ Content Patcher content pack:

- It is not a C# SMAPI framework mod and does not use PPJA, Json Assets, or Producer Framework Mod.
- Runtime identity and dependencies are declared in `manifest.json`.
- Runtime data patches live in `content.json` and `assets/json/*.json`.
- Translatable player-facing text lives in `i18n/default.json`.
- Fruit sprites, JSON data, and future crop/seed art belong under `assets/`.

Read `README.md` before making changes. Treat `docs/requirements.md` as the hard project specification and `docs/varieties.md` as the research/status record. Do not silently reverse decisions in those documents.

## Authoritative sources

Use these sources when Stardew or Content Patcher behavior is uncertain:

- SDV Modding Index: https://stardewvalleywiki.com/Modding:Index
- Content Patcher author guide: https://github.com/Pathoschild/StardewMods/blob/develop/ContentPatcher/docs/author-guide.md
- Stardew Modding Wiki: https://stardewmodding.wiki.gg/
- Stable release of the author guide: https://github.com/Pathoschild/StardewMods/blob/stable/ContentPatcher/docs/author-guide.md

Also consult the Stardew modding links in `README.md`. Prefer 1.6/game-data behavior and named official or reputable sources over forum answers or guessed field names.

## Working rules

1. Preserve the plain Content Patcher architecture. Do not add a C# project, SMAPI API calls, Json Assets, PPJA, or Producer Framework Mod.
2. Preserve save compatibility. The `UniqueID`, manifest `Version`, and shipped item/crop/seed string IDs are stable. Do not rename or recycle IDs after release.
3. Keep the `UniqueID` prefix convention for custom IDs, for example:
   `kathleentest05-a11y.HeirloomTomatoes_MortgageLifterTomato`
   and `_MortgageLifterTomato_Seed`.
4. Keep player-facing names, descriptions, and seed text in `i18n/default.json`. Reference them with `{{i18n:key}}`; do not hard-code English in JSON data when localization is available.
5. Use the repository's existing split structure:
   - `content.json` wires included patches and loaded assets.
   - `assets/json/tomatoes.json` registers fruit objects.
   - `assets/json/seeds.json` registers seed objects.
   - `assets/json/crops.json` registers crop behavior.
   - `assets/json/shop_data.json`, `recipes.json`, and `gift_data.json` hold those optional systems.
6. Use direct string IDs and explicit mod-owned textures for 1.6 data. Do not rely on numeric IDs or legacy 1.5 patterns.
7. Keep changes scoped. Update README or docs only when behavior, status, or project decisions actually change.

## Current implementation status

The repository contains provisional data for eight locked v1 varieties. Treat it as implementation-in-progress, not as all data being approved:

- Fruit objects and a placeholder 16x16 fruit spritesheet currently exist.
- Seed objects now have placeholder 16x16 seed packet art in `assets/sprites/objects.png` (indices 8–15); crop entries use draft growth-stage art in `assets/sprites/crops.png` (`SpriteIndex` 0–7).
- The §7.4 supporting basil crop exists (provisional numbers and art): leaves at object index 16, seed packet 17, crop `SpriteIndex` 8; grows Spring/Summer/Fall. The `BasilSource` config (`Auto`/`Ours`/`Cornucopia`, in `content.json`) sets dynamic tokens `ActiveBasil` and `BasilItemId`; today it only hides our basil seeds when Cornucopia's basil is active (`Cornucopia.MoreCrops` installed). The Caprese recipe will use `{{BasilItemId}}`.
- Seeds for all eight varieties are sold at Pierre's (`Data/Shops` key `SeedShop`) in Summer (basil seeds Spring–Fall) (`assets/json/shop_data.json`), priced from the seed object `Price` (shop price = 2× sell-back, per §5.2). Entries set `IgnoreShopPriceModifiers: true` because `SeedShop` otherwise doubles prices again (seen in-game 2026-11-22: 4× instead of 2×). Verified in-game after the fix 2026-11-22 (San Marzano 40g).
- Recipe and gift-taste files are placeholders and not implemented. Their empty patches and `content.json` includes are intentional scaffolding (author decision); SMAPI warns about them harmlessly. Leave them in place and fill them when those systems are built.
- No variety is considered fully approved until its `docs/requirements.md` §9 checklist is complete.

Do not describe Peacevine or Green Zebra as heirlooms, and never describe Sungold as heirloom, heritage, or open-pollinated. Sungold is a modern F1 hybrid. Record modern-bred status honestly.

## Variety and balance requirements

Do not add or change a variety based on a product description alone. Follow the requirements in `docs/requirements.md`:

- Use the real variety name only if it passes the trademark, PVP/patent, exclusive-brand, and generic-use gates in §3.
- Preserve the locked v1 selection unless the author records a new decision.
- Each approved variety needs an §9 record covering sources, legal research, DTM, weight, habit, prices, crop behavior, balance, and art.
- Use the §4.2 Stardew maturity formula and Summer season. Indeterminate is the default habit for the locked list.
- Use the §5.1 sell-price formula and §5.2 seed-price formula. Values must come from recorded arithmetic, not visual preference.
- Run the §8 Summer-1 balance check against vanilla tomato. The target is 0.9x to 1.75x vanilla profit per plant.
- For wide DTM or weight spreads, test both ends of the range and record both balance results.
- Do not edit sourced DTM or weight merely to force a desired in-game price or balance result.

When `docs/varieties.md` marks a search or checklist item outstanding, leave the variety marked provisional and do not silently claim approval.

## Art and asset conventions

- Preserve 16x16 object sprite sizing and use a whole-pixel placement.
- `assets/sprites/objects.png` indices are ordered 0–7 in the fruit-entry order, then 8–15 for the matching seed packets in that same variety order (e.g. San Marzano fruit = 0, San Marzano seed packet = 8). The sheet is 256x32: the second row holds supporting crops, starting with basil leaves = 16 and basil seed packet = 17.
- `assets/sprites/crops.png` (loaded as `Mods/{{ModId}}/Crops`) follows the vanilla crop-sheet layout: 256 px wide, each crop an 8-frame row of 16x32 sprites, two crops per sheet row (crop `SpriteIndex` i → x = (i % 2) × 128, y = (i ÷ 2) × 32), in the same variety order as the fruit, then supporting crops (basil = 8, at y = 128; sheet now 256x160). Frames: 0–1 seed variants, 2–5 growth phases, 6 harvest-ready, 7 regrowing after harvest.
- If the spritesheet changes, verify every `SpriteIndex` and update the documentation.
- Future crop textures must be mod-owned assets referenced explicitly; do not patch vanilla crop tilesheets unless the requirement and test context explicitly calls for it.
- Distinguish varieties visibly by shape and pattern, not by color alone.
- Do not copy proprietary seed-company logos, catalogue copy, or photography. Write fresh descriptions and use original or properly licensed art.

## JSON and patch conventions

- Keep valid JSON. Content Patcher interpolation and tokens are intentional; do not replace `{{...}}` syntax with resolved values.
- Keep the key structure in included files: an included file may contain a top-level `Changes` array.
- Use `Data/Objects`, `Data/Crops`, `Data/Shops`, `Data/CookingRecipes`, `Data/CraftingRecipes`, and `Data/NPCGiftTastes` only for the intended Stardew data target.
- Keep target-field edits minimal and preserve unrelated entries.
- Confirm field names and 1.6 schema against the official Content Patcher guide or Stardew wiki before editing unfamiliar structures.
- Use descriptive `LogName` values.
- Do not add placeholder or empty `"Entries"` patches as if they are implemented behavior.

## Validation

After changing JSON or runtime files, run:

```bash
./scripts/validate.sh
```

The script validates every JSON file under `assets/` and `i18n/`, plus `manifest.json` and `content.json`.

Build the release archive separately with:

```bash
./scripts/package.sh
```

Before release, also:

- Check that the archive contains one top-level `[CP] Heirloom Tomatoes/` folder.
- Confirm it contains only `manifest.json`, `content.json`, `assets/`, and `i18n/`.
- Test the pack by installing or symlinking it into a Stardew Valley 1.6+ `Mods` folder with SMAPI 4+ and Content Patcher 2.9+.
- Launch through SMAPI and confirm there are no pack-loading or target-data errors.
- Confirm the intended IDs, names, prices, crop phases, harvest behavior, sprites, shops, recipes, and gift tastes in-game.
- Do not commit `config.json`, `dist/`, or release ZIPs; they are generated and ignored.

GitHub Actions runs `scripts/validate.sh` on pushes and pull requests.
Packaging runs only for pull requests and `v*` tags:

- Pull requests produce beta artifacts.
- Version tags produce release-candidate artifacts.
- Nexus deployment is a separate production-only publishing step and is not configured in this repository yet.
