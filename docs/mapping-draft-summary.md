# Mapping Draft Summary

## Generated Files

- Draft mapping: `GenMTG/docs/mapping-draft.tsv`
- Final mapping: `GenMTG/docs/mapping-final.tsv`
- Scryfall source cache: `GenMTG/assets/source/scryfall-oldschool-premodern.json`
- Pool summary: `GenMTG/docs/scryfall-pools-summary.md`
- Generator script: `GenMTG/tools/build_mapping_draft.py`

## Scryfall Source

Query:

```text
lang:en game:paper date<=2003-05-26 -is:digital
```

Pool sizes:

- Source cards: 6327
- Creature pool, no lands: 3117
- Spell pool, instants/sorceries/enchantments only, no creatures/lands: 2553
- Legendary creature pool: 200

## Draft Mapping Counts

- Total game IDs mapped: 449
- Unique MTG names assigned: 449
- Creature mappings: 418
- Spell mappings: 5
- Legendary mappings: 26
- Halloween event mappings: 10
- Christmas-flavored mappings: 24

## Final Mapping Counts

- Total game IDs mapped: 449
- Unique MTG names assigned: 449
- Override rows applied: 70
- MTG lands assigned: 0
- Duplicate MTG names: 0

## Gen 2 Spell Assignments

Draft assignments:

| Game ID | Game name | MTG card | MTG type |
| --- | --- | --- | --- |
| `2304` | Shenmo Lamp | Future Sight | Enchantment |
| `2314` | Winter Night Ringtone | Planar Collapse | Enchantment |
| `2319` | Bing Lingling | Second Chance | Enchantment |
| `2406` | Mirror Eyes | Grip of Chaos | Enchantment |
| `2408` | Luxiang Division | Insidious Dreams | Instant |

Final override assignments:

| Game ID | Game name | MTG card | MTG type |
| --- | --- | --- | --- |
| `2304` | Shenmo Lamp | Black Lotus | Artifact |
| `2314` | Winter Night Ringtone | Time Walk | Sorcery |
| `2319` | Bing Lingling | Ancestral Recall | Instant |
| `2406` | Mirror Eyes | Timetwister | Sorcery |
| `2408` | Luxiang Division | Sol Ring | Artifact |

## Notes

- This is an algorithmic first pass, not a hand-curated final list.
- It intentionally avoids MTG lands.
- It prefers Old School 93/94 plus Pre-Modern-era cards.
- Special divine/commemorative cards use legendary creatures.
- Event matching uses flavor keywords, so some choices will need human review.
- `mapping-overrides.tsv` contains a validated override seed for the next final-mapping pass.
- The 5 Gen 2 spell slots now deliberately use iconic Old School cards.
- The final map currently includes four Power Nine cards plus `Sol Ring`. The remaining Moxen are intentionally not forced into creature/legendary slots yet.

## Changelog

- 2026-06-20: Generated initial mapping draft summary.
- 2026-06-20: Noted expanded override seed.
- 2026-06-20: Noted iconic Old School spell-slot overrides.
- 2026-06-20: Added final mapping counts and final spell-slot assignments.
- 2026-06-20: Replaced `Mox Sapphire` with `Sol Ring` for Luxiang Division.
