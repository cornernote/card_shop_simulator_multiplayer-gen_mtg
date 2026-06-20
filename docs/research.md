# GenMTG Research

## Sources

- Official modding README: `https://github.com/showtom-web/Card-Shop-Simulator-Multiplayer-mods/blob/main/README_EN.md`
- Steam news mod guide: `https://store.steampowered.com/news/app/3569500/view/567017334005302368`
- Local examples in this folder: `AddGen1Card4`, `ChangeGen1Texture`, `QuickOpenCard`, `3639546917`, `3692065115`
- Scryfall API docs:
  - `https://scryfall.com/docs/api`
  - `https://scryfall.com/docs/api/bulk-data`
  - `https://scryfall.com/docs/api/cards`
  - `https://scryfall.com/docs/api/images`

## Findings

- The game scans `CardShopSim/Mods` and Workshop item folders. A folder with `main.lua` and `preview.png` is recognized in the Mods menu.
- `M.OnInit()` is the basic load hook. The examples call card registration from there.
- Card registration flow:
  - Get the registry with `UE.UCardFunction.GetCardRegistryWS(MOD.GAA.WorldUtils:GetCurrentWorld())`.
  - Build `UE.FCardDataAll()`.
  - Set fields such as `Name`, `Description`, `CardID`, `Gen`, `TexturePath`, `Rarity`, `BaseAttack`, `BaseHealth`, `CardValueMulti`, `UseBigImage`, and element factions.
  - Register with `R:RegisterCardData(D.CardID, D)`.
- Official docs say Gen values are `0-6` for game generations 1-7.
- Official docs recommend card IDs `1000-9999` and warn not to collide with frame-variant IDs derived from `(CardID * 10) + frameType`.
- Existing vanilla ID list in the README contains 419 entries:
  - Gen 1: 66 IDs, `1101-1323`, with rarity bands 1/2/3/4.
  - Gen 2: 45 IDs, `2101-2405`, with rarity bands 1/2/3/4.
  - Gen 3: 46 IDs, `3101-3406`, with rarity bands 1/2/3/4.
  - Gen 4: 46 IDs, `4101-4407`, with rarity bands 1/2/3/4.
  - Gen 5: 59 IDs, `5101-5407`, with rarity bands 1/2/3/4.
  - Gen 6: 66 IDs, `6101-6408`, with rarity bands 1/2/3/4.
  - Gen 7: 65 IDs, `7101-7413`, with rarity bands 1/2/3/4.
  - Divine/god cards: 4 IDs in the `100001-100004` range.
  - Souvenir/commemorative cards: 22 IDs in the `9001-9074` range.
  - Holiday pack cards: 10 IDs in the `1314-1323` range, overlapping the Gen 1 ID space.
- User clarified that the scope is all cards in the game, not only generations:
  - Generation packs.
  - Special/event/holiday packs.
  - Divine/god cards.
  - Souvenir/commemorative cards.
  - Any other current card pool discovered during implementation.
- The existing MTG mod at `3692065115`:
  - Has `15031` lines in `main.lua`.
  - Registers four groups: Alpha (`LEA`), Beta (`LEB`), Unlimited (`2ED`), and Collector's Edition (`CED`).
  - Has 1001 image files: `LEA` 295, `LEB` 302, `2ED` 302, `CED` 101, plus preview.
  - Adds cards with `CardID` values around `1300001-1301000`, not vanilla IDs.
  - Includes basic lands and dual lands, which conflicts with the GenMTG requirement.
  - Uses full MTG card images via `D.UseBigImage = true`.
- The README's Gen 2 ID list does not explicitly mark a "spell card" type. Runtime inventory also does not expose an explicit `Spell` or card-type field on `FCardDataAll`.
- The README may not include all current special/event pack cards because it predates later Steam news updates that mention new seasonal cards.
- Local package/string inspection on 2026-06-20 found spell-related runtime symbols in `CardShopSim-Win64-Shipping.exe`, including `AiSpellMeta`, `Server_UseSpell`, `EAiSpellTarget`, and `SpellDamage`.
- The same inspection did not expose a readable Gen 2 card table or authoritative `spell` flag from loose files or simple strings in `.pak/.ucas/.utoc`.
- Detailed runtime dump with `GenMTGInventoryDump` found 449 card IDs, including 48 Gen 2 IDs, 22 souvenir/commemorative IDs, and 4 divine/god IDs. It confirmed the README list is incomplete for the current install.
- The first runtime dump did not capture names/detail fields because `GetCardData(id)` returned a status value rather than a directly indexable struct through the first helper implementation.
- Detailed runtime inventory supports a flavor-based Gen 2 spell-slot decision: `2304 Shenmo Lamp`, `2314 Winter Night Ringtone`, `2319 Bing Lingling`, `2406 Mirror Eyes`, and `2408 Luxiang Division`.
- Scryfall is the best candidate for source data because it exposes structured fields needed for filtering:
  - `name`
  - `type_line`
  - `oracle_text`
  - `power`
  - `toughness`
  - `colors`
  - `cmc`
  - `rarity`
  - `set`
  - `released_at`
  - `image_uris`

## User Adjustments

- The user explicitly rejected lands because they do not make sense for the game card role.
- The mod should be named `GenMTG`.
- The desired theme is classic MTG:
  - Creature cards for all creature-style cards in the whole game.
  - Spell cards for Gen 2 spell-card slots.
- The user clarified on 2026-06-20 that all game cards should be replaced, including special packs and everything else.
- The user selected Old School 93/94 and Pre-Modern as the starting MTG eras.
- The user selected instants, sorceries, and enchantments for spell slots.
- The user selected event-flavor matching for special packs.
- The user selected iconic legendary creatures for divine/god and commemorative cards.
- The user wants to try original MTG text for descriptions first.
- The user wants game elements mapped from MTG colors/flavor.

## Constraints

- Do not implement yet.
- Do not create or edit Lua/assets yet.
- Use classic MTG cards, not arbitrary modern cards, unless there are not enough appropriate classic choices.
- Avoid MTG lands entirely unless the user later asks for a separate land-themed pack.
- Keep Gen 2 spell-card handling distinct from creature-card handling.
- Use local images in the mod folder for final implementation; do not rely on remote image URLs at game runtime.
- Do not treat the README list as complete until the current installed game card pool has been checked.

## Risks

- The README ID list was updated 2026-01-08 and may not include newer cards added after that, especially seasonal/special pack cards.
- "Classic MTG" needs a precise boundary. Reasonable defaults are Alpha/Beta/Unlimited/Revised through early expansions, but the final cutoff should be chosen before mapping.
- "Spell cards in Gen 2" is underspecified by the modding docs. We need either direct game data, a screenshot/list from the user, or a heuristic mapping.
- Full MTG card images have different proportions from the game's card-face recommendations. `UseBigImage = true` is likely needed for all replacements, but visual QA is still required in-game.
- MTG power/toughness does not map cleanly to game balance for noncreature spells. Spell cards may need low placeholder stats or stats derived from mana value/rarity.
- Image licensing and Workshop policy should be considered before public release.

## Changelog

- 2026-06-20: Initial research from official README, Steam news, local examples, existing MTG mod, and Scryfall docs.
- 2026-06-20: Updated scope after user clarified that every game card, including special packs, should be replaced.
- 2026-06-20: Added user decisions answering the main design questions.
- 2026-06-20: Added Gen 2 spell-ID investigation result: not authoritative yet; runtime dump or asset extraction needed.
- 2026-06-20: Added first runtime inventory dump result and confirmed need for second detail-field dump.
- 2026-06-20: Added detailed dump result and Gen 2 spell-flavored mapping slots.
- 2026-06-20: Generated first Scryfall source pools and mapping draft.
