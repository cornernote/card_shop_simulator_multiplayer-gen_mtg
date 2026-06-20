# GenMTG Decisions

## Decisions

- Build `GenMTG` as a total vanilla-card replacement mod, not as a separate all-MTG set.
- Use vanilla `CardID` values from the game's existing card pools so opened packs, special packs, event cards, and commemorative cards still correspond to their normal acquisition routes.
- Include gens 1-7, divine/god cards, holiday/event/special pack cards, souvenir/commemorative cards, and any other collectible card IDs found in the current installed game.
- Use `D.UseBigImage = true` for MTG card images unless in-game testing proves a better texture strategy.
- Source MTG card metadata and image URIs from Scryfall.
- Use Old School 93/94 and Pre-Modern as the starting MTG source eras.
- Exclude all cards whose `type_line` includes `Land`.
- Creature-card slots should use cards whose `type_line` includes `Creature`.
- Gen 2 spell-card slots should generally use nonland spells whose `type_line` includes `Instant`, `Sorcery`, or `Enchantment`.
- Allow deliberate iconic Old School exceptions for the 5 Gen 2 spell-flavored slots because the project is a personal mod.
- Treat Gen 2 IDs `2304`, `2314`, `2319`, `2406`, and `2408` as spell-flavored slots for MTG mapping. The engine dump does not expose a hard spell flag, so this is a flavor/mapping decision.
- Special/event pack cards should receive MTG cards that match the event's tone when possible, while still avoiding lands. For example, Halloween-style cards can map to black/red/mystic creatures or spells; divine/god cards can map to iconic legendary creatures or mythic-scale spells.
- Divine/god and commemorative cards should use iconic legendary creatures.
- Use original MTG rules/flavor text for descriptions first; adjust only if the game UI makes it painful.
- Map game elements from MTG colors/flavor rather than preserving vanilla elements by default.
- Use vanilla-ish card values by rarity/pool rather than market-price-driven values.
- Treat this as a personal local mod, not a public Workshop release.
- Preserve game rarity bands where possible:
  - `11xx`, `21xx`, etc. map to common.
  - `12xx`, `22xx`, etc. map to uncommon/rare depending on the source list wording.
  - `13xx`, `23xx`, etc. map to rare.
  - `14xx`, `24xx`, etc. map to super rare.
- Use MTG power/toughness when available for creature cards, scaled to game-like values in implementation.
- For noncreature spells, derive simple display stats from mana value and rarity rather than forcing invalid creature stats from MTG.
- Keep mapping data in a structured file before generating Lua.
- Generate `mapping-final.tsv` from the draft plus `mapping-overrides.tsv`; do not hand-edit the final mapping directly.

## Open Questions

- Whether to force the remaining Power Nine Moxen into the mod. Current decision uses four Power Nine cards plus `Sol Ring` in the five Gen 2 spell-flavored slots, but leaves `Mox Pearl`, `Mox Sapphire`, `Mox Jet`, `Mox Ruby`, and `Mox Emerald` out because the remaining slots are creature/legendary commitments.

## Changelog

- 2026-06-20: Initial decisions captured before implementation.
- 2026-06-20: Updated scope to total card-pool replacement after user clarification.
- 2026-06-20: Recorded user decisions for source eras, event flavor matching, spell types, legendary special cards, original descriptions, and element mapping.
- 2026-06-20: Recorded vanilla-ish pricing and personal-use release decisions.
- 2026-06-20: Recorded Gen 2 spell-flavored mapping slots from detailed runtime inventory.
- 2026-06-20: Added iconic Old School exceptions for Gen 2 spell-flavored slots.
- 2026-06-20: Recorded final mapping generation from overrides and the open remaining-Moxen taste decision.
- 2026-06-20: Replaced `Mox Sapphire` with `Sol Ring` for Luxiang Division.
