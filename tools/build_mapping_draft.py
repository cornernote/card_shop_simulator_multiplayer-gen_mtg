#!/usr/bin/env python3
import csv
import json
import math
import re
import time
import urllib.parse
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DOCS = ROOT / "docs"
SOURCE_DIR = ROOT / "assets" / "source"
SOURCE_DIR.mkdir(parents=True, exist_ok=True)

INVENTORY_PATH = DOCS / "current-card-inventory.tsv"
SCRYFALL_CACHE = SOURCE_DIR / "scryfall-oldschool-premodern.json"
MAPPING_PATH = DOCS / "mapping-draft.tsv"
OVERRIDES_PATH = DOCS / "mapping-overrides.tsv"
FINAL_MAPPING_PATH = DOCS / "mapping-final.tsv"
POOLS_PATH = DOCS / "scryfall-pools-summary.md"

SCRYFALL_SEARCH = "https://api.scryfall.com/cards/search"
SOURCE_QUERY = "lang:en game:paper date<=2003-05-26 -is:digital"

SPELL_IDS = {2304, 2314, 2319, 2406, 2408}
SPECIAL_LEGEND_IDS = set(range(9001, 9009)) | set(range(9060, 9070)) | {9071, 9072, 9073, 9074, 100001, 100002, 100003, 100004}

RARITY_NAMES = {
    "0": "common",
    "1": "uncommon",
    "2": "rare",
    "3": "mythic",
    "4": "mythic",
}

ELEMENT_NAMES = {
    "0": "Fire",
    "1": "Water",
    "2": "Grass",
    "3": "Electric",
    "4": "Insect",
    "5": "Rock",
    "6": "Earth",
    "7": "Animal",
    "8": "Steel",
    "9": "Dragon",
    "10": "Psychic",
    "11": "Mystic",
    "12": "Ice",
}

ELEMENT_COLOR_HINTS = {
    "Fire": {"R"},
    "Water": {"U"},
    "Grass": {"G"},
    "Electric": {"R", "U"},
    "Insect": {"G", "B"},
    "Rock": {"R", "G"},
    "Earth": {"G", "R"},
    "Animal": {"G", "W"},
    "Steel": set(),
    "Dragon": {"R", "G", "B"},
    "Psychic": {"U", "W"},
    "Mystic": {"B", "U"},
    "Ice": {"U", "W"},
}

EVENT_HINTS = {
    "halloween": [
        "ghost", "spirit", "specter", "spectre", "shade", "demon", "horror",
        "night", "dark", "black", "bat", "pumpkin", "bone", "zombie",
        "vampire", "curse", "fear", "grave", "hell", "fire",
    ],
    "christmas": [
        "winter", "snow", "ice", "frost", "bell", "gift", "angel", "star",
        "light", "holy", "music", "song", "celebration", "festival",
    ],
}

ICONIC_LEGEND_HINTS = [
    "Akroma", "Arcanis", "Ascendant Evincar", "Atalya", "Avizoa", "Balthor",
    "Baron Sengir", "Barrin", "Braids", "Captain Sisay", "Commander Greven",
    "Crovax", "Dakkon", "Ertai", "Gerrard", "Hanna", "Hazezon", "Ihsan",
    "Jaya", "Jedit", "Jerrard", "Jeska", "Johan", "Kamahl", "Karn",
    "Kaysa", "Kongming", "Krovikan", "Lady Evangela", "Lim-Dul", "Lord",
    "Maraxus", "Mirri", "Multani", "Nicol Bolas", "Orim", "Palladia-Mors",
    "Phelddagrif", "Phage", "Pianna", "Ramses", "Rith", "Rorix",
    "Selenia", "Seton", "Silvos", "Sliver Queen", "Squee", "Tahngarth",
    "Tawnos", "Teferi", "Tetsuo", "Tobias", "Torsten", "Treva", "Tsabo",
    "Urza", "Visara", "Volrath", "Xira", "Zagorka",
]


def fetch_json(url):
    req = urllib.request.Request(url, headers={
        "User-Agent": "GenMTG/0.1 planning script",
        "Accept": "application/json",
    })
    with urllib.request.urlopen(req, timeout=60) as response:
        return json.loads(response.read().decode("utf-8"))


def load_scryfall_cards():
    if SCRYFALL_CACHE.exists():
        return json.loads(SCRYFALL_CACHE.read_text(encoding="utf-8"))

    cards = []
    params = {"q": SOURCE_QUERY, "unique": "cards", "order": "released"}
    url = SCRYFALL_SEARCH + "?" + urllib.parse.urlencode(params)
    while url:
        payload = fetch_json(url)
        cards.extend(payload.get("data", []))
        url = payload.get("next_page")
        if url:
            time.sleep(0.12)

    SCRYFALL_CACHE.write_text(json.dumps(cards, indent=2, sort_keys=True), encoding="utf-8")
    return cards


def load_inventory():
    with INVENTORY_PATH.open("r", encoding="utf-8", newline="") as handle:
        return list(csv.DictReader(handle, delimiter="\t"))


def load_overrides():
    if not OVERRIDES_PATH.exists():
        return {}
    with OVERRIDES_PATH.open("r", encoding="utf-8", newline="") as handle:
        rows = list(csv.DictReader(handle, delimiter="\t"))
    overrides = {}
    for row in rows:
        card_id = int(row["game_card_id"])
        if card_id in overrides:
            raise RuntimeError(f"Duplicate override for game card ID {card_id}")
        overrides[card_id] = {
            "mtg_name": row["mtg_name"],
            "reason": row.get("reason", ""),
        }
    return overrides


def type_line(card):
    return card.get("type_line", "") or ""


def oracle_text(card):
    if card.get("oracle_text"):
        return card.get("oracle_text") or ""
    return " ".join(face.get("oracle_text", "") for face in card.get("card_faces", []) if face.get("oracle_text"))


def image_url(card):
    uris = card.get("image_uris") or {}
    if uris.get("normal"):
        return uris["normal"]
    faces = card.get("card_faces") or []
    if faces and faces[0].get("image_uris"):
        return faces[0]["image_uris"].get("normal", "")
    return ""


def color_set(card):
    colors = card.get("color_identity") or card.get("colors") or []
    return set(colors)


def text_blob(card):
    return " ".join([
        card.get("name", ""),
        type_line(card),
        oracle_text(card),
        card.get("flavor_text", "") or "",
    ]).lower()


def is_land(card):
    return "Land" in type_line(card)


def is_creature(card):
    return "Creature" in type_line(card)


def is_spell(card):
    tl = type_line(card)
    return ("Instant" in tl or "Sorcery" in tl or "Enchantment" in tl) and "Creature" not in tl and "Land" not in tl


def is_legendary_creature(card):
    tl = type_line(card)
    return "Legendary" in tl and "Creature" in tl and "Land" not in tl


def cmc(card):
    value = card.get("cmc")
    if value is None:
        return 0.0
    try:
        return float(value)
    except ValueError:
        return 0.0


def rarity_score(card, target_rarity):
    card_rarity = card.get("rarity", "")
    if target_rarity == "mythic":
        target_rarity = "rare"
    if card_rarity == target_rarity:
        return 0
    order = {"common": 0, "uncommon": 1, "rare": 2, "mythic": 3}
    return abs(order.get(card_rarity, 1) - order.get(target_rarity, 1)) * 8


def color_score(card, element):
    hints = ELEMENT_COLOR_HINTS.get(element, set())
    colors = color_set(card)
    if not hints:
        return 0 if not colors else 4
    if colors & hints:
        return 0
    if not colors:
        return 3
    return 6


def stat_score(card, attack, health):
    power = card.get("power")
    toughness = card.get("toughness")
    if power is None or toughness is None:
        return 0
    if not str(power).isdigit() or not str(toughness).isdigit():
        return 2
    game_scale = max(1.0, (attack + health) / 2.0)
    mtg_scale = int(power) + int(toughness)
    return abs(math.log1p(game_scale) - math.log1p(mtg_scale * 50.0))


def name_tokens(text):
    return set(re.findall(r"[a-z]+", text.lower()))


def flavor_score(card, row):
    row_tokens = name_tokens(row["Name"] + " " + row["Description"])
    blob_tokens = name_tokens(text_blob(card))
    overlap = len(row_tokens & blob_tokens)
    return -min(overlap, 5) * 2


def event_kind(row):
    gen = row.get("Gen", "")
    name_desc = (row.get("Name", "") + " " + row.get("Description", "")).lower()
    card_id = int(row["CardID"])
    if gen == "10" or 1314 <= card_id <= 1323:
        return "halloween"
    if "christmas" in name_desc or "snow" in name_desc or "winter" in name_desc or "bell" in name_desc:
        return "christmas"
    return ""


def event_score(card, kind):
    if not kind:
        return 0
    blob = text_blob(card)
    hints = EVENT_HINTS[kind]
    hits = sum(1 for hint in hints if hint in blob)
    return -hits * 5


def legendary_icon_score(card):
    name = card.get("name", "")
    score = 0
    for hint in ICONIC_LEGEND_HINTS:
        if hint.lower() in name.lower():
            score -= 12
            break
    score -= min(cmc(card), 8)
    if card.get("rarity") in {"rare", "mythic"}:
        score -= 5
    return score


def row_int(row, key, default=0):
    try:
        return int(float(row.get(key, "") or default))
    except ValueError:
        return default


def choose_card(row, candidates, used, role):
    element = ELEMENT_NAMES.get(row.get("Elements", ""), "")
    rarity = RARITY_NAMES.get(row.get("Rarity", ""), "common")
    attack = row_int(row, "BaseAttack")
    health = row_int(row, "BaseHealth")
    kind = event_kind(row)

    def score(card):
        value = 0.0
        value += rarity_score(card, rarity)
        value += color_score(card, element)
        value += stat_score(card, attack, health)
        value += flavor_score(card, row)
        value += event_score(card, kind)
        if role == "legendary":
            value += legendary_icon_score(card)
        if card["name"] in used:
            value += 1000
        return value

    if not candidates:
        raise RuntimeError(f"No candidates for role {role}")
    chosen = min(candidates, key=score)
    used.add(chosen["name"])
    return chosen


def row_for_mapping(row, role, card, override_reason=""):
    return {
        "game_card_id": row["CardID"],
        "game_name": row["Name"],
        "game_description": row["Description"],
        "game_gen": row["Gen"],
        "game_rarity": row["Rarity"],
        "game_element": row["Elements"],
        "mapping_role": role,
        "event_kind": event_kind(row),
        "mtg_name": card["name"],
        "mtg_type_line": type_line(card),
        "mtg_mana_value": str(cmc(card)),
        "mtg_colors": "".join(card.get("color_identity") or []),
        "mtg_rarity": card.get("rarity", ""),
        "mtg_set": card.get("set", ""),
        "mtg_released_at": card.get("released_at", ""),
        "mtg_scryfall_id": card.get("id", ""),
        "mtg_scryfall_uri": card.get("scryfall_uri", ""),
        "mtg_image_normal": image_url(card),
        "mtg_oracle_text": oracle_text(card).replace("\n", "\\n"),
        "override_reason": override_reason,
    }


def role_for_row(row):
    card_id = int(row["CardID"])
    if card_id in SPELL_IDS:
        return "spell"
    if card_id in SPECIAL_LEGEND_IDS:
        return "legendary"
    return "creature"


def write_pool_summary(cards, creatures, spells, legends):
    lines = [
        "# Scryfall Pools Summary",
        "",
        f"Query: `{SOURCE_QUERY}`",
        "",
        f"- Source cards: {len(cards)}",
        f"- Creature pool, no lands: {len(creatures)}",
        f"- Spell pool, instants/sorceries/enchantments only, no creatures/lands: {len(spells)}",
        f"- Iconic legendary creature candidate pool: {len(legends)}",
        "",
        "## Changelog",
        "",
        "- 2026-06-20: Generated initial source-pool summary.",
    ]
    POOLS_PATH.write_text("\n".join(lines) + "\n", encoding="utf-8")


def build_rows(inventory, pools, all_cards_by_name, overrides=None):
    overrides = overrides or {}
    override_names = [override["mtg_name"] for override in overrides.values()]
    duplicate_override_names = sorted(
        name for name in set(override_names) if override_names.count(name) > 1
    )
    if duplicate_override_names:
        raise RuntimeError(f"Duplicate override MTG names: {', '.join(duplicate_override_names)}")

    missing_overrides = sorted(
        name for name in override_names if name.lower() not in all_cards_by_name
    )
    if missing_overrides:
        raise RuntimeError(f"Override cards not found in Scryfall cache: {', '.join(missing_overrides)}")

    rows = []
    used = set(override_names)
    for row in sorted(inventory, key=lambda r: int(r["CardID"])):
        card_id = int(row["CardID"])
        role = role_for_row(row)
        if card_id in overrides:
            override = overrides[card_id]
            card = all_cards_by_name[override["mtg_name"].lower()]
            if is_land(card):
                raise RuntimeError(f"Override for {card_id} is a land: {card['name']}")
            rows.append(row_for_mapping(row, role, card, override["reason"]))
            continue

        card = choose_card(row, pools[role], used, role)
        rows.append(row_for_mapping(row, role, card))
    return rows


def write_mapping(path, rows):
    with path.open("w", encoding="utf-8", newline="") as handle:
        fieldnames = list(rows[0].keys())
        writer = csv.DictWriter(handle, fieldnames=fieldnames, delimiter="\t", lineterminator="\n")
        writer.writeheader()
        writer.writerows(rows)


def main():
    inventory = load_inventory()
    cards = load_scryfall_cards()
    overrides = load_overrides()

    cards = [card for card in cards if card.get("name") and not card.get("digital")]
    creatures = [card for card in cards if is_creature(card) and not is_land(card)]
    spells = [card for card in cards if is_spell(card)]
    legends = [card for card in cards if is_legendary_creature(card)]
    all_cards_by_name = {card["name"].lower(): card for card in cards}
    pools = {
        "creature": creatures,
        "spell": spells,
        "legendary": legends,
    }

    write_pool_summary(cards, creatures, spells, legends)

    draft_rows = build_rows(inventory, pools, all_cards_by_name)
    final_rows = build_rows(inventory, pools, all_cards_by_name, overrides)
    write_mapping(MAPPING_PATH, draft_rows)
    write_mapping(FINAL_MAPPING_PATH, final_rows)

    print(f"Wrote {len(draft_rows)} draft mapped rows to {MAPPING_PATH}")
    print(f"Wrote {len(final_rows)} final mapped rows to {FINAL_MAPPING_PATH} with {len(overrides)} overrides")
    print(f"Pools: source={len(cards)} creatures={len(creatures)} spells={len(spells)} legends={len(legends)}")


if __name__ == "__main__":
    main()
