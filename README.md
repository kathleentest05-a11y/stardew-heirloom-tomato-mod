# Heirloom Tomatoes (Stardew Valley)

Adds several heirloom tomato varieties to Stardew Valley using Content Patcher.

> Status: skeleton only. `content.json` currently has no patches — tomato
> varieties, crops, sprites, and shop entries will be added once the mod
> requirements are fleshed out.

## Requirements

- Stardew Valley 1.6 or later
- [SMAPI](https://www.nexusmods.com/stardewvalley/mods/2400) 4.0.0 or later
- [Content Patcher](https://www.nexusmods.com/stardewvalley/mods/1915) 2.9.0 or later

No other framework is needed. In particular, this mod does **not** use
PPJA, Json Assets, or Producer Framework Mod — Stardew Valley 1.6 can add
custom objects and crops natively (see "How it works" below).

## Install (for testing)

This repository root is the content pack folder itself.

1. Install SMAPI and Content Patcher.
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
   `Heirloom Tomatoes 1.0.0 by kathleentest05-a11y | for Content Patcher`.
   With the skeleton `content.json`, nothing changes in-game yet.

For a Nexus release, zip the pack so the zip contains the
`[CP] Heirloom Tomatoes` folder (not loose files at the zip root).

## Project layout

| Path | Purpose |
| --- | --- |
| `manifest.json` | SMAPI mod identity. `ContentPackFor` marks this as a Content Patcher pack. |
| `content.json` | Content Patcher patches (`Format`, `Changes`). Currently empty. |
| `assets/` | Sprites and other files referenced by `content.json` (e.g. via `FromFile`). |
| `i18n/default.json` | Default (English) translatable strings, referenced as `{{i18n:key}}`. |

## How it works (1.6, post-PPJA)

Before 1.6, packs like PPJA needed Json Assets to register new items/crops
(with dynamically allocated numeric IDs) and Producer Framework Mod for
machine recipes. Since 1.6 the game itself supports custom content with
stable string IDs, so a plain Content Patcher pack is enough. Each heirloom
variety will typically be added with `EditData` patches to:

- `Data/Objects` — the tomato fruit and its seeds (name, price, edibility,
  category, sprite via a custom `Texture` + `SpriteIndex`).
- `Data/Crops` — seasons, growth phases, regrow, harvest item, trellis, etc.
  The entry key is the seed item's ID.
- `Data/Shops` — make the seeds buyable (e.g. at Pierre's).
- Sprites — loaded/edited with `Load` / `EditImage` (custom object spritesheet
  in `assets/`, plus a crop texture; crops can set a custom `Texture` instead
  of patching `TileSheets/crops`).

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
