# Mapping Draft Review

## Summary

Input: `GenMTG/docs/mapping-draft.tsv`

The draft is usable as a complete first pass:

- 449 game IDs mapped.
- 449 unique MTG names.
- No MTG lands detected.
- Role split: 418 creatures, 5 spells, 26 legendary creatures.

It is not ready for final image download yet. The algorithm got broad structure right, but a taste pass is needed before assets and Lua generation.

## Highest Priority Fixes

### Gen 2 Spell Slots

The five draft spell slots were valid nonland spells, but the flavor was weak. User suggested highly iconic Old School cards; the override seed now applies four Power Nine cards plus `Sol Ring`.

| Game ID | Game name | Current MTG | Issue | Suggested direction |
| --- | --- | --- | --- | --- |
| `2304` | Shenmo Lamp | Future Sight | Too abstract for will-o'-the-wisp/lamp flavor. | Override: `Black Lotus`. |
| `2314` | Winter Night Ringtone | Planar Collapse | Does not read as music/winter. | Override: `Time Walk`. |
| `2319` | Bing Lingling | Second Chance | Mechanically fine, weak snow-wand flavor. | Override: `Ancestral Recall`. |
| `2406` | Mirror Eyes | Grip of Chaos | Chaotic, but not mirror/scry/earth-sensing. | Override: `Timetwister`. |
| `2408` | Luxiang Division | Insidious Dreams | Not music/machine flavored. | Override: `Sol Ring`. |

### Halloween/Event Cards

Some Halloween mappings are strong, but a few are obviously off-theme.

| Game ID | Game name | Current MTG | Issue | Suggested direction |
| --- | --- | --- | --- | --- |
| `1314` | Cloud Demon | Adun Oakenshield | Human knight does not fit demon/thundercloud. | Demon, horror, spirit, elemental, or storm creature. |
| `1321` | Giant Mouth Demon | Paladin en-Vec | Holy knight is opposite of demon flavor. | `Lord of the Pit`, `Abyssal Horror`, `Demonic Hordes`, or similar. |
| `1320` | Felfire Bat | Lurker | Generic beast, weak bat/fire flavor. | Bat, vampire, imp, demon, or fire creature. |
| `1317` | So cute | Karmic Guide | Good spirit card, but too noble/angelic for playful ghost. | Could keep, but a ghost/spirit with lighter flavor may fit better. |

### Divine/God Cards

These are currently legendary creatures, but two do not match the god element well.

| Game ID | Game name | Current MTG | Issue | Suggested direction |
| --- | --- | --- | --- | --- |
| `100001` | Rain God | Sliver Queen | Iconic, but not rain/water. | Blue or sea-themed legendary if possible; otherwise an iconic Elder Dragon may be better. |
| `100002` | Luna Aragos | Cao Cao, Lord of Wei | Weak moon/mystic flavor. | `Nicol Bolas`, `Crovax`, `Selenia`, or another dark/mystic legend. |
| `100003` | Fire God | Rorix Bladewing | Strong fit. | Keep. |
| `100004` | Grass God | Silvos, Rogue Elemental | Strong fit. | Keep. |

## Broad Pattern Problems

### Animal Slots Mapped To Humans

Many low-rarity animal/beast cards got human soldiers, wizards, clerics, or druids. These are legal creatures, but they will feel wrong as replacements for creature-monster cards.

Examples:

| Game ID | Game name | Current MTG |
| --- | --- | --- |
| `1107` | Electric Dog | Imagecrafter |
| `1108` | Ice Cave Rat | Pikemen |
| `1116` | Bouncing Mouse | Standing Troops |
| `1120` | Big-eared monkey | Benalish Hero |
| `2101` | Seedstealing Beast | Icatian Scout |
| `2110` | Double-finned dragon | Harvest Mage |
| `2311` | Sleepy Otter | Raven Guild Master |
| `2402` | Cactus Beast | Hermit Druid |
| `2403` | Phantom Beast | Hell-Bent Raider |
| `3402` | Damu | Fugitive Druid |
| `4302` | Mysterious Dragon | Rebel Informer |
| `5408` | New Lima | Beacon of Destiny |
| `7410` | Blade Scale Shark | Reckless Embermage |

Suggested rule change:

- Penalize `Human`, `Soldier`, `Cleric`, `Wizard`, `Advisor`, and similar humanoid types unless the vanilla name/description is humanoid.
- Prefer MTG creature types that match the vanilla name: Beast, Cat, Dog/Hound, Bird, Fish, Whale, Serpent, Dragon, Insect, Spider, Wurm, Elemental, Spirit, Horror, Demon, Ooze, Plant, Treefolk.

### Super Rare Slots Need More Iconic Cards

Many rarity `3` slots are mapped to obscure old rares rather than exciting/iconic cards.

Examples to review:

| Game ID | Game name | Current MTG | Issue |
| --- | --- | --- | --- |
| `1403` | Mind Reading Cat | Savannah Lions | Cat fit, but not mind-reading/super-rare feeling. |
| `1408` | Voltage Turing | Patron Wizard | Humanoid wizard, weak electric/machine fit. |
| `2404` | Ancient Rock Whale | Spellbane Centaur | Not whale/ancient enough. |
| `3405` | Hyrule | Lord of Atlantis | Iconic, but creature flavor mismatch. |
| `5404` | Icefang Mammoth | River Merfolk | Poor mammoth/ice fit. |
| `6405` | Giant Mouth Rock | Brushwagg | Funny, but likely too silly for super rare. |
| `7413` | Shimmering Lion | Vodalian War Machine | Poor lion/psychic fit. |

Suggested rule change:

- For rarity `3`, bias toward memorable rares, dragons, angels, demons, spirits, elementals, wurms, and legends.
- Avoid small humanoids and utility creatures unless the vanilla slot is humanoid.

## Suggested Override Workflow

1. Create `GenMTG/docs/mapping-overrides.tsv` with columns:
   - `game_card_id`
   - `mtg_name`
   - `reason`
2. Start with:
   - the 5 Gen 2 spell slots,
   - the 10 Halloween cards,
   - the 4 divine/god cards,
   - any super-rare mapping that feels obviously wrong.
3. Update `build_mapping_draft.py` to apply overrides by exact MTG name.
4. Generate `mapping-final.tsv`.

## Override Seed

`GenMTG/docs/mapping-overrides.tsv` now contains 70 validated overrides.

Validation status:

- All override MTG names exist in the cached Scryfall source.
- No override maps to an MTG land.
- No duplicate game IDs.
- No duplicate MTG names inside the override set.

Covered areas:

- 5 Gen 2 spell slots.
- 10 Halloween/event cards.
- 4 divine/god cards.
- Several obvious animal-to-human mismatches.
- Several super-rare cards that needed more iconic or creature-appropriate choices.

## Changelog

- 2026-06-20: Initial review of algorithmic mapping draft.
- 2026-06-20: Expanded and validated override seed.
- 2026-06-20: Updated Gen 2 spell overrides to use iconic Old School cards.
- 2026-06-20: Replaced `Mox Sapphire` with `Sol Ring` for Luxiang Division.
