# Iconic Curation Review

## Summary

The first playable build worked, but too many super rare and special-feeling slots still mapped to obscure MTG cards. This pass added a larger curated override set focused on recognizable Old School and Pre-Modern cards while keeping the existing constraints:

- No MTG lands.
- Creature-style slots stay creature-style unless already approved as a spell/artifact exception.
- Values remain vanilla-ish by preserving the original game card ID's `CardValueMulti`.
- Overrides remain in `mapping-overrides.tsv`; `mapping-final.tsv` and `main.lua` are generated outputs.

## Major Upgrades

Examples of new or confirmed iconic assignments:

| Game ID | Game card | MTG card |
| --- | --- | --- |
| `1322` | Baijiaoling | Shivan Dragon |
| `1323` | Xiaogu | Juzám Djinn |
| `3406` | Sunshine Holiday·Freya | Serra Angel |
| `3409` | Three types of balls | Birds of Paradise |
| `4402` | Tongue Lizard | Force of Nature |
| `4403` | Ancient Dog Scorpion | Masticore |
| `4405` | Crystal Shell Turtle | Morphling |
| `4406` | Forest Overlord | Spiritmonger |
| `5402` | Mushroom fish | Hypnotic Specter |
| `5406` | Dead Steel Stone | Karn, Silver Golem |
| `5407` | Hayate Fist Boy·Hikaru Nitta | Royal Assassin |
| `6307` | Lala | Rofellos, Llanowar Emissary |
| `7406` | Illusory Law Divine Envoy·Zhimiao | Exalted Angel |
| `7407` | Hot-Blooded Style·Fire Sun | Ball Lightning |

## Validation

- Override rows: 149.
- Final mapped cards: 449.
- Unique MTG names: 449.
- MTG lands: 0.
- Lua `RegisterCardData` calls: 449.
- Texture paths in Lua: 449.
- Missing texture files: 0.
- Local card images after stale cleanup: 449.

## Notes

- `Shivan Dragon` and `Juzám Djinn` now hold the two highest-value Halloween super rare slots.
- The second scan targeted remaining super-rare filler and rare slots where the MTG card was obscure, humanoid, or weakly matched.
- This is still a taste pass, not a claim that every slot is final. Lower-rarity cards still include more obscure MTG creatures where the vanilla slot was ordinary.

## Second Pass Upgrades

Examples from the second scan:

| Game ID | Game card | MTG card |
| --- | --- | --- |
| `1303` | Fire Pattern Wolf | Kird Ape |
| `1311` | Rainbow cat fish | Merfolk Looter |
| `1326` | Berry Deer | Wild Mongrel |
| `2301` | Valley Hedgehog | Spike Feeder |
| `2302` | Tsunami Otter | Man-o'-War |
| `3301` | Huonudi | Flametongue Kavu |
| `4303` | Thundermon | Dromar, the Banisher |
| `4304` | Bitter Demon | Phyrexian Negator |
| `4314` | Clockwork Duck | Phyrexian Dreadnought |
| `5310` | Glory | Serra Avatar |
| `6303` | Radix Snake Flower | River Boa |
| `6304` | Bubbles | Bottle Gnomes |
| `6305` | Bubble Jellyfish | Ophidian |
| `6409` | Double leaf strain | Wall of Blossoms |
| `7303` | Shadow Ember | Darigaaz, the Igniter |
| `7304` | Sugar Horse | Arrogant Wurm |
| `7306` | Blazing Wolf Split | Crosis, the Purger |
| `7310` | Star Jumping Monkey | Gorilla Shaman |
| `7313` | Thunder Explosion Charge·Wei Ming | Squee, Goblin Nabob |

## Changelog

- 2026-06-20: Added first broad iconic curation pass and rebuilt the playable mod.
- 2026-06-20: Added second iconic curation pass focused on rare/super-rare filler and rebuilt the playable mod.
