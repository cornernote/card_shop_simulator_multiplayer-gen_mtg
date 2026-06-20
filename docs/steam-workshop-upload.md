# Steam Workshop Upload

This project is published to Steam Workshop with SteamCMD from the local uploader folder:

```text
C:\Program Files (x86)\Steam\steamapps\common\Card Shop Simulator Multiplayer\CardShopSim\Mods\_uploader
```

The current Workshop item is:

- Workshop page: <https://steamcommunity.com/sharedfiles/filedetails/?id=3748493783>
- Published file ID: `3748493783`
- App ID: `3569500`

## Files Used

The uploader folder contains the SteamCMD install:

```text
_uploader\steamcmd.exe
```

The Workshop VDF is kept in this repo:

```text
GenMTG\workshop.vdf
```

SteamCMD can be downloaded from:

<https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip>

Reference upload docs:

<https://github.com/showtom-web/Card-Shop-Simulator-Multiplayer-mods/blob/main/README_EN.md#upload-to-steam-workshop>

`workshop.vdf` points SteamCMD at the mod folder and the Workshop preview image:

```text
"workshopitem"
{
    "appid"            "3569500"
    "publishedfileid"  "3748493783"
    "contentfolder"    "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Card Shop Simulator Multiplayer\\CardShopSim\\Mods\\GenMTG"
    "previewfile"      "C:\\Program Files (x86)\\Steam\\steamapps\\common\\Card Shop Simulator Multiplayer\\CardShopSim\\Mods\\GenMTG\\workshop.jpg"
    "visibility"       "0"
    "title"            "GenMTG"
    "description"      "Ever wanted Card Shop Simulator Multiplayer to feel like cracking open an old-school Magic: The Gathering binder? GenMTG replaces the full vanilla collectible card pool with classic MTG cards from Old School 93/94 and the Pre-Modern era."
    "changenote"       "version 1.0"
}
```

## Before Uploading

1. Make sure the repo is committed and pushed.
2. Make sure `workshop.jpg` exists and is a square JPEG.
3. Make sure `workshop.txt` has the Steam wiki/BBCode description.
4. Make sure `workshop.vdf` points to the correct absolute `contentfolder` and `previewfile`.
5. Do not paste or commit Steam passwords, guard codes, or session files.

## Upload Command

Run this from PowerShell inside `_uploader`:

```powershell
.\steamcmd.exe +login <steam_username> <steam_password> +workshop_build_item ..\GenMTG\workshop.vdf +quit
```

Steam Guard may ask for mobile confirmation. Confirm it in the Steam Mobile app, then wait for SteamCMD to finish uploading.

## After Uploading

SteamCMD only sends the VDF description field during the build. For the full formatted Workshop page text, paste the contents of:

```text
GenMTG\workshop.txt
```

into the Steam Workshop description editor.

Useful local logs after an upload attempt:

```text
_uploader\logs\stderr.txt
_uploader\logs\workshop_log.txt
_uploader\workshopbuilds\depot_build_3569500.log
```
