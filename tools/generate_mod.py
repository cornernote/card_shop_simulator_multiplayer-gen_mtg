#!/usr/bin/env python3
import csv
import json
import math
import subprocess
import sys
import time
import urllib.request
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DOCS = ROOT / "docs"
IMAGE_DIR = ROOT / "images" / "cards"
SOURCE_DIR = ROOT / "assets" / "source"

MAPPING_PATH = DOCS / "mapping-final.tsv"
INVENTORY_PATH = DOCS / "current-card-inventory.tsv"
SCRYFALL_CACHE = SOURCE_DIR / "scryfall-oldschool-premodern.json"
MAIN_LUA_PATH = ROOT / "main.lua"
PREVIEW_PATH = ROOT / "preview.png"
BUILD_SUMMARY_PATH = DOCS / "build-summary.md"

RARITY_ENUM = {
    "0": "Common",
    "1": "UnCommon",
    "2": "Rare",
    "3": "SuperRare",
    "4": "God",
}

RARITY_BANDS = {
    "0": {"attack": (5, 90), "health": (10, 120)},
    "1": {"attack": (10, 120), "health": (20, 220)},
    "2": {"attack": (20, 220), "health": (50, 650)},
    "3": {"attack": (40, 320), "health": (100, 950)},
    "4": {"attack": (150, 350), "health": (500, 1000)},
}

COLOR_ELEMENT = {
    "W": "Psychic",
    "U": "Water",
    "B": "Mystic",
    "R": "Fire",
    "G": "Grass",
}

ELEMENT_ADJECTIVES = {
    "Fire": "fiery",
    "Water": "water-aligned",
    "Grass": "green",
    "Electric": "storm-charged",
    "Insect": "swarmlike",
    "Rock": "earthshaking",
    "Earth": "earthbound",
    "Animal": "wild",
    "Steel": "artifact",
    "Dragon": "draconic",
    "Psychic": "mystic",
    "Mystic": "shadowy",
    "Ice": "frost-touched",
}

ELEMENT_FLAVOR = {
    "Fire": "It carries old fire in its wake.",
    "Water": "The tide bends quietly around it.",
    "Grass": "Old roots answer when it stirs.",
    "Electric": "A storm gathers behind its eyes.",
    "Insect": "The swarm moves before the world notices.",
    "Rock": "Stone remembers every step it takes.",
    "Earth": "The ground steadies beneath its weight.",
    "Animal": "Wild instinct guides every strike.",
    "Steel": "Ancient metal hums with borrowed life.",
    "Dragon": "Its shadow is older than kingdoms.",
    "Psychic": "A thought becomes a weapon in its hands.",
    "Mystic": "Dark omens follow in its silence.",
    "Ice": "Winter lingers wherever it passes.",
}

TYPE_FLAVOR_KEYWORDS = [
    ("Dragon", "Old wings, hot breath, and a name that survives every age."),
    ("Wurm", "The earth opens when hunger calls."),
    ("Drake", "A lesser dragon, still proud enough to scorch the sky."),
    ("Angel", "A bright omen descending from impossible heights."),
    ("Demon", "A bargain given claws and a smile."),
    ("Horror", "Something from the dark learned how to hunt."),
    ("Specter", "A whisper from the grave with hands of shadow."),
    ("Spirit", "A restless echo wearing a shape for one more night."),
    ("Zombie", "The grave forgot to keep this one."),
    ("Shade", "A knight of darkness, sharpened by moonless nights."),
    ("Vampire", "An old hunger dressed in noble colors."),
    ("Djinn", "Ancient power bound to a dangerous wish."),
    ("Efreet", "Smoke, pride, and flame given form."),
    ("Elemental", "Raw magic walking on borrowed legs."),
    ("Phoenix", "Every ending only feeds the next flame."),
    ("Beast", "Too wild to tame, too strong to ignore."),
    ("Cat", "Grace, claws, and perfect timing."),
    ("Dog", "Loyal teeth with a hunter's heart."),
    ("Hound", "It follows the scent of fear."),
    ("Ape", "Old forest strength in a sudden charge."),
    ("Monkey", "Quick hands, quicker trouble."),
    ("Bear", "The forest gives warning before it gives chase."),
    ("Horse", "Thunder follows its hooves."),
    ("Elephant", "A gentle giant until the charge begins."),
    ("Bird", "A flash of wings over a changing battlefield."),
    ("Faerie", "Small wings, sharp tricks, no apologies."),
    ("Fish", "A bright shape moving under dark water."),
    ("Merfolk", "A song from below the waves answers back."),
    ("Whale", "A living island beneath the surface."),
    ("Snake", "A silent coil of hunger and patience."),
    ("Serpent", "The deep coils around an ancient hunger."),
    ("Shark", "The water parts for teeth."),
    ("Octopus", "Eight arms, one patient mind."),
    ("Jellyfish", "Soft light drifting toward a hidden sting."),
    ("Kraken", "The sea keeps its largest secret for last."),
    ("Leviathan", "A continent of muscle beneath the waves."),
    ("Insect", "Tiny wings, endless numbers."),
    ("Spider", "Every path becomes part of the web."),
    ("Scorpion", "It waits with poison and patience."),
    ("Plant", "Green life with a will of its own."),
    ("Fungus", "It blooms where safer things decay."),
    ("Treefolk", "The forest stands up and speaks in thunder."),
    ("Wall", "It does not chase. It does not need to."),
    ("Golem", "Stone and metal remember their maker's command."),
    ("Construct", "Built long ago, still obeying."),
    ("Juggernaut", "Once it starts moving, the world makes room."),
    ("Gnome", "A small machine with a stubborn spark."),
    ("Thopter", "A blade-winged relic of old machinery."),
    ("Assassin", "One quiet step is all it needs."),
    ("Knight", "An old oath wrapped in steel."),
    ("Wizard", "A name, a gesture, and reality changes course."),
    ("Illusion", "It is real enough when the blade lands."),
    ("Avatar", "An idea so powerful it grew a body."),
    ("Atog", "It grins at anything that can be eaten."),
]

ICONIC_NAMES = {
    "Akroma, Angel of Wrath",
    "Ancestral Recall",
    "Argothian Enchantress",
    "Arrogant Wurm",
    "Avatar of Woe",
    "Ball Lightning",
    "Birds of Paradise",
    "Black Lotus",
    "Bottle Gnomes",
    "Crosis, the Purger",
    "Darigaaz, the Igniter",
    "Dromar, the Banisher",
    "Exalted Angel",
    "Flametongue Kavu",
    "Force of Nature",
    "Hypnotic Specter",
    "Juzám Djinn",
    "Karn, Silver Golem",
    "Kird Ape",
    "Lord of the Pit",
    "Masticore",
    "Morphling",
    "Nicol Bolas",
    "Ophidian",
    "Phyrexian Dreadnought",
    "Phyrexian Negator",
    "River Boa",
    "Royal Assassin",
    "Serra Angel",
    "Serra Avatar",
    "Shivan Dragon",
    "Sol Ring",
    "Spiritmonger",
    "Squee, Goblin Nabob",
    "Time Walk",
    "Timetwister",
    "Wall of Blossoms",
    "Wild Mongrel",
}

ORIGINAL_ELEMENT = {
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

TYPE_ELEMENT_KEYWORDS = [
    ("Dragon", "Dragon"),
    ("Drake", "Dragon"),
    ("Wurm", "Dragon"),
    ("Serpent", "Water"),
    ("Whale", "Water"),
    ("Fish", "Water"),
    ("Shark", "Water"),
    ("Merfolk", "Water"),
    ("Octopus", "Water"),
    ("Jellyfish", "Water"),
    ("Kraken", "Water"),
    ("Leviathan", "Water"),
    ("Insect", "Insect"),
    ("Spider", "Insect"),
    ("Scorpion", "Insect"),
    ("Beetle", "Insect"),
    ("Treefolk", "Grass"),
    ("Plant", "Grass"),
    ("Fungus", "Grass"),
    ("Thallid", "Grass"),
    ("Elf", "Grass"),
    ("Goblin", "Fire"),
    ("Phoenix", "Fire"),
    ("Demon", "Mystic"),
    ("Horror", "Mystic"),
    ("Shade", "Mystic"),
    ("Specter", "Mystic"),
    ("Spectre", "Mystic"),
    ("Zombie", "Mystic"),
    ("Spirit", "Mystic"),
    ("Ghost", "Mystic"),
    ("Golem", "Rock"),
    ("Giant", "Rock"),
    ("Wall", "Rock"),
    ("Construct", "Steel"),
    ("Juggernaut", "Steel"),
    ("Thopter", "Steel"),
    ("Angel", "Psychic"),
    ("Wizard", "Psychic"),
    ("Illusion", "Psychic"),
    ("Bird", "Animal"),
    ("Cat", "Animal"),
    ("Dog", "Animal"),
    ("Hound", "Animal"),
    ("Bear", "Animal"),
    ("Wolf", "Animal"),
    ("Horse", "Animal"),
    ("Elephant", "Animal"),
    ("Ape", "Animal"),
    ("Monkey", "Animal"),
    ("Rat", "Animal"),
]


def load_tsv(path):
    with path.open("r", encoding="utf-8", newline="") as handle:
        return list(csv.DictReader(handle, delimiter="\t"))


def load_cards_by_id():
    cards = json.loads(SCRYFALL_CACHE.read_text(encoding="utf-8"))
    return {card["id"]: card for card in cards}


def lua_string(value):
    value = "" if value is None else str(value)
    value = value.replace("\\", "\\\\").replace('"', '\\"')
    value = value.replace("\r", "").replace("\n", "\\n")
    return f'"{value}"'


def parse_float(value, default=0.0):
    try:
        return float(value)
    except (TypeError, ValueError):
        return default


def parse_int(value, default=0):
    try:
        return int(float(value))
    except (TypeError, ValueError):
        return default


def clamp(value, low, high):
    return max(low, min(high, value))


def scryfall_power_toughness(card):
    power = card.get("power")
    toughness = card.get("toughness")
    if power is None or toughness is None:
        faces = card.get("card_faces") or []
        for face in faces:
            if face.get("power") is not None and face.get("toughness") is not None:
                power = face.get("power")
                toughness = face.get("toughness")
                break
    return power, toughness


def stat_number(value):
    if value is None:
        return None
    text = str(value).strip()
    if text.endswith("+*"):
        text = text[:-2]
    if text in {"*", "1+*", "2+*", "7-*"}:
        return None
    try:
        return float(text)
    except ValueError:
        return None


def derived_stats(row, inventory_row, card):
    rarity = row["game_rarity"]
    band = RARITY_BANDS.get(rarity, RARITY_BANDS["0"])
    original_attack = parse_int(inventory_row.get("BaseAttack"), band["attack"][0])
    original_health = parse_int(inventory_row.get("BaseHealth"), band["health"][0])
    mana_value = parse_float(row.get("mtg_mana_value"), 1.0)

    power, toughness = scryfall_power_toughness(card)
    power = stat_number(power)
    toughness = stat_number(toughness)

    if power is not None and toughness is not None:
        attack = round((power * 32) + (original_attack * 0.35) + (mana_value * 5))
        health = round((toughness * 70) + (original_health * 0.35) + (mana_value * 12))
    else:
        rarity_bonus = parse_int(rarity) * 18
        attack = round((mana_value + 1) * 18 + rarity_bonus + original_attack * 0.25)
        health = round((mana_value + 1) * 55 + rarity_bonus * 2 + original_health * 0.25)

    return (
        int(clamp(attack, *band["attack"])),
        int(clamp(health, *band["health"])),
    )


def element_for(row):
    type_line = row.get("mtg_type_line", "")
    colors = list(row.get("mtg_colors", ""))
    original = ORIGINAL_ELEMENT.get(row.get("game_element", ""), "Psychic")

    for keyword, element in TYPE_ELEMENT_KEYWORDS:
        if keyword.lower() in type_line.lower():
            return element

    if "Artifact" in type_line and not colors:
        return "Steel"

    color_elements = [COLOR_ELEMENT[color] for color in colors if color in COLOR_ELEMENT]
    if original in color_elements:
        return original
    if color_elements:
        return color_elements[0]
    return "Steel" if "Artifact" in type_line else original


def image_path_for(row):
    return IMAGE_DIR / f"{int(row['game_card_id']):06d}-{row['mtg_scryfall_id']}.jpg"


def short_description(row, element):
    name = row["mtg_name"]
    type_line = row.get("mtg_type_line", "")
    rarity = row.get("game_rarity", "")
    event = row.get("event_kind", "")

    name_flavors = {
        "Black Lotus": "A perfect bloom. A moment of impossible power.",
        "Time Walk": "One step bends into another turn.",
        "Ancestral Recall": "Three old memories arrive like lightning.",
        "Timetwister": "Past and future tumble through the same door.",
        "Sol Ring": "A small circle holding a sun's worth of power.",
        "Shivan Dragon": "Old wings, hot breath, and a throne of smoke.",
        "Juzám Djinn": "A dangerous wish with a giant's shadow.",
        "Nicol Bolas": "An elder mind with plans inside plans.",
        "Karn, Silver Golem": "Silver hands, ancient heart, endless memory.",
        "Serra Angel": "A bright omen with a sword in the clouds.",
        "Birds of Paradise": "Every color of magic takes wing at once.",
        "Force of Nature": "The forest's anger given colossal form.",
        "Masticore": "A metal predator with hunger in every joint.",
        "Morphling": "A perfect shape that never stays still.",
        "Spiritmonger": "It grows stronger on the edge of ruin.",
        "Hypnotic Specter": "A midnight rider stealing thoughts from the air.",
        "Phyrexian Dreadnought": "Too much machine for any battlefield to hold.",
        "Serra Avatar": "A soul so bright it becomes a body.",
        "Ball Lightning": "A thunderclap that learned to charge.",
        "Squee, Goblin Nabob": "Trouble survives because trouble is stubborn.",
    }
    if name in name_flavors:
        return name_flavors[name]

    if event == "halloween":
        halloween_lines = [
            "A candle flickers where no living hand can reach.",
            "The night laughs first, then bares its teeth.",
            "Something old waits behind the mask.",
            "A shadow crosses the path and does not leave.",
        ]
        return halloween_lines[int(row["game_card_id"]) % len(halloween_lines)]

    if rarity == "4":
        return "A divine presence from an older world of magic."

    if "Legendary" in type_line:
        return "Songs remember its name long after battles end."

    for keyword, line in TYPE_FLAVOR_KEYWORDS:
        if keyword.lower() in type_line.lower():
            return line

    if "Artifact" in type_line:
        return "A relic from an age that trusted metal with miracles."

    if name in ICONIC_NAMES:
        return "An old legend pulled from a well-worn binder."

    return ELEMENT_FLAVOR.get(element, "Old magic gathers around it.")


def download_one(row):
    path = image_path_for(row)
    if path.exists() and path.stat().st_size > 0:
        return "cached", path
    url = row.get("mtg_image_normal", "")
    if not url:
        return "missing-url", path
    request = urllib.request.Request(url, headers={"User-Agent": "GenMTG/0.1 local mod builder"})
    with urllib.request.urlopen(request, timeout=60) as response:
        data = response.read()
    tmp = path.with_suffix(".tmp")
    tmp.write_bytes(data)
    tmp.replace(path)
    time.sleep(0.02)
    return "downloaded", path


def download_images(rows):
    IMAGE_DIR.mkdir(parents=True, exist_ok=True)
    expected_paths = {image_path_for(row) for row in rows}
    counts = {"cached": 0, "downloaded": 0, "missing-url": 0, "error": 0}
    errors = []
    with ThreadPoolExecutor(max_workers=8) as executor:
        futures = {executor.submit(download_one, row): row for row in rows}
        for future in as_completed(futures):
            row = futures[future]
            try:
                status, _path = future.result()
                counts[status] = counts.get(status, 0) + 1
            except Exception as exc:
                counts["error"] += 1
                errors.append(f"{row['game_card_id']} {row['mtg_name']}: {exc}")
    if errors:
        raise RuntimeError("Image download errors:\n" + "\n".join(errors[:20]))
    removed = 0
    for path in IMAGE_DIR.glob("*.jpg"):
        if path not in expected_paths:
            path.unlink()
            removed += 1
    counts["removed-stale"] = removed
    return counts


def lua_block(row, inventory_row, card):
    attack, health = derived_stats(row, inventory_row, card)
    element = element_for(row)
    rarity = RARITY_ENUM.get(row["game_rarity"], "Common")
    value = parse_float(inventory_row.get("CardValueMulti"), 1.0)
    rel_image = image_path_for(row).relative_to(ROOT).as_posix()
    description = short_description(row, element)
    return "\n".join([
        "    do",
        "        local D = UE.FCardDataAll()",
        f"        D.Name = {lua_string(row['mtg_name'])}",
        f"        D.Description = {lua_string(description)}",
        f"        D.CardID = {int(row['game_card_id'])}",
        f"        D.Gen = {parse_int(row['game_gen'])}",
        f"        D.TexturePath = dir .. {lua_string(rel_image)}",
        f"        D.Rarity = UE.ECardRarity.{rarity}",
        f"        D.BaseAttack = {attack}",
        f"        D.BaseHealth = {health}",
        f"        D.CardValueMulti = {value:.6g}",
        "        D.UseBigImage = true",
        f"        D.CardElementFaction:Add(UE.ECardElementFaction.{element})",
        "        R:RegisterCardData(D.CardID, D)",
        "    end",
    ])


def write_main_lua(rows, inventory_by_id, cards_by_id):
    blocks = []
    for row in rows:
        card = cards_by_id[row["mtg_scryfall_id"]]
        inventory_row = inventory_by_id[row["game_card_id"]]
        blocks.append(lua_block(row, inventory_row, card))

    content = "\n".join([
        "local M = {",
        '    id          = "GenMTG",',
        '    name        = "GenMTG",',
        '    version     = "0.1.0",',
        '    author      = "Brett + Codex",',
        '    description = "Replaces the full vanilla card pool with Old School and Pre-Modern Magic: The Gathering cards.",',
        "}",
        "",
        "local function ApplyGenMTG()",
        "    local R = UE.UCardFunction.GetCardRegistryWS(MOD.GAA.WorldUtils:GetCurrentWorld())",
        "    if not R then",
        '        if MOD and MOD.Logger then MOD.Logger.LogScreen("[GenMTG] Cannot find card registry", 5,1,0,0,1) end',
        "        return",
        "    end",
        "",
        *blocks,
        "",
        '    if MOD and MOD.Logger then MOD.Logger.LogScreen("[GenMTG] Loaded 449 MTG card replacements", 5,1,1,0,1) end',
        "end",
        "",
        "function M.OnInit()",
        "    ApplyGenMTG()",
        "end",
        "",
        "return M",
        "",
    ])
    MAIN_LUA_PATH.write_text(content, encoding="utf-8")


def write_preview(rows):
    subprocess.run([sys.executable, str(ROOT / "tools" / "generate_preview.py")], check=True)


def write_summary(rows, image_counts):
    role_counts = {}
    element_counts = {}
    for row in rows:
        role_counts[row["mapping_role"]] = role_counts.get(row["mapping_role"], 0) + 1
        element = element_for(row)
        element_counts[element] = element_counts.get(element, 0) + 1
    lines = [
        "# GenMTG Build Summary",
        "",
        f"- Generated Lua: `{MAIN_LUA_PATH.relative_to(ROOT)}`",
        f"- Card images: `{IMAGE_DIR.relative_to(ROOT)}`",
        f"- Preview image: `{PREVIEW_PATH.relative_to(ROOT)}`",
        f"- Cards registered: {len(rows)}",
        f"- Images cached: {image_counts.get('cached', 0)}",
        f"- Images downloaded: {image_counts.get('downloaded', 0)}",
        f"- Stale images removed: {image_counts.get('removed-stale', 0)}",
        "",
        "## Role Counts",
        "",
    ]
    for key in sorted(role_counts):
        lines.append(f"- {key}: {role_counts[key]}")
    lines.extend(["", "## Generated Element Counts", ""])
    for key in sorted(element_counts):
        lines.append(f"- {key}: {element_counts[key]}")
    lines.extend([
        "",
        "## Notes",
        "",
        "- Card value multipliers are preserved from the vanilla card IDs.",
        "- Creature stats are derived from MTG power/toughness and clamped to vanilla rarity bands.",
        "- Noncreature stats are derived from mana value and rarity, then clamped to vanilla rarity bands.",
        "- Elements are derived from MTG type and color identity, with type keywords winning over color.",
        "- Descriptions are short generated flavor-text blurbs, not original MTG rules text.",
        "",
        "## Changelog",
        "",
        "- 2026-06-20: Generated first playable local mod build.",
    ])
    BUILD_SUMMARY_PATH.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main():
    rows = load_tsv(MAPPING_PATH)
    inventory = load_tsv(INVENTORY_PATH)
    inventory_by_id = {row["CardID"]: row for row in inventory}
    cards_by_id = load_cards_by_id()

    missing_inventory = [row["game_card_id"] for row in rows if row["game_card_id"] not in inventory_by_id]
    missing_cards = [row["mtg_name"] for row in rows if row["mtg_scryfall_id"] not in cards_by_id]
    if missing_inventory or missing_cards:
        raise RuntimeError(f"Missing inventory={missing_inventory[:10]} missing_cards={missing_cards[:10]}")

    image_counts = download_images(rows)
    write_main_lua(rows, inventory_by_id, cards_by_id)
    write_preview(rows)
    write_summary(rows, image_counts)

    print(f"Wrote {MAIN_LUA_PATH}")
    print(f"Wrote {BUILD_SUMMARY_PATH}")
    print(f"Images: {image_counts}")


if __name__ == "__main__":
    main()
