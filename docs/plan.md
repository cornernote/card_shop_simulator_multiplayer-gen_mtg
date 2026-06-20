# GenMTG Plan

## Goal

Create a Card Shop Simulator Multiplayer mod named `GenMTG` that replaces the game's full collectible card pool with classic Magic: The Gathering theming:

- Use classic MTG creature cards for creature-style cards across all normal and special pools.
- Use classic MTG spell cards for Gen 2 spell-card slots.
- Include generation packs, special/event/holiday packs, divine/god cards, souvenir/commemorative cards, and any other collectible cards in the current installed game.
- Exclude MTG lands.

## Task Families

### 1. Confirm Full Target Card Inventory

- Start from the official README's existing ID list, but treat it as a baseline rather than the final truth.
- Build a structured inventory with:
  - `card_id`
  - game generation or pool/category
  - vanilla name
  - vanilla rarity
  - vanilla element
  - source pool: generation, holiday/event, divine/god, souvenir/commemorative, or other special pool
  - target role: `creature`, `spell`, `legendary`, `event`, or `unknown`
- Validate whether the game has newer IDs beyond the README's 2026-01-08 list.
- Include known non-generation IDs from the README:
  - `100001-100004` divine/god cards.
  - `9001-9074` souvenir/commemorative cards.
  - `1314-1323` holiday pack cards, which overlap Gen 1 ID space.
- Search for current game data or runtime-visible IDs so seasonal/special cards added after the README are not missed.
- Resolve the Gen 2 spell-card subset before final mapping.
  - Current decision: use `2304`, `2314`, `2319`, `2406`, and `2408` as spell-flavored slots.

### 2. Define MTG Source Pool

- Use Scryfall as the canonical structured data source.
- Start with Old School 93/94 and Pre-Modern as the MTG source eras.
- Build candidate pools:
  - Creature pool: `type_line` contains `Creature`, does not contain `Land`.
  - Spell pool: `type_line` does not contain `Land` or `Creature`, and contains `Instant`, `Sorcery`, or `Enchantment`.
  - Legendary/iconic pool: iconic legendary creatures for divine/god and commemorative slots.
  - Event pool: cards with flavor matching holiday/special packs when possible.
- Prefer iconic/classic cards that visually fit the vanilla element and rarity.
- Avoid duplicates unless a deliberate alternate-print policy is chosen.

### 3. Create Mapping Rules

- Map game generations to MTG groups in a way that feels curated rather than random.
- Map special/event pools to MTG flavor groups:
  - Divine/god cards: iconic legendary creatures.
  - Holiday/Halloween-style cards: dark, ghostly, demonic, pumpkin/fire, bone, bat, and mushroom-adjacent MTG cards where available.
  - Souvenir/commemorative cards: iconic chase cards, legendary creatures, or a curated tribute set.
- Preserve vanilla rarity distribution to keep pack behavior familiar.
- Map MTG color identity to game elements:
  - White: `Psychic`, `Mystic`, or `Animal` depending on card flavor.
  - Blue: `Water`, `Ice`, `Psychic`.
  - Black: `Mystic`, `Psychic`, `Earth`.
  - Red: `Fire`, `Dragon`, `Rock`.
  - Green: `Grass`, `Animal`, `Insect`.
  - Artifact/colorless: `Steel`, `Rock`, `Mystic`.
  - Multicolor: choose by dominant flavor or first color after manual review.
- Creature stats:
  - Base from MTG power/toughness when available.
  - Scale up to the game's display range by rarity/generation.
- Spell stats:
  - Use low or symbolic stats derived from mana value and rarity.
  - Make descriptions clear that they are spells, not creatures.
- Special card stats:
  - Preserve the original rarity tier.
  - Keep values vanilla-ish by rarity/pool.

### 4. Prepare Assets

- Download local MTG card images only after implementation is approved. Completed for the first playable build.
- Use a stable folder layout such as:
  - `GenMTG/images/cards/<card_id>-<scryfall_id>.jpg`
  - `GenMTG/assets/source/scryfall_cards.json`
  - `GenMTG/docs/mapping-final.tsv`
  - `GenMTG/docs/current-card-inventory.md`
- Generate or create `preview.png`.
- Check whether image files render acceptably with `D.UseBigImage = true`.

### 5. Generate Lua

- Generate Lua from the mapping data for maintainability.
- Use the official card registry API and local `dir` image paths.
- Log load success/failure through `MOD.Logger` when available.
- Keep implementation compatible with the examples' simple Lua style.

### 6. Verify

- Static checks:
  - All mapped IDs are unique.
  - No MTG lands are present.
  - All texture files exist.
  - Every discovered vanilla card ID has a replacement or an explicit skip reason.
  - All rarity/element names map to valid `UE` enum names.
- In-game checks:
  - Mod appears in the Mods menu with preview.
  - Generation packs open without registry errors.
  - Special/event/holiday packs open without registry errors.
  - Divine/god and souvenir/commemorative cards render correctly if obtainable/testable.
  - Gen 2 spell-card slots show spell cards.
  - Common/uncommon images are not badly cropped.
  - Cards have reasonable names, descriptions, stats, and values.

## Dependencies

- Current full card inventory for special/event packs and any cards added after the README.
- Scryfall availability for metadata/image collection.
- Local game testing for visual quality and pack behavior.

## Open Questions

- No planning blockers remain.
- In-game testing still needs to confirm visual fit, pack behavior, and whether any UI text needs shortening.

## Changelog

- 2026-06-20: Initial planning document written from official docs, local examples, and user requirements.
- 2026-06-20: Updated scope to replace every game card, including special packs and non-generation pools.
- 2026-06-20: Recorded user choices for MTG eras, spell types, event flavor matching, legendary special cards, original text, and element mapping.
- 2026-06-20: Generated first algorithmic Scryfall mapping draft for 449 game IDs.
- 2026-06-20: Generated first playable local mod build with 449 registrations and 449 local card images.
