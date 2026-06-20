#!/usr/bin/env python3
import csv
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DOCS = ROOT / "docs"
MAPPING_PATH = DOCS / "mapping-final.tsv"
FLAVOR_PATH = DOCS / "card-flavor.tsv"

NAME_LINES = {
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

TYPE_LINES = [
    ("Dragon", ["The sky remembers this one.", "Old flame gathers under its wings.", "Its shadow arrives before the roar."]),
    ("Wurm", ["The ground opens for its hunger.", "A tunnel becomes a warning."]),
    ("Drake", ["It wheels above the smoke.", "A smaller dragon with no smaller pride."]),
    ("Angel", ["Light sharpens at its arrival.", "Hope descends with a blade."]),
    ("Demon", ["A bargain steps out of the dark.", "The smile is the first warning."]),
    ("Horror", ["The dark learned a new shape.", "Fear gives it room to breathe."]),
    ("Specter", ["A whisper rides beside it.", "It steals courage before blood."]),
    ("Spirit", ["The past borrows a body.", "A lantern flickers when it passes."]),
    ("Zombie", ["The grave forgot to hold it.", "Old bones remember the road."]),
    ("Shade", ["Moonless dark gives it armor.", "Its shadow carries a blade."]),
    ("Vampire", ["Old hunger wears noble colors.", "It smiles without warmth."]),
    ("Djinn", ["Ancient power answers badly.", "A wish becomes a warning."]),
    ("Efreet", ["Smoke and pride take form.", "Fire bows, then lashes out."]),
    ("Elemental", ["Raw magic chooses a body.", "The world moves through it."]),
    ("Phoenix", ["Ash is only a pause.", "The next flame is already waiting."]),
    ("Beast", ["Instinct settles the argument.", "The warning growl comes too late."]),
    ("Cat", ["Grace keeps its claws hidden.", "It waits for the perfect moment."]),
    ("Dog", ["Loyalty comes with teeth.", "It follows trouble by scent."]),
    ("Hound", ["Fear leaves a trail.", "The hunt begins before the howl."]),
    ("Ape", ["The trees shake first.", "Old forest strength charges forward."]),
    ("Monkey", ["Quick hands invite trouble.", "It leaps before doubt can catch it."]),
    ("Bear", ["The forest gives one warning.", "Heavy paws end the debate."]),
    ("Horse", ["Thunder gathers under its hooves.", "It runs like a storm breaking."]),
    ("Elephant", ["The charge changes the map.", "Gentle eyes, unstoppable weight."]),
    ("Bird", ["A bright wing cuts the sky.", "It reads the wind first."]),
    ("Faerie", ["Small wings, sharp tricks.", "It laughs from somewhere nearby."]),
    ("Fish", ["A bright shape slips below.", "The water flashes, then stills."]),
    ("Merfolk", ["The sea answers in song.", "A ripple becomes a warning."]),
    ("Whale", ["A living island turns below.", "The deep rises slowly."]),
    ("Snake", ["A silent coil waits.", "Patience wears scales."]),
    ("Serpent", ["The deep keeps this hunger.", "Old water coils around it."]),
    ("Shark", ["The water parts for teeth.", "A fin cuts through silence."]),
    ("Octopus", ["Eight arms, one patient mind.", "It thinks in tides and traps."]),
    ("Jellyfish", ["Soft light hides the sting.", "It drifts like a quiet warning."]),
    ("Kraken", ["The sea saves its largest secret.", "Depth itself reaches upward."]),
    ("Leviathan", ["A continent moves under water.", "The horizon learns to fear the deep."]),
    ("Insect", ["One wingbeat becomes a swarm.", "Small bodies carry endless hunger."]),
    ("Spider", ["Every path joins the web.", "It waits where the thread trembles."]),
    ("Scorpion", ["Poison waits with patience.", "The tail speaks last."]),
    ("Plant", ["Green life grows teeth.", "Roots remember old magic."]),
    ("Fungus", ["It blooms where safer things decay.", "Spores drift like tiny omens."]),
    ("Treefolk", ["The forest stands up.", "Bark and branch remember war."]),
    ("Wall", ["It does not chase. It does not need to.", "The path ends here."]),
    ("Golem", ["Stone remembers its maker.", "Ancient hands move again."]),
    ("Construct", ["Built long ago, still obeying.", "Old gears wake with purpose."]),
    ("Juggernaut", ["The world makes room.", "Stopping is not in its design."]),
    ("Gnome", ["A small machine with a stubborn spark.", "Tiny gears, troublesome courage."]),
    ("Thopter", ["A relic cuts the air.", "Metal wings hum overhead."]),
    ("Assassin", ["One quiet step is enough.", "The blade arrives without ceremony."]),
    ("Knight", ["An old oath rides in steel.", "Honor wears a sharpened edge."]),
    ("Wizard", ["One word tilts the battle.", "Old study becomes sudden power."]),
    ("Illusion", ["Real enough when the blade lands.", "The lie casts a true shadow."]),
    ("Avatar", ["An idea grows a body.", "A belief learns to strike."]),
    ("Atog", ["It grins at anything breakable.", "Hunger has a very strange smile."]),
]

ELEMENT_LINES = {
    "0": ["Smoke follows every step.", "A red spark refuses to die.", "Heat gathers around its name."],
    "1": ["The tide bends near it.", "Deep currents keep its secret.", "Blue shadows move below."],
    "2": ["The forest leans closer.", "Green strength gathers quietly.", "Old roots stir beneath it."],
    "3": ["Lightning waits under the skin.", "Thunder trails a step behind.", "The next spark knows where to land."],
    "4": ["The swarm notices first.", "Tiny wings carry a warning.", "Chitin clicks in the grass."],
    "5": ["Stone remembers the impact.", "Old weight gives it purpose.", "The mountain shifts slightly."],
    "6": ["Dust rises around it.", "The road bends under its weight.", "Buried things answer softly."],
    "7": ["Wild instinct chooses the path.", "The hunt begins in silence.", "Claws decide what words cannot."],
    "8": ["Ancient metal hums awake.", "Steel remembers the command.", "Old machinery finds its rhythm."],
    "9": ["The sky makes room.", "Ancient wings darken the sun.", "A roar becomes weather."],
    "10": ["A thought changes the fight.", "Silence bends around its mind.", "The unseen hand moves first."],
    "11": ["A shadow learns its name.", "Old magic walks beside it.", "Dark omens gather quietly."],
    "12": ["Frost marks the path.", "The air stills before it moves.", "Winter keeps close company."],
}

LEGEND_LINES = [
    "Its name survives the battlefield.",
    "Old stories make room for it.",
    "History walks one step behind.",
    "A legend does not arrive quietly.",
    "Even silence knows this name.",
    "The old tales wake when it appears.",
]

HALLOWEEN_LINES = [
    "A candle flickers with no hand nearby.",
    "The mask smiles after midnight.",
    "Something old waits behind the grin.",
    "A shadow crosses and stays.",
]


def load_mapping():
    with MAPPING_PATH.open("r", encoding="utf-8", newline="") as handle:
        return list(csv.DictReader(handle, delimiter="\t"))


def pick(row, options):
    seed = int(row["game_card_id"]) + sum(ord(ch) for ch in row["mtg_name"])
    return options[seed % len(options)]


def line_for(row):
    if row["mtg_name"] in NAME_LINES:
        return NAME_LINES[row["mtg_name"]]
    if row.get("event_kind") == "halloween":
        return pick(row, HALLOWEEN_LINES)
    if row.get("game_rarity") == "4":
        return pick(row, LEGEND_LINES)
    if "Legendary" in row.get("mtg_type_line", ""):
        return pick(row, LEGEND_LINES)
    type_line = row.get("mtg_type_line", "")
    for keyword, lines in TYPE_LINES:
        if keyword.lower() in type_line.lower():
            return pick(row, lines)
    return pick(row, ELEMENT_LINES.get(row.get("game_element", ""), ["Old magic gathers around it."]))


def custom_line(row, line):
    if row["mtg_name"] in NAME_LINES:
        return line
    if row.get("game_rarity") == "4" or "Legendary" in row.get("mtg_type_line", ""):
        templates = [
            "{name} arrives with an old legend at its back.",
            "The old stories keep a place for {name}.",
            "{name} walks in with history close behind.",
            "When {name} appears, even old rivals remember.",
        ]
    else:
        templates = [
            "{name} leaves this sign: {line}",
            "Where {name} goes, {line_lc}",
            "{name} is known for one thing: {line_lc}",
            "Trainers whisper of {name}: {line_lc}",
            "The trail of {name} says it clearly: {line_lc}",
            "No one forgets {name} when {line_lc}",
        ]
    template = templates[(int(row["game_card_id"]) + len(row["mtg_name"])) % len(templates)]
    return template.format(name=row["mtg_name"], line=line, line_lc=f"{line[0].lower()}{line[1:]}")


def main():
    rows = load_mapping()
    generated = [(row, custom_line(row, line_for(row))) for row in rows]

    with FLAVOR_PATH.open("w", encoding="utf-8", newline="") as handle:
        fieldnames = ["game_card_id", "mtg_name", "flavor_text"]
        writer = csv.DictWriter(handle, fieldnames=fieldnames, delimiter="\t", lineterminator="\n")
        writer.writeheader()
        for row, line in generated:
            writer.writerow({
                "game_card_id": row["game_card_id"],
                "mtg_name": row["mtg_name"],
                "flavor_text": line,
            })
    print(f"Wrote {len(generated)} custom flavor lines to {FLAVOR_PATH}")


if __name__ == "__main__":
    main()
