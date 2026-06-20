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
    rotations = [-20, -9, 0, 9, 20]
    offsets = [-140, -70, 0, 70, 140]
    depths = [1, 2, 5, 3, 1]
    tops = [29, 15, 3, 15, 29]
    html = []
    for name, rotation, offset, depth, top in zip(CARDS, rotations, offsets, depths, tops):
        row = rows_by_name[name]
        path = image_path_for(row).as_uri()
        html.append(
            f'<img class="card c{depth}" src="{path}" '
            f'style="--rot:{rotation}deg; --x:{offset}px; --top:{top}px;" alt="{name}">'
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
  height: 512px;
  overflow: hidden;
  background: #101015;
  font-family: Georgia, "Times New Roman", serif;
}}
.preview {{
  position: relative;
  width: 512px;
  height: 512px;
  overflow: hidden;
  background:
    radial-gradient(circle at 18% 18%, rgba(214, 72, 42, .56), transparent 28%),
    radial-gradient(circle at 82% 20%, rgba(55, 121, 198, .50), transparent 29%),
    radial-gradient(circle at 50% 88%, rgba(207, 172, 92, .42), transparent 40%),
    linear-gradient(145deg, #151018 0%, #231615 45%, #0d1320 100%);
}}
.preview::before {{
  content: "";
  position: absolute;
  inset: 0;
  background-image:
    linear-gradient(rgba(255,255,255,.045) 1px, transparent 1px),
    linear-gradient(90deg, rgba(255,255,255,.035) 1px, transparent 1px);
  background-size: 28px 28px;
  mask-image: radial-gradient(circle at center, black, transparent 84%);
}}
.preview::after {{
  content: "";
  position: absolute;
  inset: 0;
  box-shadow:
    inset 0 0 0 6px rgba(246, 218, 144, .16),
    inset 0 0 60px rgba(0,0,0,.55);
  pointer-events: none;
}}
.fan {{
  position: absolute;
  left: 50%;
  top: 56px;
  width: 1px;
  height: 1px;
}}
.card {{
  position: absolute;
  top: var(--top);
  width: 107px;
  height: 149px;
  object-fit: cover;
  border-radius: 6px;
  border: 2px solid rgba(245, 220, 150, .92);
  box-shadow: 0 19px 30px rgba(0, 0, 0, .66);
  transform: translateX(calc(-50% + var(--x))) rotate(var(--rot));
  transform-origin: 50% 94%;
}}
.c1 {{ z-index: 1; opacity: .90; }}
.c2 {{ z-index: 2; opacity: .97; }}
.c3 {{ z-index: 3; }}
.c4 {{ z-index: 4; }}
.c5 {{ z-index: 5; width: 119px; height: 166px; top: -4px; }}
.title {{
  position: absolute;
  z-index: 10;
  left: 0;
  right: 0;
  top: 280px;
  text-align: center;
  color: #f7df9d;
  text-shadow:
    0 3px 0 #5b2216,
    0 7px 17px rgba(0,0,0,.86),
    0 0 23px rgba(255,188,77,.36);
}}
.magic {{
  display: block;
  font-size: 71px;
  line-height: 62px;
  font-weight: 900;
  letter-spacing: 1px;
  text-transform: uppercase;
}}
.subtitle {{
  display: block;
  margin-top: 4px;
  font-size: 19px;
  line-height: 20px;
  font-weight: 700;
  letter-spacing: 5px;
  color: #f0c86f;
  text-transform: uppercase;
}}
.modname {{
  position: absolute;
  z-index: 11;
  left: 50%;
  bottom: 59px;
  transform: translateX(-50%);
  padding: 7px 13px 8px;
  border: 1px solid rgba(245,220,150,.72);
  background: rgba(11, 10, 12, .72);
  color: #fff4cb;
  font: 800 27px Arial, sans-serif;
  border-radius: 4px;
  box-shadow: 0 9px 20px rgba(0,0,0,.46);
}}
.strip {{
  position: absolute;
  z-index: 12;
  left: 0;
  right: 0;
  bottom: 0;
  height: 12px;
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
            "--window-size=512,512",
            f"--screenshot={PREVIEW_PATH}",
            html_path.as_uri(),
        ], check=True)

    print(f"Wrote {PREVIEW_PATH}")


if __name__ == "__main__":
    main()
