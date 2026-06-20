# Inventory Dump

## Helper Mod

Temporary helper mod: `GenMTGInventoryDump`

Current helper version: `0.2.0`

Purpose:

- Dump every registered card the registry exposes.
- Capture fields needed for the GenMTG mapping pass.
- Help identify Gen 2 spell cards and special/event cards.

## How To Run

1. Launch Card Shop Simulator Multiplayer.
2. Open the Mods menu.
3. Enable `GenMTG Inventory Dump`.
4. Enter a game.
5. Wait for the on-screen message from `GenMTGInventoryDump`.
6. Check for:

   `CardShopSim/Mods/GenMTGInventoryDump/card_inventory_dump.tsv`

## Expected Output

The TSV should include:

- `CardID`
- `Name`
- `Description`
- `Gen`
- `Rarity`
- `Elements`
- `BaseAttack`
- `BaseHealth`
- `CardValueMulti`
- `UseBigImage`
- texture paths

## Notes

- The helper tries `GetCardDataAllID()` first.
- It also scans likely ID ranges if the registry does not expose an ID list cleanly.
- Version `0.2.0` tries `GetCardData(id, outStruct)`, multiple return values from `GetCardData(id)`, and `GetCardDataName(id)`.
- If direct file writing is blocked by Lua runtime restrictions, the helper logs the first rows to screen and needs a fallback logging path.

## Changelog

- 2026-06-20: Created inventory dump instructions.
- 2026-06-20: Updated notes for helper version `0.2.0`.
