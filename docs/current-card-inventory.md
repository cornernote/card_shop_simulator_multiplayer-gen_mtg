# Current Card Inventory

## Source

- Detailed runtime dump: `GenMTG/docs/current-card-inventory.tsv`
- Dump helper version: `0.2.0`
- Result: IDs and detail fields were captured.

## Counts

The detailed runtime dump found 449 card IDs:

- Gen 1: 79
- Gen 2: 48
- Gen 3: 49
- Gen 4: 49
- Gen 5: 62
- Gen 6: 68
- Gen 7: 68
- Souvenir/commemorative: 22
- Divine/god: 4

## Gen 2 IDs

Runtime dump Gen 2 IDs:

```text
2101 2102 2103 2104 2105 2106 2107 2108 2109 2110 2111 2112 2113 2114 2115
2201 2202 2203 2204 2205 2206
2301 2302 2303 2304 2305 2306 2307 2308 2309 2310 2311 2312 2313 2314 2315 2316 2317 2318 2319
2401 2402 2403 2404 2405 2406 2407 2408
```

## Non-Generation IDs

Runtime dump non-generation IDs:

```text
9001 9002 9003 9004 9005 9006 9007 9008
9060 9061 9062 9063 9064 9065 9066 9067 9068 9069 9071 9072 9073 9074
100001 100002 100003 100004
```

## Newly Seen IDs Versus README Baseline

The runtime dump includes IDs beyond the README baseline, including:

- Gen 1: `1123`, `1124`, `1214`, `1215`, `1216`, `1329`, `1330`, `1331`, `1405`, `1406`, `1407`, `1408`
- Gen 2: `2406`, `2407`, `2408`
- Gen 3: `3407`, `3408`, `3409`
- Gen 4: `4408`, `4409`, `4410`
- Gen 5: `5408`, `5409`, `5410`
- Gen 6: `6409`, `6410`
- Gen 7: `7414`, `7415`

## Gen 2 Spell Status

The registry dump does not expose an explicit card-type or spell flag. Every Gen 2 entry is an `FCardDataAll` with combat stats.

For GenMTG mapping, treat these Gen 2 IDs as spell-flavored slots:

- `2304` Shenmo Lamp: floating will-o'-the-wisp.
- `2314` Winter Night Ringtone: music on Christmas Eve.
- `2319` Bing Lingling: snow wand creates snowflakes.
- `2406` Mirror Eyes: mysterious power checks earth-crust movement.
- `2408` Luxiang Division: music directs ancient machines.

Borderline creature-like magical cards that should remain creature mappings unless later testing shows a game spell type:

- `2310` Fugui: floating glowing entity.
- `2316` Green Surge: apple-flavored ooze.
- `2403` Phantom Beast: mysterious electric ghost.
- `2407` Fortune Cat: worshiped as a money god.

## Changelog

- 2026-06-20: Recorded first runtime dump summary and outstanding need for detail-field dump.
- 2026-06-20: Updated from detailed dump and selected Gen 2 spell-flavored mapping slots.
- 2026-06-20: Corrected total count to 449 from detailed TSV.
