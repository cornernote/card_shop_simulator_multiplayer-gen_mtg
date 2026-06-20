# GenMTG Build Summary

- Generated Lua: `main.lua`
- Card images: `images/cards`
- Preview image: `preview.png`
- Cards registered: 449
- Images cached: 449
- Images downloaded: 0
- Stale images removed: 0

## Role Counts

- creature: 418
- legendary: 26
- spell: 5

## Generated Element Counts

- Animal: 54
- Dragon: 28
- Fire: 64
- Grass: 72
- Insect: 11
- Mystic: 66
- Psychic: 62
- Rock: 14
- Steel: 20
- Water: 58

## Notes

- Card value multipliers are preserved from the vanilla card IDs.
- Creature stats are derived from MTG power/toughness and clamped to vanilla rarity bands.
- Noncreature stats are derived from mana value and rarity, then clamped to vanilla rarity bands.
- Elements are derived from MTG type and color identity, with type keywords winning over color.
- Descriptions are short generated flavor-text blurbs, not original MTG rules text.

## Changelog

- 2026-06-20: Generated first playable local mod build.
