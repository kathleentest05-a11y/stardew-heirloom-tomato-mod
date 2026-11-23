# Heirloom Tomatoes (Stardew Valley)

Adds several heirloom tomato varieties to Stardew Valley using Content Patcher.

> Status: provisional placeholder data for 8 heirloom tomato varieties.
> `content.json` adds the fruit objects, seeds, and summer crop definitions,
> plus shop data, recipes, and gift tastes. Fruit and seed objects use
> placeholder sprites in `assets/sprites/objects.png`, and crops use draft
> growth-stage sprites in `assets/sprites/crops.png`. Prices and art remain provisional
> until each variety's §9 sign-off (see `docs/requirements.md` §11).

## Requirements

- Stardew Valley 1.6 or later
- [SMAPI](https://www.nexusmods.com/stardewvalley/mods/2400) 4.0.0 or later
- [Content Patcher](https://www.nexusmods.com/stardewvalley/mods/1915) 2.9.0 or later
- [SpaceCore](https://www.nexusmods.com/stardewvalley/mods/1348) 1.28.4 or later

SpaceCore is used only through its Content Patcher-editable recipe data,
so Heirloom Caprese can take "any slicing heirloom tomato" as one
ingredient (vanilla recipes only accept fixed item IDs or categories).
This mod has no C# code and does **not** use
PPJA, Json Assets, or Producer Framework Mod — Stardew Valley 1.6 can add
custom objects and crops natively (see "How it works" below).

## Install (for testing)

This repository root is the content pack folder itself.

1. Install SMAPI, Content Patcher, and SpaceCore.
2. Copy (or symlink) this folder into your game's `Mods` folder and rename
   the copy to `[CP] Heirloom Tomatoes` if needed:

   ```text
   Stardew Valley/
     Mods/
       ContentPatcher/
       [CP] Heirloom Tomatoes/
         manifest.json
         content.json
         assets/
         i18n/
   ```

   On Linux you can symlink instead of copying, e.g.:

   ```bash
   ln -s "$PWD" "<game folder>/Mods/[CP] Heirloom Tomatoes"
   ```

3. Launch the game through SMAPI. The SMAPI console should list
   `Heirloom Tomatoes 1.0.0 by kathleentest05-a11y | for Content Patcher`
   with no Content Patcher errors for this pack. The 8 tomato fruit
   items and seed items exist in `Data/Objects`, with crop definitions in
   `Data/Crops`. Fruit and seed items use placeholder sprites; crops use
   draft growth-stage sprites. Spawn a fruit by its ID (e.g.
   `(O)kathleentest05-a11y.HeirloomTomatoes_GreenZebraTomato`) with a
   debug/item-spawn mod to check its name, price, and placeholder fruit
   sprite.

For a Nexus release, zip the pack so the zip contains the
`[CP] Heirloom Tomatoes` folder (not loose files at the zip root).

### Install a prerelease copy on Windows

From the repository root, copy only the runtime files into a separate
prerelease folder in the game's `Mods` directory. The scripts default to
`C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Mods`:

```powershell
.\scripts\install-prerelease.ps1
```

For a different game install location, pass its `Mods` path with
`-ModsPath "C:\path\to\Stardew Valley\Mods"`.

Before launching the game, move the production `[CP] Heirloom Tomatoes`
folder out of `Mods` (or otherwise disable it). Both folders use the same
mod `UniqueID`, so keeping both enabled can cause a duplicate-mod conflict;
the different folder name does not make them separate mods.

The script creates `[CP] Heirloom Tomatoes PRERELEASE` and copies
`manifest.json`, `content.json`, `assets/`, and `i18n/`. It does not copy
documentation or development files. Re-running it replaces the existing
prerelease folder contents. If the default Mods folder isn't found, pass
the path with `-ModsPath`.

To remove the prerelease copy, run:

```powershell
.\scripts\uninstall-prerelease.ps1
```

For a non-default game install, pass the same `-ModsPath` override. The
script asks for confirmation before deleting only the prerelease folder.
Use `-WhatIf` to preview the action.

## Project layout

| Path | Purpose |
| --- | --- |
| `manifest.json` | SMAPI mod identity. `ContentPackFor` marks this as a Content Patcher pack. |
| `content.json` | Content Patcher patches (`Format`, `Changes`). Loads the placeholder object and draft crop spritesheets and includes the fruit, seed, crop, shop, recipe, and gift-taste data. |
| `assets/` | Sprites and JSON data referenced by `content.json`. `assets/sprites/objects.png` holds provisional 16×16 fruit sprites (indices 0–7, in fruit-entry order) and seed packets (8–15, same order), then basil leaves (16), basil seed packet (17), Heirloom Caprese (18), and Heirloom Cherry Salad (19) on a second row. `assets/sprites/crops.png` holds draft crop growth sprites (256×160; crop `SpriteIndex` 0–7 in the same variety order, then basil = 8; two crops per row). |
| `i18n/default.json` | Default (English) translatable strings, referenced as `{{i18n:key}}`. |
| `docs/requirements.md` | Requirements: variety vetting, DTM conversion, pricing, and balance rules. |
| `docs/gift-tastes-tomatoes.md` | Research: vanilla gift tastes for raw tomato and all tomato dishes. |

## How it works (1.6, post-PPJA)

Before 1.6, packs like PPJA needed Json Assets to register new items/crops
(with dynamically allocated numeric IDs) and Producer Framework Mod for
machine recipes. Since 1.6 the game itself supports custom content with
stable string IDs, so a plain Content Patcher pack is enough. Each heirloom variety is currently represented with provisional `EditData`
patches to:

- `Data/Objects` — the tomato fruit and seed objects (name, price,
  edibility, category, and fruit sprite data).
- `Data/Crops` — seasons, growth phases, regrow, harvest item, trellis, etc.
  The entry key is the seed item's ID.
- `Data/Shops` — all eight seed packets at Pierre's (`SeedShop`), Summer only, no friendship gate (§5.2); basil seeds Spring–Fall (§7.4).
- Sprites — fruit and seed sprites are loaded from the placeholder object
  spritesheet; crop growth sprites from the draft crop spritesheet
  (`Mods/{{ModId}}/Crops`).

Optional, as needed: `Data/NPCGiftTastes`, `Data/CookingRecipes`,
`Data/CraftingRecipes`, and `Data/Machines` (keg / preserves jar / dehydrator
output rules — generic fruit/vegetable rules already cover juice, wine,
pickles, etc. for correctly categorized items).

IDs must be prefixed to stay unique across mods, by convention with the mod's
`UniqueID`, e.g. `kathleentest05-a11y.HeirloomTomatoes_BrandywineTomato`.

### Docs

- [Content Patcher author guide](https://github.com/Pathoschild/StardewMods/blob/stable/ContentPatcher/docs/author-guide.md)
- [Modding:Content Patcher (wiki)](https://stardewvalleywiki.com/Modding:Content_Patcher)
- [Modding:Objects (wiki)](https://stardewvalleywiki.com/Modding:Objects) — `Data/Objects` fields + worked crop example
- [Modding:Crops (wiki)](https://stardewvalleywiki.com/Modding:Crops)
- [Modding:Shops (wiki)](https://stardewvalleywiki.com/Modding:Shops)

## Before release

- Confirm `Author` and `UniqueID` in `manifest.json`. They are currently
  derived from the GitHub username (`kathleentest05-a11y`). Change them now if
  needed — changing `UniqueID` (or item IDs) after players have used the mod
  can break existing saves.
- Add a Nexus `UpdateKeys` entry (e.g. `Nexus:<mod id>`) once the mod page exists.

## License

MIT — see `LICENSE`.
