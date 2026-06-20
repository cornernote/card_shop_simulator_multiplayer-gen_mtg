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

- Lua tries to fetch each existing registry card and only changes `Name`, `Description`, and `TexturePath`.
- Rarity, stats, value multipliers, elements, and other vanilla fields are preserved when the registry getter succeeds.
- Descriptions come from `docs/card-flavor.tsv` when present, with generated fallback blurbs for missing future rows.

## Changelog

- 2026-06-20: Generated first playable local mod build.
