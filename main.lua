local M = {
    id          = "GenMTG",
    name        = "GenMTG",
    version     = "0.1.0",
    author      = "Brett + Codex",
    description = "Replaces the full vanilla card pool with Old School and Pre-Modern Magic: The Gathering cards.",
}

local function GetExistingCardData(registry, cardId)
    if not registry then return nil end
    local D = UE.FCardDataAll()
    local ok, result = pcall(function() return registry:GetCardData(cardId, D) end)
    if ok and result ~= false then return D end
    return nil
end

local function ApplyGenMTG()
    local R = UE.UCardFunction.GetCardRegistryWS(MOD.GAA.WorldUtils:GetCurrentWorld())
    if not R then
        if MOD and MOD.Logger then MOD.Logger.LogScreen("[GenMTG] Cannot find card registry", 5,1,0,0,1) end
        return
    end

    local missingCards = 0

    do
        local cardId = 1101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Flowstone Giant"
            D.Description = "Flowstone Giant leaves this sign: A red spark refuses to die."
            D.TexturePath = dir .. "images/cards/001101-46e8240a-d882-4f60-8960-1856284e04a0.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phantom Tiger"
            D.Description = "No one forgets Phantom Tiger when the past borrows a body."
            D.TexturePath = dir .. "images/cards/001102-32839296-e583-4f71-aa44-dbe16408665e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Camel"
            D.Description = "The trail of Camel says it clearly: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/001103-e0078aa8-bfb8-43b0-a6b7-1991596c21e1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elvish Scout"
            D.Description = "Elvish Scout leaves this sign: The road bends under its weight."
            D.TexturePath = dir .. "images/cards/001104-689cd2ed-be81-4769-a8ec-287946301396.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Raging Goblin"
            D.Description = "Raging Goblin is known for one thing: lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/001105-657190fe-9c18-4134-a556-e081daff73cd.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arctic Merfolk"
            D.Description = "The trail of Arctic Merfolk says it clearly: the sea answers in song."
            D.TexturePath = dir .. "images/cards/001106-86369fe5-d86d-4f4c-8f3d-dedc174f2032.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Hounds"
            D.Description = "Where Lightning Hounds goes, loyalty comes with teeth."
            D.TexturePath = dir .. "images/cards/001107-38c82a1d-5db1-4090-b446-cc5bc6dc811d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Plague Rats"
            D.Description = "Trainers whisper of Plague Rats: winter keeps close company."
            D.TexturePath = dir .. "images/cards/001108-c99fd75c-4b41-411f-92b0-ca3b220946b5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1109
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Druid Lyrist"
            D.Description = "No one forgets Druid Lyrist when the swarm notices first."
            D.TexturePath = dir .. "images/cards/001109-e9923532-bc4f-44de-b963-d6914321c49a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Patron of the Wild"
            D.Description = "Patron of the Wild leaves this sign: Claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/001110-7f7a0810-3970-454f-8381-700d6c6aefdc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Trained Pronghorn"
            D.Description = "Trained Pronghorn leaves this sign: Frost marks the path."
            D.TexturePath = dir .. "images/cards/001111-720ec745-226c-4211-974f-e04a4f9e1902.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Taunting Elf"
            D.Description = "Taunting Elf is known for one thing: wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/001112-6b24af94-9632-47da-9bf3-e81bb743cd43.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pikemen"
            D.Description = "The trail of Pikemen says it clearly: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/001113-18243ac8-6097-4f2c-8064-3dab48038e4a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hunter Sliver"
            D.Description = "No one forgets Hunter Sliver when a roar becomes weather."
            D.TexturePath = dir .. "images/cards/001114-ca9aea1a-6f50-4f66-9f36-2e214dce41b4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wellwisher"
            D.Description = "Trainers whisper of Wellwisher: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/001115-be95ab7c-0e77-4293-aa48-ee54902a363f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1116
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jackalope Herd"
            D.Description = "Jackalope Herd is known for one thing: the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/001116-cb80105c-d2c0-4f8c-9302-5e6152a60f54.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1117
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Daru Spiritualist"
            D.Description = "Daru Spiritualist leaves this sign: Wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/001117-18f26b88-cffc-47ed-a70a-7d704a32c8bb.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1118
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Willow Dryad"
            D.Description = "Willow Dryad is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/001118-1def835b-aabb-4a9d-8fb9-460452de0d79.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1119
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Viashino Sandscout"
            D.Description = "Trainers whisper of Viashino Sandscout: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/001119-12dd888a-ca98-44dd-a213-858c3539dc97.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1120
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tree Monkey"
            D.Description = "Trainers whisper of Tree Monkey: it leaps before doubt can catch it."
            D.TexturePath = dir .. "images/cards/001120-c60bbbf7-a005-4b4b-b8e4-e95bbb67f529.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1121
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mtenda Lion"
            D.Description = "The trail of Mtenda Lion says it clearly: grace keeps its claws hidden."
            D.TexturePath = dir .. "images/cards/001121-cb05cf5b-2a0d-432a-b8e7-10335c2a18e8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1122
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merfolk of the Pearl Trident"
            D.Description = "The trail of Merfolk of the Pearl Trident says it clearly: the sea answers in song."
            D.TexturePath = dir .. "images/cards/001122-a2e7d1a5-b8ad-48e8-9b54-3663310eca33.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1123
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cinder Crawler"
            D.Description = "Trainers whisper of Cinder Crawler: smoke follows every step."
            D.TexturePath = dir .. "images/cards/001123-a9406050-d76b-4569-a463-e21acaf84166.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1124
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Homarid"
            D.Description = "Trainers whisper of Homarid: dark omens gather quietly."
            D.TexturePath = dir .. "images/cards/001124-d6ffeab4-83b1-4414-ae72-e59a2354ea15.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crashing Centaur"
            D.Description = "No one forgets Crashing Centaur when old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/001201-e1f3a32a-bfd2-4c31-a349-3e62a84c20e1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Willbender"
            D.Description = "Willbender leaves this sign: One word tilts the battle."
            D.TexturePath = dir .. "images/cards/001202-fb33b35b-33c9-4d59-9ed6-7ad40ea82cb0.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Voice of Law"
            D.Description = "Trainers whisper of Voice of Law: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/001203-daec52a4-02da-4bff-aff4-5247baed1326.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Coral Fighters"
            D.Description = "Coral Fighters leaves this sign: A ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/001204-08f9dfa0-bdb3-4419-ae4b-cc394552af74.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1205
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Primordial Ooze"
            D.Description = "Primordial Ooze is known for one thing: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/001205-a53d8d6d-b8d3-4f71-a88a-5d639ce2925f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1206
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Defiant Vanguard"
            D.Description = "The trail of Defiant Vanguard says it clearly: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/001206-4c0bd267-59ec-41df-b0b7-37f6e6d6b073.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1207
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cinder Elemental"
            D.Description = "No one forgets Cinder Elemental when the world moves through it."
            D.TexturePath = dir .. "images/cards/001207-80b39056-2ee8-4cfd-acbd-ba99f74e788d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1208
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Roc Hatchling"
            D.Description = "Trainers whisper of Roc Hatchling: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/001208-25857884-6bb7-4a8e-a08b-fa610af8a5c3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1209
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sengir Vampire"
            D.Description = "No one forgets Sengir Vampire when it smiles without warmth."
            D.TexturePath = dir .. "images/cards/001209-2308c0c4-7a78-4da8-8dd8-5b35b49a1896.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1210
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ovinomancer"
            D.Description = "Trainers whisper of Ovinomancer: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/001210-ae4f0988-4194-4481-a6b7-27753261174a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1211
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Yavimaya Gnats"
            D.Description = "Where Yavimaya Gnats goes, small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/001211-9d8b7020-ca8f-4867-bc51-13d824daf154.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1212
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloudreach Cavalry"
            D.Description = "Cloudreach Cavalry leaves this sign: Winter keeps close company."
            D.TexturePath = dir .. "images/cards/001212-65680bda-b999-4c2a-99a8-b03287e00807.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1213
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Samite Archer"
            D.Description = "Samite Archer is known for one thing: winter keeps close company."
            D.TexturePath = dir .. "images/cards/001213-07a262d7-6d0c-43d0-89b6-9f46a1a9eb69.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1214
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spined Sliver"
            D.Description = "Trainers whisper of Spined Sliver: the next spark knows where to land."
            D.TexturePath = dir .. "images/cards/001214-9a8a9442-7b08-4cc8-94ec-bddb8feab1a8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1215
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Undead Warchief"
            D.Description = "Undead Warchief leaves this sign: Old bones remember the road."
            D.TexturePath = dir .. "images/cards/001215-e6b3bcfe-be82-458b-ba59-ecb84436d747.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1216
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ornithopter"
            D.Description = "Trainers whisper of Ornithopter: a relic cuts the air."
            D.TexturePath = dir .. "images/cards/001216-09c6ac8a-01b1-4af5-89d8-ad66d9a81ceb.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Emperor Crocodile"
            D.Description = "The trail of Emperor Crocodile says it clearly: stone remembers the impact."
            D.TexturePath = dir .. "images/cards/001301-9ccba208-1e24-45bb-a556-a3eb936efb10.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Callous Oppressor"
            D.Description = "No one forgets Callous Oppressor when eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/001302-b3dd3ce7-e0e3-4412-9983-ff933584f59b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kird Ape"
            D.Description = "Trainers whisper of Kird Ape: old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/001303-c88e9802-4066-453e-b246-96b6245d21fe.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pallimud"
            D.Description = "The trail of Pallimud says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/001304-61adc314-cfb2-4fdd-925c-cc1dc4692992.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Forgotten Ancient"
            D.Description = "Forgotten Ancient is known for one thing: the world moves through it."
            D.TexturePath = dir .. "images/cards/001305-49d3b91d-2e4f-4574-89f8-7b804f1d21bf.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pyre Zombie"
            D.Description = "Trainers whisper of Pyre Zombie: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/001306-6c030108-2995-4fb0-9b80-efdfdd0f11e0.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Savannah Lions"
            D.Description = "Where Savannah Lions goes, grace keeps its claws hidden."
            D.TexturePath = dir .. "images/cards/001307-a2ee9127-d007-48e8-b797-88ef72bc7c8b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Eternal Dragon"
            D.Description = "Eternal Dragon is known for one thing: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/001308-0596928c-2b20-4dbb-aa78-3ab6c3ce0d72.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urza's Avenger"
            D.Description = "Trainers whisper of Urza's Avenger: old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/001309-60bd9559-1a8f-47d0-af6b-d0681cae4060.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Piledriver"
            D.Description = "Where Goblin Piledriver goes, smoke follows every step."
            D.TexturePath = dir .. "images/cards/001310-f6c4df1f-f148-42ec-8e22-e7114216927d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merfolk Looter"
            D.Description = "No one forgets Merfolk Looter when the sea answers in song."
            D.TexturePath = dir .. "images/cards/001311-4ec07b20-9768-4c21-90d5-70d57959c698.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Knight"
            D.Description = "Kjeldoran Knight is known for one thing: honor wears a sharpened edge."
            D.TexturePath = dir .. "images/cards/001312-d5b9db8f-93b5-44e3-9e2b-728c80dfbb37.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bomb Squad"
            D.Description = "Trainers whisper of Bomb Squad: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/001313-8e9535a5-29ea-4085-a36b-4905d85e97ac.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thundercloud Elemental"
            D.Description = "The trail of Thundercloud Elemental says it clearly: something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001314-597aea42-43e0-41ed-bfe7-fc92b6b8e680.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Will-o'-the-Wisp"
            D.Description = "No one forgets Will-o'-the-Wisp when a candle flickers with no hand nearby."
            D.TexturePath = dir .. "images/cards/001315-583ef317-8105-4917-ba3c-93de3eebd944.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1316
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mold Demon"
            D.Description = "Mold Demon leaves this sign: A shadow crosses and stays."
            D.TexturePath = dir .. "images/cards/001316-649a33aa-7eac-4161-ae1a-fcbc758abccf.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1317
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skulking Ghost"
            D.Description = "No one forgets Skulking Ghost when something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001317-f8ca7e96-0545-4f36-85c0-944d5c0b760a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1318
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Guiltfeeder"
            D.Description = "Trainers whisper of Guiltfeeder: something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001318-e2e9af4e-bd02-4d91-898f-68d192446904.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1319
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Headless Horseman"
            D.Description = "The trail of Headless Horseman says it clearly: the mask smiles after midnight."
            D.TexturePath = dir .. "images/cards/001319-d1aa37c8-98fa-4984-b09b-cf65ad84e97b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1320
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sengir Bats"
            D.Description = "No one forgets Sengir Bats when something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001320-3c745c2c-4311-412d-a137-02bf6d106e46.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1321
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lord of the Pit"
            D.Description = "The trail of Lord of the Pit says it clearly: the mask smiles after midnight."
            D.TexturePath = dir .. "images/cards/001321-3b4c083f-d619-4913-aa7b-d345e3bdb1c4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1322
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Shivan Dragon"
            D.Description = "Old wings, hot breath, and a throne of smoke."
            D.TexturePath = dir .. "images/cards/001322-7fec2b71-8fa9-4818-9c4f-5d2dcd2af495.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1323
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Juzám Djinn"
            D.Description = "A dangerous wish with a giant's shadow."
            D.TexturePath = dir .. "images/cards/001323-31bf3f14-b5df-498b-a1bb-965885c82401.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1324
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jackal Pup"
            D.Description = "Jackal Pup is known for one thing: wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/001324-3707ab74-9aec-4d30-86e0-ffa5f72d5b4f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1325
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Timber Wolves"
            D.Description = "Timber Wolves leaves this sign: Green strength gathers quietly."
            D.TexturePath = dir .. "images/cards/001325-d8f84fc8-69b4-4756-9634-4d6c17ec88a1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1326
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wild Mongrel"
            D.Description = "Wild Mongrel leaves this sign: Loyalty comes with teeth."
            D.TexturePath = dir .. "images/cards/001326-5bb8dd5c-a79a-4afc-80b2-64645bb17a34.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1327
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Guiding Spirit"
            D.Description = "Trainers whisper of Guiding Spirit: hope descends with a blade."
            D.TexturePath = dir .. "images/cards/001327-5f96d184-0ef8-40f7-98bc-bd4c53c57072.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1328
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Avian"
            D.Description = "No one forgets Clockwork Avian when a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/001328-4a92484b-064c-4588-a1ea-6de8fd485ca4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1329
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nether Shadow"
            D.Description = "The trail of Nether Shadow says it clearly: a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/001329-b0877527-6dbe-49f2-862f-5c79e66a92e9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1330
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Black Knight"
            D.Description = "The trail of Black Knight says it clearly: an old oath rides in steel."
            D.TexturePath = dir .. "images/cards/001330-a03b6221-2c85-44c0-82f1-b2b9e2c83c80.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1331
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Warping Wurm"
            D.Description = "No one forgets Warping Wurm when the ground opens for its hunger."
            D.TexturePath = dir .. "images/cards/001331-a2c41d0f-f1db-4797-b245-7de12ffa3a0d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vesuvan Doppelganger"
            D.Description = "No one forgets Vesuvan Doppelganger when old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/001401-92808879-895f-4e65-854c-2c92f170a1e3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Firestorm Phoenix"
            D.Description = "Trainers whisper of Firestorm Phoenix: ash is only a pause."
            D.TexturePath = dir .. "images/cards/001402-3247a7dd-f48c-4cb4-8475-4864acccef7a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mirri, Cat Warrior"
            D.Description = "The old stories keep a place for Mirri, Cat Warrior."
            D.TexturePath = dir .. "images/cards/001403-6d1682dd-5a99-4bee-a2c2-c8735047e1a9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gorilla Titan"
            D.Description = "Where Gorilla Titan goes, the trees shake first."
            D.TexturePath = dir .. "images/cards/001404-435d9562-8f2b-43fe-ba21-8f5896378280.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fire Drake"
            D.Description = "No one forgets Fire Drake when it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/001405-8b94218b-26d7-40cd-aef7-0e2415d1551f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tetravus"
            D.Description = "The trail of Tetravus says it clearly: built long ago, still obeying."
            D.TexturePath = dir .. "images/cards/001406-49c1a2b2-50f0-4ed0-bd8f-06cd6aada04f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Shark"
            D.Description = "Giant Shark is known for one thing: a fin cuts through silence."
            D.TexturePath = dir .. "images/cards/001407-53ec4a19-0f2f-4713-a869-58832484648d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Triskelion"
            D.Description = "Triskelion is known for one thing: built long ago, still obeying."
            D.TexturePath = dir .. "images/cards/001408-09294401-a895-4084-8302-196a946863d6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rogue Elephant"
            D.Description = "Trainers whisper of Rogue Elephant: the charge changes the map."
            D.TexturePath = dir .. "images/cards/002101-1b622b2f-84ad-4203-97fa-35af09e1c370.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Oyster"
            D.Description = "Giant Oyster is known for one thing: the tide bends near it."
            D.TexturePath = dir .. "images/cards/002102-f8045d23-e6e6-474c-a3e7-ddfc6121657a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dire Wolves"
            D.Description = "Dire Wolves is known for one thing: green strength gathers quietly."
            D.TexturePath = dir .. "images/cards/002103-a602c93d-e00f-4b4f-a7ff-95316b7e7641.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kyren Sniper"
            D.Description = "The trail of Kyren Sniper says it clearly: dust rises around it."
            D.TexturePath = dir .. "images/cards/002104-4df99e19-0b1e-48ec-a146-38cf147eab61.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zodiac Monkey"
            D.Description = "Zodiac Monkey leaves this sign: Quick hands invite trouble."
            D.TexturePath = dir .. "images/cards/002105-5e98eb0b-c3b5-4561-b8a2-f22bd0fe1115.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Snarling Undorak"
            D.Description = "The trail of Snarling Undorak says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/002106-05788d63-6210-44f2-9ae4-e55e9507a3a9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vampire Bats"
            D.Description = "Where Vampire Bats goes, a roar becomes weather."
            D.TexturePath = dir .. "images/cards/002107-c8b8aa03-c777-467f-9b05-812183553f7b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloud Sprite"
            D.Description = "Cloud Sprite is known for one thing: small wings, sharp tricks."
            D.TexturePath = dir .. "images/cards/002108-3d14352c-ac8c-45b5-b930-63822408ba3d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2109
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Grappler"
            D.Description = "Goblin Grappler leaves this sign: Smoke follows every step."
            D.TexturePath = dir .. "images/cards/002109-5c948872-295c-41b9-8094-db7db7578b0d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dragon Whelp"
            D.Description = "The trail of Dragon Whelp says it clearly: its shadow arrives before the roar."
            D.TexturePath = dir .. "images/cards/002110-349ff6e6-b914-4787-bb90-ea77a3550d23.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fungusaur"
            D.Description = "Fungusaur is known for one thing: spores drift like tiny omens."
            D.TexturePath = dir .. "images/cards/002111-37f6f2bd-4e0e-42d8-b5a6-ad4ee736c69e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hunting Drake"
            D.Description = "Where Hunting Drake goes, it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/002112-5b0293a9-48fe-4018-bd25-3e02c227a3dd.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thunder Spirit"
            D.Description = "Trainers whisper of Thunder Spirit: the past borrows a body."
            D.TexturePath = dir .. "images/cards/002113-61a59775-b1cd-4ed0-8abf-c2b37f7be0d5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Teferi's Drake"
            D.Description = "The trail of Teferi's Drake says it clearly: it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/002114-c24823df-5651-4578-a0c8-f9f52f66abe4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thallid"
            D.Description = "The trail of Thallid says it clearly: spores drift like tiny omens."
            D.TexturePath = dir .. "images/cards/002115-4caaf31b-86a9-485b-8da7-d5b526ed1233.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Snowman"
            D.Description = "Where Goblin Snowman goes, heat gathers around its name."
            D.TexturePath = dir .. "images/cards/002201-5bbb260a-6763-4d1c-a009-4e34cd572519.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Brine Hag"
            D.Description = "Trainers whisper of Brine Hag: blue shadows move below."
            D.TexturePath = dir .. "images/cards/002202-2a1e7796-fbfb-4976-879f-bb748429d5c7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Warchief"
            D.Description = "The trail of Goblin Warchief says it clearly: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/002203-66864a4b-8924-40ef-a337-15b12413a158.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Boneshard Slasher"
            D.Description = "Where Boneshard Slasher goes, the dark learned a new shape."
            D.TexturePath = dir .. "images/cards/002204-27201370-32cc-4b90-890d-8c3f5362ad70.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2205
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Whirling Dervish"
            D.Description = "Where Whirling Dervish goes, the swarm notices first."
            D.TexturePath = dir .. "images/cards/002205-e51bfbd4-2319-41eb-b694-72874c24b31a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2206
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dauthi Trapper"
            D.Description = "Dauthi Trapper leaves this sign: The swarm notices first."
            D.TexturePath = dir .. "images/cards/002206-6d83770e-16ff-49c6-b4e7-eb7fc566eef8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spike Feeder"
            D.Description = "Trainers whisper of Spike Feeder: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/002301-3751b2ae-a234-4691-984b-2f9f6b1cd1df.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Man-o'-War"
            D.Description = "Man-o'-War is known for one thing: a bright shape slips below."
            D.TexturePath = dir .. "images/cards/002302-a7a4a023-8867-4fb4-baf9-df7540b61725.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Halfdane"
            D.Description = "When Halfdane appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/002303-2e939761-3542-4044-9038-d1d30c6a38fc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Black Lotus"
            D.Description = "A perfect bloom. A moment of impossible power."
            D.TexturePath = dir .. "images/cards/002304-4a2e428c-dd25-484c-bbc8-2d6ce10ef42c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Phalanx"
            D.Description = "Kjeldoran Phalanx leaves this sign: Wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/002305-b6e91ba0-b229-4ab1-84f3-2a490dfa5051.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dralnu's Pet"
            D.Description = "Dralnu's Pet is known for one thing: old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/002306-cd5f4daf-7b54-4425-a93a-19532dfb83ca.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blistering Firecat"
            D.Description = "Trainers whisper of Blistering Firecat: raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/002307-e0ddcf4a-1943-49dd-a02c-75804ce4bc3e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gigapede"
            D.Description = "Gigapede leaves this sign: One wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/002308-0a96a608-9237-41c1-824c-89d5fad939ad.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tempest Efreet"
            D.Description = "Where Tempest Efreet goes, smoke and pride take form."
            D.TexturePath = dir .. "images/cards/002309-c2ea6dfe-64d6-451a-bd34-31546996e711.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Krovikan Horror"
            D.Description = "Trainers whisper of Krovikan Horror: fear gives it room to breathe."
            D.TexturePath = dir .. "images/cards/002310-e1f3cb1c-6bde-4b55-b5bc-5b64b56930f2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pygmy Hippo"
            D.Description = "Pygmy Hippo leaves this sign: Blue shadows move below."
            D.TexturePath = dir .. "images/cards/002311-2e3f6220-6ead-46b4-8663-57609ef5a12e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Roots"
            D.Description = "Trainers whisper of Wall of Roots: green life grows teeth."
            D.TexturePath = dir .. "images/cards/002312-aeb151d2-c313-44d2-972e-33487f070c23.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sustaining Spirit"
            D.Description = "Sustaining Spirit is known for one thing: hope descends with a blade."
            D.TexturePath = dir .. "images/cards/002313-c9ecf91a-9ce1-44a1-8859-7163d32cfba6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Time Walk"
            D.Description = "One step bends into another turn."
            D.TexturePath = dir .. "images/cards/002314-ade7d00d-4e7b-46e9-ace1-63f628a589fc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rootwater Shaman"
            D.Description = "Trainers whisper of Rootwater Shaman: the sea answers in song."
            D.TexturePath = dir .. "images/cards/002315-caa1b84b-efda-4324-9106-0d1d00385cdc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2316
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Atog"
            D.Description = "The trail of Atog says it clearly: hunger has a very strange smile."
            D.TexturePath = dir .. "images/cards/002316-f123fe6a-99ca-48c1-9a7a-ae905c10108a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2317
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Timmerian Fiends"
            D.Description = "No one forgets Timmerian Fiends when the dark learned a new shape."
            D.TexturePath = dir .. "images/cards/002317-90643766-c92f-4a25-bd02-227f3c91f391.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2318
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Dragon"
            D.Description = "Lightning Dragon leaves this sign: The sky remembers this one."
            D.TexturePath = dir .. "images/cards/002318-342fc7bc-657f-43a3-9558-f516fa545a09.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2319
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ancestral Recall"
            D.Description = "Three old memories arrive like lightning."
            D.TexturePath = dir .. "images/cards/002319-2dd41293-d7c8-4422-9f0c-b3e96350f5c9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Scryb Sprites"
            D.Description = "Scryb Sprites is known for one thing: small wings, sharp tricks."
            D.TexturePath = dir .. "images/cards/002401-ab52f491-26f1-494f-8ec7-9630c4f9653a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lichenthrope"
            D.Description = "Lichenthrope is known for one thing: roots remember old magic."
            D.TexturePath = dir .. "images/cards/002402-76f0c356-a81d-41d4-a8b7-8c159146a8b8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phantom Nishoba"
            D.Description = "Phantom Nishoba leaves this sign: The past borrows a body."
            D.TexturePath = dir .. "images/cards/002403-56ebc372-aabd-4174-a943-c7bf59e5028d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Great Whale"
            D.Description = "Trainers whisper of Great Whale: a living island turns below."
            D.TexturePath = dir .. "images/cards/002404-58a2acf1-dad8-4f93-a34e-891e5178a48f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spectral Bears"
            D.Description = "Where Spectral Bears goes, the past borrows a body."
            D.TexturePath = dir .. "images/cards/002405-7e13875f-f745-4afd-a830-33df9576dce8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Timetwister"
            D.Description = "Past and future tumble through the same door."
            D.TexturePath = dir .. "images/cards/002406-01bda3d7-122a-48a0-bab3-676c4a557b74.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jareth, Leonine Titan"
            D.Description = "Jareth, Leonine Titan arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/002407-65dd1364-ff36-4cb9-ad93-e6fcbcb942cf.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sol Ring"
            D.Description = "A small circle holding a sun's worth of power."
            D.TexturePath = dir .. "images/cards/002408-9138d11a-d55f-4c46-bb27-7e8e15a44e8c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Shadows"
            D.Description = "Wall of Shadows is known for one thing: the path ends here."
            D.TexturePath = dir .. "images/cards/003101-69c6e076-d7bf-435b-ba79-84aa9f073130.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Beast"
            D.Description = "Trainers whisper of Clockwork Beast: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/003102-ed5507d5-7f1b-4cbf-8341-495c33e5ab6c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Battering Ram"
            D.Description = "Battering Ram is known for one thing: old gears wake with purpose."
            D.TexturePath = dir .. "images/cards/003103-e7e2857f-f6eb-4091-b758-7bb508544170.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urborg Phantom"
            D.Description = "The trail of Urborg Phantom says it clearly: the past borrows a body."
            D.TexturePath = dir .. "images/cards/003104-397355b9-5b67-4973-972e-3505c500d116.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Daru Stinger"
            D.Description = "Trainers whisper of Daru Stinger: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/003105-ff5866a4-f4c0-45bc-9b33-b77387441d34.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aven Farseer"
            D.Description = "The trail of Aven Farseer says it clearly: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/003106-47854e89-4d22-4eb6-a77d-6f04407bd2e5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Albatross"
            D.Description = "Giant Albatross is known for one thing: it reads the wind first."
            D.TexturePath = dir .. "images/cards/003107-bce05870-74d3-43f1-92d0-dc1744c0138d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thunder Dragon"
            D.Description = "Thunder Dragon is known for one thing: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/003108-7e9b06a8-c3f3-4174-b992-7da7ca163990.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3109
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Auramancer"
            D.Description = "No one forgets Auramancer when one word tilts the battle."
            D.TexturePath = dir .. "images/cards/003109-090dd4cf-5087-4ed8-a944-f3794e5862d5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bloodfire Dwarf"
            D.Description = "No one forgets Bloodfire Dwarf when smoke follows every step."
            D.TexturePath = dir .. "images/cards/003110-86b5c38e-7d74-4862-8187-f5db4a3d1e0f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Ski Patrol"
            D.Description = "Goblin Ski Patrol is known for one thing: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/003111-fde1c8b5-1e01-4920-8d02-bf80d5b238c5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chicken Egg"
            D.Description = "Trainers whisper of Chicken Egg: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003112-640ac565-331b-47e2-b2af-a8a94a96488a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Sky Raider"
            D.Description = "The trail of Goblin Sky Raider says it clearly: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/003113-738cbf9b-e3d3-4568-93ce-7915b248e5b3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soldevi Sentry"
            D.Description = "Soldevi Sentry is known for one thing: old machinery finds its rhythm."
            D.TexturePath = dir .. "images/cards/003114-85976b5c-4eed-4cf9-b2b0-a8421a97ab2a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Raider"
            D.Description = "Goblin Raider is known for one thing: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003115-3315d75d-08dc-456c-a8e7-fe3136bf1a6b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Voice of Truth"
            D.Description = "No one forgets Voice of Truth when hope descends with a blade."
            D.TexturePath = dir .. "images/cards/003201-40377e3d-77d9-4d86-ac8c-4e27803e48d8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Raven Familiar"
            D.Description = "Raven Familiar leaves this sign: It reads the wind first."
            D.TexturePath = dir .. "images/cards/003202-b104638d-29aa-490c-8cfb-e08fc94efb59.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skyshroud Elite"
            D.Description = "Skyshroud Elite is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/003203-f6a496a4-1b4c-4c5d-99e5-ec40601c759d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Orcish Cannoneers"
            D.Description = "No one forgets Orcish Cannoneers when a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/003204-a4309a2f-27f5-4652-b0b4-6a6119436f75.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3205
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Frost Giant"
            D.Description = "Frost Giant leaves this sign: Heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003205-6955d54f-7b37-4e43-8183-51677fb1ee11.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3206
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Killer Bees"
            D.Description = "Where Killer Bees goes, one wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/003206-6a749837-56ff-4e42-9bf2-82633bccdc39.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3207
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bloodline Shaman"
            D.Description = "Where Bloodline Shaman goes, old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/003207-5fdfc473-8477-4c04-a4e7-ecac1b0a5716.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3208
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zombie Mob"
            D.Description = "Zombie Mob is known for one thing: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/003208-ab85551f-c9cc-409c-9fb5-a45de695e521.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3209
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soldevi Sage"
            D.Description = "No one forgets Soldevi Sage when old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/003209-268c3726-0e2d-40df-811d-2cdf6b328ea3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3210
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crosis's Attendant"
            D.Description = "Crosis's Attendant leaves this sign: Stone remembers its maker."
            D.TexturePath = dir .. "images/cards/003210-45edc18c-2046-4d0e-92fe-a6cf4aaf1c6f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Flametongue Kavu"
            D.Description = "No one forgets Flametongue Kavu when heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003301-e5056bca-bd90-4b50-8630-105558f8ef92.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Harbinger of Night"
            D.Description = "Harbinger of Night is known for one thing: a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/003302-33124133-ed2c-4b86-a135-ac76f4fe4da5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tahngarth, Talruum Hero"
            D.Description = "Tahngarth, Talruum Hero walks in with history close behind."
            D.TexturePath = dir .. "images/cards/003303-c1778f37-af01-4f8c-ab9d-a4c60abf7e78.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elven Warhounds"
            D.Description = "Where Elven Warhounds goes, it follows trouble by scent."
            D.TexturePath = dir .. "images/cards/003304-29138c1e-11cb-488f-8e04-f5488e08a81e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Psychatog"
            D.Description = "Psychatog is known for one thing: hunger has a very strange smile."
            D.TexturePath = dir .. "images/cards/003305-6757bf0e-489f-4be2-9e41-463b59f00dd1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nantuko Shade"
            D.Description = "Where Nantuko Shade goes, its shadow carries a blade."
            D.TexturePath = dir .. "images/cards/003306-2ed9dc9c-b92b-4305-8c54-1a63f750f8d1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chromeshell Crab"
            D.Description = "No one forgets Chromeshell Crab when the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/003307-e02a40a4-fa61-4595-810a-3796e0d71507.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Badger"
            D.Description = "Giant Badger is known for one thing: tiny wings carry a warning."
            D.TexturePath = dir .. "images/cards/003308-6b1ac9c5-5f9f-445e-8e4b-b53ed9984958.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Squirrel Mob"
            D.Description = "Trainers whisper of Squirrel Mob: the forest leans closer."
            D.TexturePath = dir .. "images/cards/003309-181254ce-259a-4b31-8937-728564f2baf3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mother of Runes"
            D.Description = "Where Mother of Runes goes, deep currents keep its secret."
            D.TexturePath = dir .. "images/cards/003310-0b1a46ab-95cb-4c24-924f-fc2afd4fcac7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Withered Wretch"
            D.Description = "Withered Wretch is known for one thing: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/003311-b8a82948-503f-4ad4-9e3c-c080c16afd63.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nalathni Dragon"
            D.Description = "Trainers whisper of Nalathni Dragon: old flame gathers under its wings."
            D.TexturePath = dir .. "images/cards/003312-7f9c6be5-ec44-4c66-aad6-cf9eca765b6b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thran Golem"
            D.Description = "Thran Golem leaves this sign: Stone remembers its maker."
            D.TexturePath = dir .. "images/cards/003313-5778c52b-248b-4131-b5c0-12ea1986786e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian Infiltrator"
            D.Description = "No one forgets Phyrexian Infiltrator when old magic walks beside it."
            D.TexturePath = dir .. "images/cards/003314-224b8254-553d-4d88-8163-1f15e1244bd2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rootwater Thief"
            D.Description = "Rootwater Thief leaves this sign: The sea answers in song."
            D.TexturePath = dir .. "images/cards/003315-38addef3-1dd7-41a1-9706-3be5c86a58c9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Leviathan"
            D.Description = "Leviathan is known for one thing: the horizon learns to fear the deep."
            D.TexturePath = dir .. "images/cards/003401-a4e96456-93bf-4d28-9a4b-5bc24ae07fc2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "War Mammoth"
            D.Description = "No one forgets War Mammoth when gentle eyes, unstoppable weight."
            D.TexturePath = dir .. "images/cards/003402-c38912a6-0327-411a-9499-d659b635e2bd.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clone"
            D.Description = "Clone leaves this sign: The trees shake first."
            D.TexturePath = dir .. "images/cards/003403-1d513dde-7c5f-46f1-b871-5290595bdbbe.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mahamoti Djinn"
            D.Description = "The trail of Mahamoti Djinn says it clearly: a wish becomes a warning."
            D.TexturePath = dir .. "images/cards/003404-5d464226-5607-4db2-bd43-7855efb92628.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lord of Atlantis"
            D.Description = "Where Lord of Atlantis goes, a ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/003405-fd279366-8de2-47c5-9ac0-f41f8f81c643.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serra Angel"
            D.Description = "A bright omen with a sword in the clouds."
            D.TexturePath = dir .. "images/cards/003406-b7b4e357-de48-4461-8109-bbb07fff5171.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Erhnam Djinn"
            D.Description = "No one forgets Erhnam Djinn when a wish becomes a warning."
            D.TexturePath = dir .. "images/cards/003407-5bcf61ba-37fd-4029-b299-add7cf9d70bc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Juggernaut"
            D.Description = "The trail of Juggernaut says it clearly: the world makes room."
            D.TexturePath = dir .. "images/cards/003408-82845f1e-a114-4d4f-8b6d-29e37fe1e925.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3409
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Birds of Paradise"
            D.Description = "Every color of magic takes wing at once."
            D.TexturePath = dir .. "images/cards/003409-a2985857-fee5-42a6-9b5d-e157ada52a03.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Samite Healer"
            D.Description = "The trail of Samite Healer says it clearly: wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/004101-19d997ce-6b08-4058-a7f8-82cc74b9974d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Scorcher"
            D.Description = "Dwarven Scorcher is known for one thing: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/004102-099873b1-7181-4b9d-8ce1-8ec63c814afe.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Elemental"
            D.Description = "Lightning Elemental leaves this sign: Raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004103-6df538e3-84c9-4580-85e9-8ac2f9a1294b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blood Celebrant"
            D.Description = "Trainers whisper of Blood Celebrant: a shadow learns its name."
            D.TexturePath = dir .. "images/cards/004104-805de325-6f14-4a52-bb85-f9a9545d82a4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blastoderm"
            D.Description = "No one forgets Blastoderm when instinct settles the argument."
            D.TexturePath = dir .. "images/cards/004105-9db5d6c2-b11f-442a-b172-c0c99c9bec07.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gorilla Berserkers"
            D.Description = "Gorilla Berserkers is known for one thing: the trees shake first."
            D.TexturePath = dir .. "images/cards/004106-344b4613-17f8-4c8b-b5bc-f773a8f8007a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Llanowar Sentinel"
            D.Description = "Llanowar Sentinel is known for one thing: the forest leans closer."
            D.TexturePath = dir .. "images/cards/004107-6f37ea4b-66e2-4ad5-ae7f-d02fd59131bd.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skirk Prospector"
            D.Description = "Skirk Prospector is known for one thing: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/004108-eb545dcd-3a7a-46a7-9c35-d28faebc6d17.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4109
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Icatian Infantry"
            D.Description = "Trainers whisper of Icatian Infantry: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/004109-f95d42d8-ba75-43bf-81b8-b02374f03e83.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Harvester Druid"
            D.Description = "Trainers whisper of Harvester Druid: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/004110-97337e6e-1b3f-43a2-91f2-ca8f6c5dea88.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arctic Foxes"
            D.Description = "Where Arctic Foxes goes, the unseen hand moves first."
            D.TexturePath = dir .. "images/cards/004111-98f99c3e-dddc-492f-aab6-1d899346a385.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ridgeline Rager"
            D.Description = "No one forgets Ridgeline Rager when instinct settles the argument."
            D.TexturePath = dir .. "images/cards/004112-5f663a4a-592a-4a3b-bbaf-e9c5c3049021.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merfolk Traders"
            D.Description = "Merfolk Traders leaves this sign: The sea answers in song."
            D.TexturePath = dir .. "images/cards/004113-ebacbf23-4b69-481c-aaf7-5de7b4a6db6f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hornet Cobra"
            D.Description = "The trail of Hornet Cobra says it clearly: patience wears scales."
            D.TexturePath = dir .. "images/cards/004114-27180bad-9bbc-462b-8832-626dc403a3fd.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soldevi Heretic"
            D.Description = "Soldevi Heretic is known for one thing: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/004115-d46accc8-b926-4443-bc12-dfd5870b2d2e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4116
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urborg Skeleton"
            D.Description = "Trainers whisper of Urborg Skeleton: a shadow learns its name."
            D.TexturePath = dir .. "images/cards/004116-6e522a62-fbca-4362-9006-d4356c525704.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4117
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Drudge Skeletons"
            D.Description = "No one forgets Drudge Skeletons when old magic walks beside it."
            D.TexturePath = dir .. "images/cards/004117-be76e8d0-70d3-4fc7-9320-e78ad93bd362.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Steed"
            D.Description = "The trail of Clockwork Steed says it clearly: it runs like a storm breaking."
            D.TexturePath = dir .. "images/cards/004201-d27d83b9-4454-40c0-bac0-de736c634a53.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pavel Maliki"
            D.Description = "Pavel Maliki walks in with history close behind."
            D.TexturePath = dir .. "images/cards/004202-304f9d39-3ea2-4274-b23e-e4eaabbc1c4b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Blastminer"
            D.Description = "Trainers whisper of Dwarven Blastminer: dust rises around it."
            D.TexturePath = dir .. "images/cards/004203-2970831a-738b-476f-9d46-39f10a1f91e7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wildfire Emissary"
            D.Description = "Trainers whisper of Wildfire Emissary: fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/004204-6d99204c-b42d-48bc-9a93-fae5660665c7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tek"
            D.Description = "Tek is known for one thing: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/004301-c1f38104-a699-4bb9-930a-699f7bbc338a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloud Dragon"
            D.Description = "Cloud Dragon leaves this sign: Old flame gathers under its wings."
            D.TexturePath = dir .. "images/cards/004302-4bb7fb59-65c0-4af6-9d3a-79cd6602d004.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dromar, the Banisher"
            D.Description = "When Dromar, the Banisher appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/004303-cfcc3c72-fff5-454c-814c-eb952fd23ba9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian Negator"
            D.Description = "Where Phyrexian Negator goes, the dark learned a new shape."
            D.TexturePath = dir .. "images/cards/004304-45a02d67-5931-49ae-a28e-57aa6f9c7f83.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Unstable Shapeshifter"
            D.Description = "Unstable Shapeshifter leaves this sign: Old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/004305-84e8cbd4-f49d-420d-a027-3be64ca58989.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "White Knight"
            D.Description = "The trail of White Knight says it clearly: an old oath rides in steel."
            D.TexturePath = dir .. "images/cards/004306-cb9cb8ed-7abb-4e71-b42f-5041dd0c0394.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Stone Giant"
            D.Description = "The trail of Stone Giant says it clearly: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/004307-7f736379-1fe8-43b8-b749-f1e9baef96a6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ihsan's Shade"
            D.Description = "The old stories keep a place for Ihsan's Shade."
            D.TexturePath = dir .. "images/cards/004308-82351724-2814-4d9e-b065-bb72c761b2e7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Flotilla"
            D.Description = "The trail of Goblin Flotilla says it clearly: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/004309-87024efe-4a74-49fe-a43a-480bed0a650a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Pony"
            D.Description = "Dwarven Pony is known for one thing: it runs like a storm breaking."
            D.TexturePath = dir .. "images/cards/004310-53a3019f-0b27-4ba3-be4c-73ed50eb9514.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Faerie Noble"
            D.Description = "Trainers whisper of Faerie Noble: it laughs from somewhere nearby."
            D.TexturePath = dir .. "images/cards/004311-00f8931e-6402-483c-a9e8-63ee344c36a7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Frenetic Efreet"
            D.Description = "Where Frenetic Efreet goes, fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/004312-50d4468b-f7de-44fe-898a-4125d26d242f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aboroth"
            D.Description = "Aboroth leaves this sign: Raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004313-8c72ac67-e4fb-49a1-b1e5-cd2e414bec28.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian Dreadnought"
            D.Description = "Too much machine for any battlefield to hold."
            D.TexturePath = dir .. "images/cards/004314-7b8197b9-0cd1-4fa1-9668-d1b5f1759151.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Palinchron"
            D.Description = "No one forgets Palinchron when the lie casts a true shadow."
            D.TexturePath = dir .. "images/cards/004315-5621db3f-a9e7-4350-9c6a-0ba04a628947.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4316
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Yavimaya Elder"
            D.Description = "The trail of Yavimaya Elder says it clearly: the forest leans closer."
            D.TexturePath = dir .. "images/cards/004316-325d9372-01c9-4e99-a966-13c8f8566e2e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4317
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Musician"
            D.Description = "No one forgets Musician when one word tilts the battle."
            D.TexturePath = dir .. "images/cards/004317-9f8d2247-a10e-413a-b497-2add3918f991.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4318
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Storm Spirit"
            D.Description = "The trail of Storm Spirit says it clearly: the past borrows a body."
            D.TexturePath = dir .. "images/cards/004318-7a383a5f-4814-4b92-aa80-2a6440a719bc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serendib Djinn"
            D.Description = "No one forgets Serendib Djinn when ancient power answers badly."
            D.TexturePath = dir .. "images/cards/004401-0458b733-d689-4cb5-8970-3b675c67fc4d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Force of Nature"
            D.Description = "The forest's anger given colossal form."
            D.TexturePath = dir .. "images/cards/004402-e86f61bb-c2b5-4672-b262-1c72bd1de51f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Masticore"
            D.Description = "A metal predator with hunger in every joint."
            D.TexturePath = dir .. "images/cards/004403-908a2215-7231-43a4-8fec-5d1e4233c028.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Old Man of the Sea"
            D.Description = "Old Man of the Sea leaves this sign: Ancient power answers badly."
            D.TexturePath = dir .. "images/cards/004404-d10f8a05-78b0-42a7-adcd-83f6bafe5417.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Morphling"
            D.Description = "A perfect shape that never stays still."
            D.TexturePath = dir .. "images/cards/004405-812f4d5c-aacf-4bd8-849d-80a357a7804d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spiritmonger"
            D.Description = "It grows stronger on the edge of ruin."
            D.TexturePath = dir .. "images/cards/004406-b96d6e67-f690-4f19-bb25-a7c2d2aaf42f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Verdant Force"
            D.Description = "The trail of Verdant Force says it clearly: raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004407-29bd094c-fcc1-4abf-ba3e-03a5b9b6d1c2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Su-Chi"
            D.Description = "The trail of Su-Chi says it clearly: old gears wake with purpose."
            D.TexturePath = dir .. "images/cards/004408-a64d4f93-0c04-4078-aec0-7e9de92f260f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4409
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skizzik"
            D.Description = "Skizzik leaves this sign: Raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004409-dc7732bc-e168-44d9-923a-db7e985bd6db.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4410
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Braids, Cabal Minion"
            D.Description = "Braids, Cabal Minion walks in with history close behind."
            D.TexturePath = dir .. "images/cards/004410-4dcdcad5-e4fb-480e-984f-1ac5cdc986b9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Barbarian Guides"
            D.Description = "No one forgets Barbarian Guides when a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005101-fe65a045-dacb-4392-bcb6-843394ef98c9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Raka Disciple"
            D.Description = "Trainers whisper of Raka Disciple: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005102-41462d43-4f9f-46ba-b79d-434597e74b6b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pyric Salamander"
            D.Description = "Where Pyric Salamander goes, the road bends under its weight."
            D.TexturePath = dir .. "images/cards/005103-7f2dc1a7-4b70-4643-90a8-fdc7877c01ca.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Swarm"
            D.Description = "Where Clockwork Swarm goes, small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/005104-dfd89e5c-79dc-4a57-b5ea-16491443fea1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Mantis"
            D.Description = "No one forgets Giant Mantis when one wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/005105-2b56c895-37d3-4475-a542-dc6d21c46f06.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kobolds of Kher Keep"
            D.Description = "Kobolds of Kher Keep is known for one thing: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/005106-df0320d9-7c2a-456a-9159-1b4fae67bfb5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Liberated Dwarf"
            D.Description = "The trail of Liberated Dwarf says it clearly: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005107-e2c07842-9b70-40b1-9b97-9a9279b7ebc4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Barbarian Lunatic"
            D.Description = "Where Barbarian Lunatic goes, buried things answer softly."
            D.TexturePath = dir .. "images/cards/005108-6c899f9b-ebce-4424-9cd9-861a50a5f7d2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Berserker"
            D.Description = "Trainers whisper of Dwarven Berserker: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005110-7bc734e9-fb09-4094-94b6-76c0458649e9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Willow Elf"
            D.Description = "Trainers whisper of Willow Elf: the forest leans closer."
            D.TexturePath = dir .. "images/cards/005111-c063a072-0cd4-45fb-ac68-96e359bf3ef5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Skyknight"
            D.Description = "Where Kjeldoran Skyknight goes, an old oath rides in steel."
            D.TexturePath = dir .. "images/cards/005112-f794665a-8353-482a-b065-2a0777a8acda.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mesa Pegasus"
            D.Description = "Where Mesa Pegasus goes, winter keeps close company."
            D.TexturePath = dir .. "images/cards/005113-552089f3-1ae4-4f73-a19c-731ef98e1979.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Keeneye Aven"
            D.Description = "Keeneye Aven is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/005114-1a355c58-cd28-4d2d-9df1-91b4196b01ef.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Shadow Guildmage"
            D.Description = "Where Shadow Guildmage goes, one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005115-ba3fc11e-db36-430c-920b-31195913c16a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5116
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merchant of Secrets"
            D.Description = "No one forgets Merchant of Secrets when one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005116-d1109bdd-a5ce-4e63-adee-54e43a4c4a1e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5117
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Devouring Deep"
            D.Description = "Where Devouring Deep goes, a bright shape slips below."
            D.TexturePath = dir .. "images/cards/005117-0855a5a8-8c40-4396-9ad1-8fa0fc6a0c59.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5118
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sparksmith"
            D.Description = "The trail of Sparksmith says it clearly: lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/005118-15a4460d-3fe8-4b1f-9990-0a19c3345367.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5119
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dega Disciple"
            D.Description = "Dega Disciple is known for one thing: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/005119-fb9cd7d9-8aad-4607-890c-9c8efe016a92.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5120
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Information Dealer"
            D.Description = "Information Dealer is known for one thing: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/005120-a45ac59c-654d-44de-b266-532d44b34137.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5121
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cephalid Looter"
            D.Description = "Cephalid Looter leaves this sign: Eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/005121-cb6f1c4e-4fbc-4474-8dd2-5846d417b6ab.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5122
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Storm Crow"
            D.Description = "Storm Crow is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/005122-7e573308-40d0-43ce-be04-dbab6bc1ed35.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5123
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Colos Yearling"
            D.Description = "Where Colos Yearling goes, instinct settles the argument."
            D.TexturePath = dir .. "images/cards/005123-1d68eb62-9f86-4c85-8696-46a248c744ff.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5124
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Sledder"
            D.Description = "Goblin Sledder is known for one thing: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005124-3a9a1ecf-29f6-474e-bbcf-3455d388aa94.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crystal Golem"
            D.Description = "Crystal Golem leaves this sign: Ancient hands move again."
            D.TexturePath = dir .. "images/cards/005201-4b1d3280-f3e1-42ea-93e1-dbab7336fb73.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spore Flower"
            D.Description = "Spore Flower leaves this sign: It blooms where safer things decay."
            D.TexturePath = dir .. "images/cards/005202-f9681dc0-d0fc-4d5b-a23c-63ec1cc8343d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Firebrand Ranger"
            D.Description = "No one forgets Firebrand Ranger when green strength gathers quietly."
            D.TexturePath = dir .. "images/cards/005203-ee05211e-cf08-4dea-9740-ed06f8682153.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Suq'Ata Firewalker"
            D.Description = "Suq'Ata Firewalker is known for one thing: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005204-b8a7c22e-fe96-4960-96d4-ee85abec3281.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5205
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sea Spirit"
            D.Description = "Where Sea Spirit goes, a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/005205-08933cca-6ed1-43da-a539-355ded52c5b6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5206
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balduvian Dead"
            D.Description = "Balduvian Dead leaves this sign: The grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/005206-fac1875a-feab-4213-aa15-69892b7df58b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5207
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cephalid Illusionist"
            D.Description = "Where Cephalid Illusionist goes, eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/005207-dceb8cf5-b31a-400e-aea5-ad0c3552d697.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5208
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aphetto Grifter"
            D.Description = "Trainers whisper of Aphetto Grifter: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005208-3a7a7bf3-1b0c-415d-9c57-73ac55b1f915.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5209
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Airdrop Condor"
            D.Description = "Trainers whisper of Airdrop Condor: it reads the wind first."
            D.TexturePath = dir .. "images/cards/005209-ec9796ac-11e2-4295-bf00-f684d0111970.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5210
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jhoira's Toolbox"
            D.Description = "Jhoira's Toolbox leaves this sign: One wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/005210-edb38309-c02c-496c-894f-786a2f6e3d1c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Scalpelexis"
            D.Description = "Scalpelexis is known for one thing: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/005301-29c3b7fa-78e7-4a0c-bcdc-4b829638e3f6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloud of Faeries"
            D.Description = "Cloud of Faeries is known for one thing: it laughs from somewhere nearby."
            D.TexturePath = dir .. "images/cards/005302-4e76d04a-0038-4b5b-a026-3056ee940da9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin King"
            D.Description = "The trail of Goblin King says it clearly: ancient wings darken the sun."
            D.TexturePath = dir .. "images/cards/005303-0c77029a-7f00-490e-bf8b-dce192d72e2f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ancient Silverback"
            D.Description = "Ancient Silverback leaves this sign: The trees shake first."
            D.TexturePath = dir .. "images/cards/005304-3f2f8a99-b01d-4d0a-bf1c-a3cf08fbc469.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Uktabi Orangutan"
            D.Description = "No one forgets Uktabi Orangutan when the trees shake first."
            D.TexturePath = dir .. "images/cards/005305-b6a944ef-dbf2-47c9-a245-dfd2533a0680.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blurred Mongoose"
            D.Description = "Blurred Mongoose leaves this sign: The sky makes room."
            D.TexturePath = dir .. "images/cards/005306-4b073e3f-6a6f-495a-ab16-39d906b660f1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Discordant Spirit"
            D.Description = "Discordant Spirit is known for one thing: a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/005307-be67b950-dfe3-4159-aa53-63df25d2a926.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thundermare"
            D.Description = "Trainers whisper of Thundermare: the world moves through it."
            D.TexturePath = dir .. "images/cards/005308-e936e5cb-0a8e-4348-afea-e5f96b19fe23.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blinding Angel"
            D.Description = "Where Blinding Angel goes, hope descends with a blade."
            D.TexturePath = dir .. "images/cards/005309-48c25553-6554-4e31-9012-c50da1f0a171.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serra Avatar"
            D.Description = "A soul so bright it becomes a body."
            D.TexturePath = dir .. "images/cards/005310-288b0976-78e8-4fbe-8607-2e55d8761d3e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sun Quan, Lord of Wu"
            D.Description = "When Sun Quan, Lord of Wu appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/005311-6def4492-3f67-4cdb-8a25-c3ddebd125c7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mogg Fanatic"
            D.Description = "Mogg Fanatic is known for one thing: smoke follows every step."
            D.TexturePath = dir .. "images/cards/005312-ca2ecfd4-c874-4468-8601-87aa110d5a00.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Karmic Guide"
            D.Description = "Trainers whisper of Karmic Guide: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/005313-77d23045-905b-44cb-9af9-cc6ad717477d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gargantuan Gorilla"
            D.Description = "The trail of Gargantuan Gorilla says it clearly: the trees shake first."
            D.TexturePath = dir .. "images/cards/005314-49f367c2-f47e-43e1-9936-4324be664475.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vexing Beetle"
            D.Description = "Vexing Beetle leaves this sign: Small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/005315-d599d35f-1b73-498b-9a21-831c908a95d8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5316
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Copper Gnomes"
            D.Description = "Where Copper Gnomes goes, a small machine with a stubborn spark."
            D.TexturePath = dir .. "images/cards/005316-d5e326b7-6f6a-4249-a315-c5f017931c73.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5317
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Selenia, Dark Angel"
            D.Description = "Selenia, Dark Angel arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/005317-9c1624f7-8275-46d3-ab7e-7b162e27593f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5318
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Angel"
            D.Description = "No one forgets Lightning Angel when hope descends with a blade."
            D.TexturePath = dir .. "images/cards/005318-6518d0c5-58ee-4089-bf19-5030d4319681.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5319
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lu Su, Wu Advisor"
            D.Description = "Lu Su, Wu Advisor arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/005319-9d361823-31ce-42c4-997d-3d3b52c0599a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Craw Wurm"
            D.Description = "The trail of Craw Wurm says it clearly: a tunnel becomes a warning."
            D.TexturePath = dir .. "images/cards/005401-1a2e6afb-7094-4fa3-9246-58343f8d80b8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hypnotic Specter"
            D.Description = "A midnight rider stealing thoughts from the air."
            D.TexturePath = dir .. "images/cards/005402-b5900350-be08-4904-8f1b-cc180ed08485.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Shivan Wurm"
            D.Description = "Shivan Wurm is known for one thing: a tunnel becomes a warning."
            D.TexturePath = dir .. "images/cards/005403-4bc72997-78b0-47aa-a029-bf55f77c3e73.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Woolly Mammoths"
            D.Description = "Where Woolly Mammoths goes, the charge changes the map."
            D.TexturePath = dir .. "images/cards/005404-eaca1216-99c8-4ad5-a51a-3c4ff3b82097.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thorn Elemental"
            D.Description = "Thorn Elemental is known for one thing: the world moves through it."
            D.TexturePath = dir .. "images/cards/005405-e06bea52-3db1-4b61-8418-77ace9cd70b5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Karn, Silver Golem"
            D.Description = "Silver hands, ancient heart, endless memory."
            D.TexturePath = dir .. "images/cards/005406-811a0988-2900-426c-9413-8f1778d99678.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Royal Assassin"
            D.Description = "Trainers whisper of Royal Assassin: the blade arrives without ceremony."
            D.TexturePath = dir .. "images/cards/005407-b2d51bdf-f118-4a1e-9060-bdf3c78697f2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Revered Unicorn"
            D.Description = "No one forgets Revered Unicorn when wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/005408-8c642dd2-1a3e-4b08-917e-6e8aed358b72.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5409
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nightmare"
            D.Description = "Nightmare leaves this sign: Thunder gathers under its hooves."
            D.TexturePath = dir .. "images/cards/005409-c3779fda-5de0-4d80-8af0-95956e87d9e1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5410
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Two-Headed Dragon"
            D.Description = "Trainers whisper of Two-Headed Dragon: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/005410-40fed2c7-c922-41c3-b86b-a8ed41a1308d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thalakos Sentry"
            D.Description = "Thalakos Sentry is known for one thing: winter keeps close company."
            D.TexturePath = dir .. "images/cards/006101-739a13d6-5f73-4166-b923-9db8ee3f2cf7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mesmeric Fiend"
            D.Description = "Mesmeric Fiend is known for one thing: fear gives it room to breathe."
            D.TexturePath = dir .. "images/cards/006102-b6edd4ea-c587-4d93-a675-4cdec3e0b1ca.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balduvian Shaman"
            D.Description = "No one forgets Balduvian Shaman when lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/006103-74859723-8ddf-4ee6-a0a7-87192c84e8ad.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Standard Bearer"
            D.Description = "No one forgets Standard Bearer when the forest gives one warning."
            D.TexturePath = dir .. "images/cards/006104-e0f8e16a-55f0-4147-a01a-dba7938f31c4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Razorfin Hunter"
            D.Description = "Razorfin Hunter leaves this sign: The sea answers in song."
            D.TexturePath = dir .. "images/cards/006105-99829552-917a-4373-9772-4255dff542d6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Frozen Shade"
            D.Description = "The trail of Frozen Shade says it clearly: its shadow carries a blade."
            D.TexturePath = dir .. "images/cards/006106-cbd0b4ff-f49f-4079-991a-f66d1220235d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Corpses"
            D.Description = "Wall of Corpses is known for one thing: the path ends here."
            D.TexturePath = dir .. "images/cards/006107-dde6d3d1-75db-445f-9f17-632ee0292211.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ascending Aven"
            D.Description = "Ascending Aven is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/006108-bd8b17df-615c-4cc1-af1a-2fc35a985af9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6109
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Benalish Hero"
            D.Description = "Benalish Hero is known for one thing: silence bends around its mind."
            D.TexturePath = dir .. "images/cards/006109-32dcd608-ef94-4047-841d-5c3471375d5d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Coalition Honor Guard"
            D.Description = "No one forgets Coalition Honor Guard when heavy paws end the debate."
            D.TexturePath = dir .. "images/cards/006110-c5b7be3e-b4af-46d4-bcc6-b44c651f2012.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Glimmering Angel"
            D.Description = "Where Glimmering Angel goes, hope descends with a blade."
            D.TexturePath = dir .. "images/cards/006111-f14f55e4-eded-4a86-87f4-b8fa6f30bc0f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Mountaineer"
            D.Description = "The trail of Goblin Mountaineer says it clearly: the road bends under its weight."
            D.TexturePath = dir .. "images/cards/006112-66a072ec-717c-453e-a331-49056e3d917d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Treetop Scout"
            D.Description = "Treetop Scout leaves this sign: Dust rises around it."
            D.TexturePath = dir .. "images/cards/006113-2fa39646-a609-4b37-b8de-97893ae43c49.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pygmy Pyrosaur"
            D.Description = "Pygmy Pyrosaur is known for one thing: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/006114-42e01129-254c-4a16-9f11-21a7a9c66f32.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Heart Sliver"
            D.Description = "Where Heart Sliver goes, a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/006115-27a83ab6-0d15-49e4-90e3-b3a2a095c632.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6116
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Laccolith Whelp"
            D.Description = "No one forgets Laccolith Whelp when the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/006116-86eb5b9e-320f-40de-8668-ee0c08f63ec1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6117
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Metallic Sliver"
            D.Description = "Metallic Sliver leaves this sign: Old machinery finds its rhythm."
            D.TexturePath = dir .. "images/cards/006117-30143f4f-9846-448d-8797-8fe0bc0cc5df.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6118
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Vapor"
            D.Description = "No one forgets Wall of Vapor when the path ends here."
            D.TexturePath = dir .. "images/cards/006118-309c1b2a-0230-4b66-84a0-32b8cd6d31eb.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6119
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Warrior"
            D.Description = "The trail of Kjeldoran Warrior says it clearly: a thought changes the fight."
            D.TexturePath = dir .. "images/cards/006119-ce76f38f-566e-49ff-b197-510cfa1cb51c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6120
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian War Beast"
            D.Description = "Where Phyrexian War Beast goes, the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/006120-e7a83384-8762-4028-8cab-b690593790a6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6121
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aesthir Glider"
            D.Description = "Trainers whisper of Aesthir Glider: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/006121-35a8080f-ca3c-46fe-81cf-003ac7ba7f24.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6123
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Roterothopter"
            D.Description = "The trail of Roterothopter says it clearly: a relic cuts the air."
            D.TexturePath = dir .. "images/cards/006123-22148a1a-2172-4718-8ee4-08770eafed9f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6124
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Orcish Lumberjack"
            D.Description = "Trainers whisper of Orcish Lumberjack: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/006124-21ef13e3-658c-43a3-a290-4c5dde8e8b55.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6125
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Stormscape Familiar"
            D.Description = "Stormscape Familiar leaves this sign: It reads the wind first."
            D.TexturePath = dir .. "images/cards/006125-4c831c42-77a0-4f4f-9628-ad630541cf66.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6126
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Argothian Pixies"
            D.Description = "The trail of Argothian Pixies says it clearly: it laughs from somewhere nearby."
            D.TexturePath = dir .. "images/cards/006126-78276d53-7c01-45b4-a136-a9f3674e1f26.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6127
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Chariot"
            D.Description = "Trainers whisper of Goblin Chariot: lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/006127-f7571801-c1df-4387-ae61-1fefd449ebf9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Tombstones"
            D.Description = "Trainers whisper of Wall of Tombstones: it does not chase. It does not need to."
            D.TexturePath = dir .. "images/cards/006201-55da1e86-fe18-486a-b510-f941e6f6e378.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Volunteer Reserves"
            D.Description = "The trail of Volunteer Reserves says it clearly: winter keeps close company."
            D.TexturePath = dir .. "images/cards/006202-5344911f-25e8-45ce-87b9-607e42db0139.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fleeting Aven"
            D.Description = "Fleeting Aven leaves this sign: It reads the wind first."
            D.TexturePath = dir .. "images/cards/006203-246a2758-0096-43b9-8193-d6ae5b41b6e6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Viseling"
            D.Description = "Viseling is known for one thing: old gears wake with purpose."
            D.TexturePath = dir .. "images/cards/006204-a3eb86c5-d6fe-4dde-ad07-c3109b3a1611.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6205
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rainbow Crow"
            D.Description = "Where Rainbow Crow goes, a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/006205-7e622ad2-473f-489e-b4cf-bbdcc44d0cde.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6206
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wirewood Hivemaster"
            D.Description = "Trainers whisper of Wirewood Hivemaster: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/006206-ea55b4fc-366f-4906-9eaa-9085f6a22612.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6207
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Millikin"
            D.Description = "No one forgets Millikin when built long ago, still obeying."
            D.TexturePath = dir .. "images/cards/006207-0550133b-22cf-4ecd-b89a-8c2f0beeaa22.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6208
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chambered Nautilus"
            D.Description = "The trail of Chambered Nautilus says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/006208-860c613d-d031-4c2a-922b-39f4eec04e18.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6209
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balshan Beguiler"
            D.Description = "Trainers whisper of Balshan Beguiler: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/006209-5d977da2-4024-4c7b-b557-e89564f8d465.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Derelor"
            D.Description = "Derelor is known for one thing: old magic walks beside it."
            D.TexturePath = dir .. "images/cards/006301-530043ad-d4bf-4fb0-b6e0-f8a744968cfc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Abyssal Specter"
            D.Description = "No one forgets Abyssal Specter when it steals courage before blood."
            D.TexturePath = dir .. "images/cards/006302-a7e6582d-e569-4131-b212-3ef1767be107.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "River Boa"
            D.Description = "River Boa leaves this sign: Patience wears scales."
            D.TexturePath = dir .. "images/cards/006303-fff58d35-eb23-47ee-9b8c-6919ad1a413a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bottle Gnomes"
            D.Description = "No one forgets Bottle Gnomes when tiny gears, troublesome courage."
            D.TexturePath = dir .. "images/cards/006304-645297d1-ee77-4879-83eb-8114fbabb9a4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ophidian"
            D.Description = "Where Ophidian goes, patience wears scales."
            D.TexturePath = dir .. "images/cards/006305-0de0a010-76a7-460f-bb4e-a152c10c3bb7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ambush Commander"
            D.Description = "The trail of Ambush Commander says it clearly: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/006306-7485da91-a051-4680-8a25-c81fdaa77130.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rofellos, Llanowar Emissary"
            D.Description = "Rofellos, Llanowar Emissary walks in with history close behind."
            D.TexturePath = dir .. "images/cards/006307-6aa5cc65-f8f1-4f6f-8b4e-2fedccbda684.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ayesha Tanaka"
            D.Description = "The old stories keep a place for Ayesha Tanaka."
            D.TexturePath = dir .. "images/cards/006308-8ce912d9-406b-4eba-97be-3bf1d425ee05.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dreamborn Muse"
            D.Description = "No one forgets Dreamborn Muse when a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/006309-9e36cf11-5dfb-4593-8335-f739b7c7829c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lin Sivvi, Defiant Hero"
            D.Description = "The old stories keep a place for Lin Sivvi, Defiant Hero."
            D.TexturePath = dir .. "images/cards/006310-e574e522-2632-4cd4-8545-c582ac3b641f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Menacing Ogre"
            D.Description = "Menacing Ogre leaves this sign: Smoke follows every step."
            D.TexturePath = dir .. "images/cards/006311-5360a871-6932-45b2-bc94-1bd414e38906.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Quirion Ranger"
            D.Description = "Quirion Ranger is known for one thing: blue shadows move below."
            D.TexturePath = dir .. "images/cards/006312-56efe72c-6d7f-44f6-ac74-01af9305c4b6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elvish Champion"
            D.Description = "The trail of Elvish Champion says it clearly: the forest leans closer."
            D.TexturePath = dir .. "images/cards/006313-61d00f31-d8fd-4272-87ba-6bcb65c609c6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fleeting Image"
            D.Description = "The trail of Fleeting Image says it clearly: the lie casts a true shadow."
            D.TexturePath = dir .. "images/cards/006314-35971a15-7d8f-4b05-918e-605a26a11f4c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Priest of Titania"
            D.Description = "Priest of Titania is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/006315-965c33c3-0c68-4516-b8b0-5a0552ed44b6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6316
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tribal Forcemage"
            D.Description = "Tribal Forcemage is known for one thing: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/006316-104735d7-6cea-4d4a-8cc8-e1934883da97.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6317
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "River Merfolk"
            D.Description = "River Merfolk leaves this sign: A ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/006317-27d7fa54-4b89-4a9a-b088-4b89c525c1ea.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6318
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thalakos Drifters"
            D.Description = "No one forgets Thalakos Drifters when deep currents keep its secret."
            D.TexturePath = dir .. "images/cards/006318-468e13d2-6bd7-403c-8e2e-e00917b39597.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6319
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Copper-Leaf Angel"
            D.Description = "Copper-Leaf Angel leaves this sign: Light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/006319-7be413dd-d6e0-4bd3-8c14-4dbe44e8ee41.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6320
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wayward Angel"
            D.Description = "Trainers whisper of Wayward Angel: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/006320-1fb726e8-162d-4143-9778-32476c0e1ab1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6321
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lavaborn Muse"
            D.Description = "The trail of Lavaborn Muse says it clearly: the past borrows a body."
            D.TexturePath = dir .. "images/cards/006321-4cbc94fb-9e3f-4075-bb6a-8f04862dc585.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6322
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Matron"
            D.Description = "No one forgets Goblin Matron when the road bends under its weight."
            D.TexturePath = dir .. "images/cards/006322-862409e1-33e0-474c-8627-b03d25b654b9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6323
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Meddling Mage"
            D.Description = "Meddling Mage leaves this sign: Old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/006323-176f84c6-aa5e-449c-bd2b-cc91a898f0c7.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spike Weaver"
            D.Description = "No one forgets Spike Weaver when a roar becomes weather."
            D.TexturePath = dir .. "images/cards/006401-9c561a2a-91c6-4d4b-9f96-bffd43a00478.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Maro"
            D.Description = "The trail of Maro says it clearly: the world moves through it."
            D.TexturePath = dir .. "images/cards/006402-b4c3853c-8b41-4bce-b4e0-3824fc5888c4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ravenous Baloth"
            D.Description = "The trail of Ravenous Baloth says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/006403-c98182d6-5b25-4493-9286-f29633e1bec4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tradewind Rider"
            D.Description = "No one forgets Tradewind Rider when the past borrows a body."
            D.TexturePath = dir .. "images/cards/006404-09412374-3645-4644-952e-2beaefb3104b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Polar Kraken"
            D.Description = "Trainers whisper of Polar Kraken: depth itself reaches upward."
            D.TexturePath = dir .. "images/cards/006405-aee01e9c-0445-4228-a73a-3e5744844ed3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Octopus"
            D.Description = "No one forgets Giant Octopus when eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/006406-5b707b2d-63e1-4c2c-ba42-9e027f02b1ff.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ali from Cairo"
            D.Description = "Where Ali from Cairo goes, buried things answer softly."
            D.TexturePath = dir .. "images/cards/006407-42027613-d261-4ce2-8ba1-7a2480c660f8.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zodiac Dragon"
            D.Description = "Where Zodiac Dragon goes, old flame gathers under its wings."
            D.TexturePath = dir .. "images/cards/006408-46652ae3-6572-4296-939b-0789923180d5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6409
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Blossoms"
            D.Description = "No one forgets Wall of Blossoms when green life grows teeth."
            D.TexturePath = dir .. "images/cards/006409-7eb4a1a3-efcf-4c9a-ad1f-0a3f8f2b456f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6410
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Marjhan"
            D.Description = "Trainers whisper of Marjhan: old water coils around it."
            D.TexturePath = dir .. "images/cards/006410-b6aa3299-3b7a-4ea5-bc1f-beead26d8116.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7101
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Krosan Wayfarer"
            D.Description = "Krosan Wayfarer leaves this sign: Claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/007101-5356e684-c2fc-465e-a16c-7300824d2a8d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7102
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Quirion Explorer"
            D.Description = "Quirion Explorer is known for one thing: chitin clicks in the grass."
            D.TexturePath = dir .. "images/cards/007102-141a031d-f899-497b-adf7-4af142078085.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7103
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Harvest Mage"
            D.Description = "No one forgets Harvest Mage when the trees shake first."
            D.TexturePath = dir .. "images/cards/007103-95b29329-b9a3-4d59-b0f8-2abc67337760.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7104
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elvish Pioneer"
            D.Description = "Elvish Pioneer is known for one thing: buried things answer softly."
            D.TexturePath = dir .. "images/cards/007104-7e71fc2d-643b-4fad-89a8-624d330895d6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7105
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Diligent Farmhand"
            D.Description = "Diligent Farmhand leaves this sign: Stone remembers the impact."
            D.TexturePath = dir .. "images/cards/007105-7bb40e09-6855-46d5-9bc9-bc6b2b0d7653.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7106
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mistform Sliver"
            D.Description = "No one forgets Mistform Sliver when real enough when the blade lands."
            D.TexturePath = dir .. "images/cards/007106-79a53c29-6753-4f6b-b4ee-00c1adf7e9c6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7107
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urborg Elf"
            D.Description = "Where Urborg Elf goes, a thought changes the fight."
            D.TexturePath = dir .. "images/cards/007107-1d8521bf-d026-4d26-831e-a2f253307c93.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7108
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crafty Pathmage"
            D.Description = "Where Crafty Pathmage goes, one word tilts the battle."
            D.TexturePath = dir .. "images/cards/007108-c5d91378-f831-40ef-a79b-b044af1470e0.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7109
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Metathran Soldier"
            D.Description = "The trail of Metathran Soldier says it clearly: the next spark knows where to land."
            D.TexturePath = dir .. "images/cards/007109-650d40d0-78ec-4b6e-8ea0-28d43ce175d5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7110
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Marsh Viper"
            D.Description = "No one forgets Marsh Viper when patience wears scales."
            D.TexturePath = dir .. "images/cards/007110-ba4c0606-f9af-4dee-bc36-5051395b5f44.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7111
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wirewood Guardian"
            D.Description = "Wirewood Guardian leaves this sign: Dust rises around it."
            D.TexturePath = dir .. "images/cards/007111-e8676b1f-e37c-4ae1-9dbe-d000369fa422.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7112
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spiketail Hatchling"
            D.Description = "Trainers whisper of Spiketail Hatchling: it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/007112-9988f0fe-a7d4-44f9-b37c-fa30014ea215.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7113
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Taskmaster"
            D.Description = "Goblin Taskmaster is known for one thing: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007113-feff65ca-aedf-4434-b701-590d600d1a0b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7114
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dream Fighter"
            D.Description = "No one forgets Dream Fighter when the next spark knows where to land."
            D.TexturePath = dir .. "images/cards/007114-aec06bc9-553c-4e01-8b43-a4eeaa511b4d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7115
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pardic Swordsmith"
            D.Description = "The trail of Pardic Swordsmith says it clearly: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007115-44ac622c-db04-41bf-817e-4698843e6346.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7116
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bogardan Firefiend"
            D.Description = "Bogardan Firefiend leaves this sign: The past borrows a body."
            D.TexturePath = dir .. "images/cards/007116-80ff9650-d25f-4c6b-b96e-794b50af3f14.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7117
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Carrion Feeder"
            D.Description = "Trainers whisper of Carrion Feeder: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/007117-88042031-64af-4f84-85d5-95992b43aa6c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7118
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gustcloak Runner"
            D.Description = "Gustcloak Runner leaves this sign: The hunt begins in silence."
            D.TexturePath = dir .. "images/cards/007118-eb227f65-9189-41ed-94a0-2aa21cad26f5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7119
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Patrol"
            D.Description = "The trail of Goblin Patrol says it clearly: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/007119-d0fcd8d3-f159-49a1-8dd9-582ae4a0adc3.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7120
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rogue Kavu"
            D.Description = "Rogue Kavu is known for one thing: smoke follows every step."
            D.TexturePath = dir .. "images/cards/007120-61e1a445-129d-4bb9-a8b0-3f55e3e0bc58.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7201
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Broodhatch Nantuko"
            D.Description = "Where Broodhatch Nantuko goes, small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/007201-38315ba3-57a0-4aa0-b1bc-4b1fcdd763d4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7202
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thalakos Dreamsower"
            D.Description = "Trainers whisper of Thalakos Dreamsower: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/007202-d725cdc0-3a85-4722-bb13-40c336f511b6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7203
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crypt Rats"
            D.Description = "Where Crypt Rats goes, a shadow learns its name."
            D.TexturePath = dir .. "images/cards/007203-f9b2f697-01cc-4610-b4aa-cae83b38647a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7204
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spiny Starfish"
            D.Description = "Spiny Starfish leaves this sign: The water flashes, then stills."
            D.TexturePath = dir .. "images/cards/007204-c4242dda-6078-481d-a068-e7b10c873b89.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7205
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vodalian Hypnotist"
            D.Description = "No one forgets Vodalian Hypnotist when a ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/007205-721fd877-0a28-4002-8b47-058bac4ac44d.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7206
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hyperion Blacksmith"
            D.Description = "Where Hyperion Blacksmith goes, heat gathers around its name."
            D.TexturePath = dir .. "images/cards/007206-44d499a9-fe7c-4a1a-9eb3-a7fd9f85ae08.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7207
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soulcatcher"
            D.Description = "Soulcatcher leaves this sign: A bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/007207-14d24d2f-699b-46d8-9353-45e6a67f99d2.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7208
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Mulch"
            D.Description = "Trainers whisper of Wall of Mulch: it does not chase. It does not need to."
            D.TexturePath = dir .. "images/cards/007208-8b3b4448-50f0-4996-94a1-db9ce356d925.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7209
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elves of Deep Shadow"
            D.Description = "No one forgets Elves of Deep Shadow when the road bends under its weight."
            D.TexturePath = dir .. "images/cards/007209-f395278e-6d74-4f35-af9d-21bad7b19763.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7210
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Silver Erne"
            D.Description = "Trainers whisper of Silver Erne: it reads the wind first."
            D.TexturePath = dir .. "images/cards/007210-685076cc-098c-4f98-918c-0ad825eda10f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7211
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thunder Wall"
            D.Description = "No one forgets Thunder Wall when the path ends here."
            D.TexturePath = dir .. "images/cards/007211-4fc5d510-c4f7-4a09-bf86-83c3fa3f8928.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7212
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wonder"
            D.Description = "Wonder leaves this sign: Winter keeps close company."
            D.TexturePath = dir .. "images/cards/007212-44670666-9028-4b4a-a5af-a3bf35fc6a21.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7213
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Warbreak Trumpeter"
            D.Description = "Where Warbreak Trumpeter goes, a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007213-fc942957-1067-428c-8ee1-01f9e260efe1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7214
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nimble Mongoose"
            D.Description = "No one forgets Nimble Mongoose when old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/007214-99e5ecf5-a662-4df0-a6ba-9177c62b6503.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7301
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Doomsday Specter"
            D.Description = "Trainers whisper of Doomsday Specter: it steals courage before blood."
            D.TexturePath = dir .. "images/cards/007301-85206cc1-5484-40c6-b11d-b8d6fad4fc5c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7302
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Xira Arien"
            D.Description = "Xira Arien arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/007302-21fa636b-8ce8-40b6-a4d0-3191a664bd92.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7303
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Darigaaz, the Igniter"
            D.Description = "Darigaaz, the Igniter arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/007303-54dcf5e3-4303-41a3-b54c-24a9d462ce07.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7304
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arrogant Wurm"
            D.Description = "Trainers whisper of Arrogant Wurm: a tunnel becomes a warning."
            D.TexturePath = dir .. "images/cards/007304-11b849c7-c91d-4c67-a357-f7d17f9b187a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7305
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chicken à la King"
            D.Description = "Chicken à la King is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/007305-3fcefcab-8988-47e8-89bb-9b76f14c9d8b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7306
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crosis, the Purger"
            D.Description = "Crosis, the Purger arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/007306-e5f336d8-12a4-482d-8ffd-c205858c72ba.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7307
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "B.F.M. (Big Furry Monster)"
            D.Description = "Where B.F.M. (Big Furry Monster) goes, a roar becomes weather."
            D.TexturePath = dir .. "images/cards/007307-a9f9c279-e382-4feb-9575-196e7cf5d7dc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7308
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Molten Hydra"
            D.Description = "Molten Hydra leaves this sign: A red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007308-95234b29-9ac8-4200-b42d-9653ba51b010.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7309
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rasputin Dreamweaver"
            D.Description = "The old stories keep a place for Rasputin Dreamweaver."
            D.TexturePath = dir .. "images/cards/007309-503256f8-3aab-49d0-b78b-6502aa29ce52.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7310
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gorilla Shaman"
            D.Description = "The trail of Gorilla Shaman says it clearly: the trees shake first."
            D.TexturePath = dir .. "images/cards/007310-bf8b213e-31ca-4eb5-bf0b-515a0ad4fd31.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7311
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Anavolver"
            D.Description = "Anavolver leaves this sign: Stone remembers the impact."
            D.TexturePath = dir .. "images/cards/007311-5e685a8c-fba6-495f-ac0f-1ff5456b22d0.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7312
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Canyon Drake"
            D.Description = "The trail of Canyon Drake says it clearly: a smaller dragon with no smaller pride."
            D.TexturePath = dir .. "images/cards/007312-22f84143-5912-43ca-a274-f26ed0dbadd0.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7313
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Squee, Goblin Nabob"
            D.Description = "Trouble survives because trouble is stubborn."
            D.TexturePath = dir .. "images/cards/007313-4ba8325a-1203-4125-9111-94d9e2b1f14b.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7314
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fallen Angel"
            D.Description = "Fallen Angel leaves this sign: Hope descends with a blade."
            D.TexturePath = dir .. "images/cards/007314-612ecb2c-e732-40cc-9e92-d18b80a26c4c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7315
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Kelp"
            D.Description = "Where Wall of Kelp goes, green life grows teeth."
            D.TexturePath = dir .. "images/cards/007315-52ff5051-e24b-4453-aaae-ed4f2bf213ab.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7316
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zhao Zilong, Tiger General"
            D.Description = "Zhao Zilong, Tiger General walks in with history close behind."
            D.TexturePath = dir .. "images/cards/007316-2d16cf1d-a7c3-4038-a648-299c1bedae99.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7317
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Argothian Enchantress"
            D.Description = "Argothian Enchantress leaves this sign: Deep currents keep its secret."
            D.TexturePath = dir .. "images/cards/007317-9ababc1a-515e-4e20-8819-19d84d9b0af5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7318
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Asmira, Holy Avenger"
            D.Description = "Asmira, Holy Avenger walks in with history close behind."
            D.TexturePath = dir .. "images/cards/007318-a7d64600-84fc-42a5-a6a6-b26f98fac0a4.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7319
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ichorid"
            D.Description = "Ichorid leaves this sign: Fear gives it room to breathe."
            D.TexturePath = dir .. "images/cards/007319-97431dca-54ca-47ef-ab00-943140e8e758.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7401
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Waterspout Djinn"
            D.Description = "Where Waterspout Djinn goes, ancient power answers badly."
            D.TexturePath = dir .. "images/cards/007401-6946a75e-e9d1-4a56-86d1-dd81f7b1b125.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7402
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Killer Whale"
            D.Description = "The trail of Killer Whale says it clearly: a living island turns below."
            D.TexturePath = dir .. "images/cards/007402-d932f6d3-4918-4a41-836c-4eaa6cfac049.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7403
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Deranged Hermit"
            D.Description = "Deranged Hermit is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/007403-bf0e94c9-61c4-4cc0-b5ce-db62bc2660ee.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7404
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serendib Efreet"
            D.Description = "Trainers whisper of Serendib Efreet: fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/007404-019fb309-2cd1-4367-8a42-0295e9bbf552.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7405
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "The Wretched"
            D.Description = "Where The Wretched goes, a bargain steps out of the dark."
            D.TexturePath = dir .. "images/cards/007405-729f4543-79f3-4fe2-973f-fb2598045877.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7406
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Exalted Angel"
            D.Description = "Trainers whisper of Exalted Angel: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/007406-c2213eac-cea4-4dfd-90c4-c1f466967e2e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7407
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ball Lightning"
            D.Description = "A thunderclap that learned to charge."
            D.TexturePath = dir .. "images/cards/007407-3ede7920-e219-4e9d-bfa5-e0f562460914.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7408
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Anurid Brushhopper"
            D.Description = "The trail of Anurid Brushhopper says it clearly: the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/007408-b09204c7-3e3d-484a-a4f7-da1b818e3884.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7409
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Avatar of Woe"
            D.Description = "Avatar of Woe leaves this sign: An idea grows a body."
            D.TexturePath = dir .. "images/cards/007409-0f695405-7238-48fb-9ea2-1b1613a0afda.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7410
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hammerhead Shark"
            D.Description = "The trail of Hammerhead Shark says it clearly: a fin cuts through silence."
            D.TexturePath = dir .. "images/cards/007410-854627ab-38bd-4894-94d8-9ef51a57579c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7411
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Denizen of the Deep"
            D.Description = "Denizen of the Deep is known for one thing: the deep keeps this hunger."
            D.TexturePath = dir .. "images/cards/007411-95b00eca-065e-495e-947e-24eb79ffb1df.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7412
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Venomous Dragonfly"
            D.Description = "Venomous Dragonfly is known for one thing: one wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/007412-479fc902-ce94-4a6b-af87-4645387a46c6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7413
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pride of Lions"
            D.Description = "No one forgets Pride of Lions when it waits for the perfect moment."
            D.TexturePath = dir .. "images/cards/007413-65c3274b-3eb0-450a-88bf-fb378e6cf94a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7414
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rainbow Efreet"
            D.Description = "Rainbow Efreet leaves this sign: Fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/007414-1d6f03a6-3665-40e4-ae68-640913972770.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7415
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spectral Lynx"
            D.Description = "Spectral Lynx leaves this sign: The past borrows a body."
            D.TexturePath = dir .. "images/cards/007415-13099abe-721e-42b4-9666-9e6b5f1d75c9.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9001
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Palladia-Mors"
            D.Description = "Palladia-Mors walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009001-0ea81883-7cd6-4443-9733-39d25cc64328.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9002
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Baron Sengir"
            D.Description = "Baron Sengir walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009002-51bdddac-02fc-493a-a0ea-689273252d7e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9003
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Akroma, Angel of Wrath"
            D.Description = "The old stories keep a place for Akroma, Angel of Wrath."
            D.TexturePath = dir .. "images/cards/009003-814245de-6105-43ef-acbf-d12d304b6331.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9004
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hazezon Tamar"
            D.Description = "The old stories keep a place for Hazezon Tamar."
            D.TexturePath = dir .. "images/cards/009004-17fc3a85-c6b9-4fd2-a6a2-d3210708e5ea.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9005
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rith, the Awakener"
            D.Description = "When Rith, the Awakener appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009005-c30be387-280d-49bd-a3d1-c1636ee931ce.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9006
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kamahl, Fist of Krosa"
            D.Description = "When Kamahl, Fist of Krosa appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009006-150d5229-b1a5-42cf-bf6a-04d246f1124f.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9007
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dakkon Blackblade"
            D.Description = "Dakkon Blackblade arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009007-4874388e-0227-4b89-a986-d86c14482c81.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9008
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arcanis the Omnipotent"
            D.Description = "Arcanis the Omnipotent walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009008-90865f52-c062-4505-a204-b4d7d4b3fc4c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9060
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jeska, Warrior Adept"
            D.Description = "Jeska, Warrior Adept arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009060-1cf96a59-8b7d-4a5b-adfd-17eeedd95db5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9061
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phage the Untouchable"
            D.Description = "Phage the Untouchable walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009061-a410b933-99d0-4383-b54b-4839a76eb6fe.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9062
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Atalya, Samite Master"
            D.Description = "When Atalya, Samite Master appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009062-90500e7a-f76d-453a-bda0-d56d3f7c7534.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9063
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Treva, the Renewer"
            D.Description = "The old stories keep a place for Treva, the Renewer."
            D.TexturePath = dir .. "images/cards/009063-4ee67039-6cee-4a2d-b973-570f5060f550.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9064
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Commander Greven il-Vec"
            D.Description = "When Commander Greven il-Vec appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009064-ab0ce69f-a259-4801-9ac3-f6754040434c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9065
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ertai, the Corrupted"
            D.Description = "The old stories keep a place for Ertai, the Corrupted."
            D.TexturePath = dir .. "images/cards/009065-66b950d9-8fef-4deb-b51b-26edb90abc56.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9066
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Multani, Maro-Sorcerer"
            D.Description = "Multani, Maro-Sorcerer arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009066-0d6cc98b-b376-40af-8308-198bab00b2b1.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9067
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Johan"
            D.Description = "Johan arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009067-2f2f3b3e-63f3-4cab-aa95-030990157ed5.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9068
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Barrin, Master Wizard"
            D.Description = "The old stories keep a place for Barrin, Master Wizard."
            D.TexturePath = dir .. "images/cards/009068-ec79e35f-9e78-462d-8b71-4f044e2eff90.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9069
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balthor the Defiled"
            D.Description = "Balthor the Defiled arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009069-ed4cc273-adc3-4f46-9743-134b552d1d56.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9071
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Volrath the Fallen"
            D.Description = "The old stories keep a place for Volrath the Fallen."
            D.TexturePath = dir .. "images/cards/009071-08bdd66e-9ca1-456e-a61c-7c96cf6f7c56.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9072
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tsabo Tavoc"
            D.Description = "When Tsabo Tavoc appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009072-ccbe2539-7a7c-468b-a270-7ca1bdcccb1e.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9073
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ascendant Evincar"
            D.Description = "Ascendant Evincar walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009073-e5c87c93-8cf4-4d1a-9bb8-349600da55bc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9074
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ramses Overdark"
            D.Description = "The old stories keep a place for Ramses Overdark."
            D.TexturePath = dir .. "images/cards/009074-f079c74e-a39a-40f9-9c7e-9319c0c189c6.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100001
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chromium"
            D.Description = "The old stories keep a place for Chromium."
            D.TexturePath = dir .. "images/cards/100001-e85e54f3-012b-460f-a6f9-d0242a174adc.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100002
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nicol Bolas"
            D.Description = "An elder mind with plans inside plans."
            D.TexturePath = dir .. "images/cards/100002-05362cde-3b0b-4a8d-9875-675cfac52e4a.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100003
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rorix Bladewing"
            D.Description = "Rorix Bladewing walks in with history close behind."
            D.TexturePath = dir .. "images/cards/100003-7f2caba5-9f30-4b5e-833e-68c85a47ef7c.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100004
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Silvos, Rogue Elemental"
            D.Description = "When Silvos, Rogue Elemental appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/100004-3e48715c-6ff7-4b0c-aa7e-a2c901215426.jpg"
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end

    if MOD and MOD.Logger then
        if missingCards > 0 then
            MOD.Logger.LogScreen(("[GenMTG] Loaded with %d missing card lookups"):format(missingCards), 5,1,1,0,1)
        else
            MOD.Logger.LogScreen("[GenMTG] Loaded 449 MTG visual replacements", 5,1,1,0,1)
        end
    end
end

function M.OnInit()
    ApplyGenMTG()
end

return M
