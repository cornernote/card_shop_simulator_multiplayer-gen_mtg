#!/usr/bin/env python3
import csv
import subprocess
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MAPPING_PATH = ROOT / "docs" / "mapping-final.tsv"
PREVIEW_PATH = ROOT / "preview.png"

CARDS = [
    "Black Lotus",
    "Juzám Djinn",
    "Shivan Dragon",
    "Serra Angel",
    "Sol Ring",
]


def image_path_for(row):
    return ROOT / "images" / "cards" / f"{int(row['game_card_id']):06d}-{row['mtg_scryfall_id']}.jpg"


def load_rows():
    with MAPPING_PATH.open("r", encoding="utf-8", newline="") as handle:
        return list(csv.DictReader(handle, delimiter="\t"))


def card_divs(rows_by_name):
    rotations = [-18, -8, 0, 8, 18]
    offsets = [-168, -84, 0, 84, 168]
    depths = [1, 2, 4, 3, 1]
    html = []
    for name, rotation, offset, depth in zip(CARDS, rotations, offsets, depths):
        row = rows_by_name[name]
        path = image_path_for(row).as_uri()
        html.append(
            f'<img class="card c{depth}" src="{path}" '
            f'style="--rot:{rotation}deg; --x:{offset}px;" alt="{name}">'
        )
    return "\n".join(html)


def html_document(rows_by_name):
    return f"""<!doctype html>
<html>
<head>
<meta charset="utf-8">
<style>
* {{
  box-sizing: border-box;
}}
html, body {{
  margin: 0;
  width: 512px;
  height: 288px;
  overflow: hidden;
  background: #101015;
  font-family: Georgia, "Times New Roman", serif;
}}
.preview {{
  position: relative;
  width: 512px;
  height: 288px;
  background:
    radial-gradient(circle at 22% 22%, rgba(214, 72, 42, .5), transparent 30%),
    radial-gradient(circle at 78% 28%, rgba(55, 121, 198, .46), transparent 30%),
    radial-gradient(circle at 50% 95%, rgba(207, 172, 92, .35), transparent 38%),
    linear-gradient(145deg, #151018 0%, #211716 45%, #0d1320 100%);
}}
.preview::before {{
  content: "";
  position: absolute;
  inset: 0;
  background-image:
    linear-gradient(rgba(255,255,255,.045) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255,255,255,.035) 1px, transparent 1px);
  background-size: 32px 32px;
  mask-image: radial-gradient(circle at center, black, transparent 84%);
}}
.fan {{
  position: absolute;
  left: 50%;
  top: 38px;
  width: 1px;
  height: 1px;
}}
.card {{
  position: absolute;
  width: 108px;
  height: 151px;
  object-fit: cover;
  border-radius: 6px;
  border: 2px solid rgba(245, 220, 150, .92);
  box-shadow: 0 18px 32px rgba(0, 0, 0, .62);
  transform: translateX(calc(-50% + var(--x))) rotate(var(--rot));
  transform-origin: 50% 92%;
}}
.c1 {{ z-index: 1; top: 10px; opacity: .88; }}
.c2 {{ z-index: 2; top: 0; opacity: .95; }}
.c3 {{ z-index: 3; top: -5px; }}
.c4 {{ z-index: 4; top: -9px; width: 116px; height: 162px; }}
.title {{
  position: absolute;
  z-index: 10;
  left: 0;
  right: 0;
  top: 170px;
  text-align: center;
  color: #f7df9d;
  text-shadow:
    0 3px 0 #5b2216,
    0 5px 14px rgba(0,0,0,.8),
    0 0 20px rgba(255,188,77,.35);
}}
.magic {{
  display: block;
  font-size: 54px;
  line-height: 48px;
  font-weight: 900;
  letter-spacing: 2px;
  text-transform: uppercase;
}}
.subtitle {{
  display: block;
  margin-top: 0;
  font-size: 18px;
  line-height: 18px;
  font-weight: 700;
  letter-spacing: 5px;
  color: #f0c86f;
  text-transform: uppercase;
}}
.modname {{
  position: absolute;
  z-index: 11;
  right: 18px;
  bottom: 14px;
  padding: 5px 10px 6px;
  border: 1px solid rgba(245,220,150,.72);
  background: rgba(11, 10, 12, .72);
  color: #fff4cb;
  font: 700 18px Arial, sans-serif;
  border-radius: 4px;
  box-shadow: 0 8px 24px rgba(0,0,0,.45);
}}
.strip {{
  position: absolute;
  z-index: 12;
  left: 0;
  right: 0;
  bottom: 0;
  height: 6px;
  background: linear-gradient(90deg, #f4ece1, #4a84cf, #2f2d2d, #d34b2f, #4f9a54);
}}
</style>
</head>
<body>
<div class="preview">
  <div class="fan">
    {card_divs(rows_by_name)}
  </div>
  <div class="title">
    <span class="magic">Magic</span>
    <span class="subtitle">The Gathering</span>
  </div>
  <div class="modname">GenMTG</div>
  <div class="strip"></div>
</div>
</body>
</html>
"""


def main():
    rows = load_rows()
    rows_by_name = {row["mtg_name"]: row for row in rows}
    missing = [name for name in CARDS if name not in rows_by_name]
    if missing:
        raise RuntimeError(f"Preview cards missing from mapping: {', '.join(missing)}")

    with tempfile.TemporaryDirectory() as tmp:
        html_path = Path(tmp) / "preview.html"
        html_path.write_text(html_document(rows_by_name), encoding="utf-8")
        subprocess.run([
            "google-chrome",
            "--headless=new",
            "--disable-gpu",
            "--no-sandbox",
            "--hide-scrollbars",
            "--window-size=512,288",
            f"--screenshot={PREVIEW_PATH}",
            html_path.as_uri(),
        ], check=True)

    print(f"Wrote {PREVIEW_PATH}")


if __name__ == "__main__":
    main()
