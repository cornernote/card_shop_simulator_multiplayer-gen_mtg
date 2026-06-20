local M = {
    id          = "GenMTG",
    name        = "GenMTG",
    version     = "0.1.0",
    author      = "Brett + Codex",
    description = "Replaces the full vanilla card pool with Old School and Pre-Modern Magic: The Gathering cards.",
}

local function ApplyGenMTG()
    local R = UE.UCardFunction.GetCardRegistryWS(MOD.GAA.WorldUtils:GetCurrentWorld())
    if not R then
        if MOD and MOD.Logger then MOD.Logger.LogScreen("[GenMTG] Cannot find card registry", 5,1,0,0,1) end
        return
    end

    do
        local D = UE.FCardDataAll()
        D.Name = "Flowstone Giant"
        D.Description = "Stone remembers every step it takes."
        D.CardID = 1101
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001101-46e8240a-d882-4f60-8960-1856284e04a0.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.03
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phantom Tiger"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 1102
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001102-32839296-e583-4f71-aa44-dbe16408665e.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 54
        D.BaseHealth = 46
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Camel"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 1103
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001103-e0078aa8-bfb8-43b0-a6b7-1991596c21e1.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 10
        D.BaseHealth = 94
        D.CardValueMulti = 0.9
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Elvish Scout"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1104
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001104-689cd2ed-be81-4769-a8ec-287946301396.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 39
        D.BaseHealth = 117
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Raging Goblin"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1105
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001105-657190fe-9c18-4134-a556-e081daff73cd.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 40
        D.BaseHealth = 101
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Arctic Merfolk"
        D.Description = "A song from below the waves answers back."
        D.CardID = 1106
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001106-86369fe5-d86d-4f4c-8f3d-dedc174f2032.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 113
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lightning Hounds"
        D.Description = "Loyal teeth with a hunter's heart."
        D.CardID = 1107
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001107-38c82a1d-5db1-4090-b446-cc5bc6dc811d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Plague Rats"
        D.Description = "Wild instinct guides every strike."
        D.CardID = 1108
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001108-c99fd75c-4b41-411f-92b0-ca3b220946b5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 76
        D.BaseHealth = 120
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Druid Lyrist"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1109
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001109-e9923532-bc4f-44de-b963-d6914321c49a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 43
        D.BaseHealth = 93
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Patron of the Wild"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1110
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001110-7f7a0810-3970-454f-8381-700d6c6aefdc.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 43
        D.BaseHealth = 94
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Trained Pronghorn"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 1111
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001111-720ec745-226c-4211-974f-e04a4f9e1902.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 112
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Taunting Elf"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1112
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001112-6b24af94-9632-47da-9bf3-e81bb743cd43.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 13
        D.BaseHealth = 96
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pikemen"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 1113
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001113-18243ac8-6097-4f2c-8064-3dab48038e4a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 50
        D.BaseHealth = 108
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hunter Sliver"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1114
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001114-ca9aea1a-6f50-4f66-9f36-2e214dce41b4.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 50
        D.BaseHealth = 110
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wellwisher"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1115
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001115-be95ab7c-0e77-4293-aa48-ee54902a363f.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 108
        D.CardValueMulti = 1.27
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Jackalope Herd"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 1116
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001116-cb80105c-d2c0-4f8c-9302-5e6152a60f54.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.36
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Daru Spiritualist"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 1117
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001117-18f26b88-cffc-47ed-a70a-7d704a32c8bb.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 117
        D.CardValueMulti = 1.37
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Willow Dryad"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1118
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001118-1def835b-aabb-4a9d-8fb9-460452de0d79.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 43
        D.BaseHealth = 96
        D.CardValueMulti = 1.38
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Viashino Sandscout"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1119
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001119-12dd888a-ca98-44dd-a213-858c3539dc97.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 83
        D.BaseHealth = 108
        D.CardValueMulti = 1.39
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tree Monkey"
        D.Description = "Quick hands, quicker trouble."
        D.CardID = 1120
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001120-c60bbbf7-a005-4b4b-b8e4-e95bbb67f529.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 95
        D.CardValueMulti = 0.85
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mtenda Lion"
        D.Description = "Grace, claws, and perfect timing."
        D.CardID = 1121
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001121-cb05cf5b-2a0d-432a-b8e7-10335c2a18e8.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 73
        D.BaseHealth = 101
        D.CardValueMulti = 0.89
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Merfolk of the Pearl Trident"
        D.Description = "A song from below the waves answers back."
        D.CardID = 1122
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001122-a2e7d1a5-b8ad-48e8-9b54-3663310eca33.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 108
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cinder Crawler"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1123
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001123-a9406050-d76b-4569-a463-e21acaf84166.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 51
        D.BaseHealth = 120
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Homarid"
        D.Description = "The tide bends quietly around it."
        D.CardID = 1124
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001124-d6ffeab4-83b1-4414-ae72-e59a2354ea15.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Crashing Centaur"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1201
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001201-e1f3a32a-bfd2-4c31-a349-3e62a84c20e1.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 120
        D.BaseHealth = 220
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Willbender"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 1202
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001202-fb33b35b-33c9-4d59-9ed6-7ad40ea82cb0.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 47
        D.BaseHealth = 189
        D.CardValueMulti = 1.55
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Voice of Law"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 1203
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001203-daec52a4-02da-4bff-aff4-5247baed1326.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 89
        D.BaseHealth = 212
        D.CardValueMulti = 0.84
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Coral Fighters"
        D.Description = "A song from below the waves answers back."
        D.CardID = 1204
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001204-08f9dfa0-bdb3-4419-ae4b-cc394552af74.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 47
        D.BaseHealth = 121
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Primordial Ooze"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1205
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001205-a53d8d6d-b8d3-4f71-a88a-5d639ce2925f.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 43
        D.BaseHealth = 102
        D.CardValueMulti = 1.26
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Defiant Vanguard"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 1206
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001206-4c0bd267-59ec-41df-b0b7-37f6e6d6b073.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 85
        D.BaseHealth = 197
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cinder Elemental"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 1207
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001207-80b39056-2ee8-4cfd-acbd-ba99f74e788d.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 88
        D.BaseHealth = 211
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Roc Hatchling"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 1208
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001208-25857884-6bb7-4a8e-a08b-fa610af8a5c3.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 12
        D.BaseHealth = 109
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sengir Vampire"
        D.Description = "An old hunger dressed in noble colors."
        D.CardID = 1209
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001209-2308c0c4-7a78-4da8-8dd8-5b35b49a1896.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 120
        D.BaseHealth = 220
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ovinomancer"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 1210
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001210-ae4f0988-4194-4481-a6b7-27753261174a.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 18
        D.BaseHealth = 143
        D.CardValueMulti = 0.97
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Yavimaya Gnats"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 1211
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001211-9d8b7020-ca8f-4867-bc51-13d824daf154.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 21
        D.BaseHealth = 132
        D.CardValueMulti = 1.11
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cloudreach Cavalry"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 1212
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001212-65680bda-b999-4c2a-99a8-b03287e00807.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 48
        D.BaseHealth = 116
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Samite Archer"
        D.Description = "The tide bends quietly around it."
        D.CardID = 1213
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001213-07a262d7-6d0c-43d0-89b6-9f46a1a9eb69.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 52
        D.BaseHealth = 126
        D.CardValueMulti = 1.52
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spined Sliver"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1214
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001214-9a8a9442-7b08-4cc8-94ec-bddb8feab1a8.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 88
        D.BaseHealth = 220
        D.CardValueMulti = 0.97
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Undead Warchief"
        D.Description = "The grave forgot to keep this one."
        D.CardID = 1215
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001215-e6b3bcfe-be82-458b-ba59-ecb84436d747.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 82
        D.BaseHealth = 153
        D.CardValueMulti = 1.44
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ornithopter"
        D.Description = "A blade-winged relic of old machinery."
        D.CardID = 1216
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001216-09c6ac8a-01b1-4af5-89d8-ad66d9a81ceb.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 14
        D.BaseHealth = 166
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Emperor Crocodile"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 1301
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001301-9ccba208-1e24-45bb-a556-a3eb936efb10.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 194
        D.BaseHealth = 503
        D.CardValueMulti = 1.51
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Callous Oppressor"
        D.Description = "Eight arms, one patient mind."
        D.CardID = 1302
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001302-b3dd3ce7-e0e3-4412-9983-ff933584f59b.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 62
        D.BaseHealth = 278
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kird Ape"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 1303
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001303-c88e9802-4066-453e-b246-96b6245d21fe.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 61
        D.BaseHealth = 147
        D.CardValueMulti = 1.34
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pallimud"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 1304
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001304-61adc314-cfb2-4fdd-925c-cc1dc4692992.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 121
        D.BaseHealth = 353
        D.CardValueMulti = 1.36
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Forgotten Ancient"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 1305
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001305-49d3b91d-2e4f-4574-89f8-7b804f1d21bf.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 43
        D.BaseHealth = 328
        D.CardValueMulti = 1.38
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pyre Zombie"
        D.Description = "The grave forgot to keep this one."
        D.CardID = 1306
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001306-6c030108-2995-4fb0-9b80-efdfdd0f11e0.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 106
        D.BaseHealth = 168
        D.CardValueMulti = 1.24
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Savannah Lions"
        D.Description = "Grace, claws, and perfect timing."
        D.CardID = 1307
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001307-a2ee9127-d007-48e8-b797-88ef72bc7c8b.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 82
        D.BaseHealth = 206
        D.CardValueMulti = 1.16
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Eternal Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 1308
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001308-0596928c-2b20-4dbb-aa78-3ab6c3ce0d72.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 215
        D.BaseHealth = 520
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Urza's Avenger"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 1309
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001309-60bd9559-1a8f-47d0-af6b-d0681cae4060.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 174
        D.BaseHealth = 454
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Piledriver"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1310
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001310-f6c4df1f-f148-42ec-8e22-e7114216927d.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 77
        D.BaseHealth = 216
        D.CardValueMulti = 1.17
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Merfolk Looter"
        D.Description = "A song from below the waves answers back."
        D.CardID = 1311
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001311-4ec07b20-9768-4c21-90d5-70d57959c698.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 63
        D.BaseHealth = 181
        D.CardValueMulti = 1.19
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kjeldoran Knight"
        D.Description = "An old oath wrapped in steel."
        D.CardID = 1312
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001312-d5b9db8f-93b5-44e3-9e2b-728c80dfbb37.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 59
        D.BaseHealth = 201
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Bomb Squad"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1313
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001313-8e9535a5-29ea-4085-a36b-4905d85e97ac.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 84
        D.BaseHealth = 170
        D.CardValueMulti = 1.41
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thundercloud Elemental"
        D.Description = "Something old waits behind the mask."
        D.CardID = 1314
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001314-597aea42-43e0-41ed-bfe7-fc92b6b8e680.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 206
        D.BaseHealth = 398
        D.CardValueMulti = 50
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Will-o'-the-Wisp"
        D.Description = "A shadow crosses the path and does not leave."
        D.CardID = 1315
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001315-583ef317-8105-4917-ba3c-93de3eebd944.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 77
        D.BaseHealth = 121
        D.CardValueMulti = 50
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mold Demon"
        D.Description = "A candle flickers where no living hand can reach."
        D.CardID = 1316
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001316-649a33aa-7eac-4161-ae1a-fcbc758abccf.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 554
        D.CardValueMulti = 51.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Skulking Ghost"
        D.Description = "The night laughs first, then bares its teeth."
        D.CardID = 1317
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001317-f8ca7e96-0545-4f36-85c0-944d5c0b760a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 118
        D.BaseHealth = 173
        D.CardValueMulti = 60
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Guiltfeeder"
        D.Description = "Something old waits behind the mask."
        D.CardID = 1318
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001318-e2e9af4e-bd02-4d91-898f-68d192446904.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 83
        D.BaseHealth = 395
        D.CardValueMulti = 60
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Headless Horseman"
        D.Description = "A shadow crosses the path and does not leave."
        D.CardID = 1319
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001319-d1aa37c8-98fa-4984-b09b-cf65ad84e97b.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 123
        D.BaseHealth = 238
        D.CardValueMulti = 51
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sengir Bats"
        D.Description = "A candle flickers where no living hand can reach."
        D.CardID = 1320
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001320-3c745c2c-4311-412d-a137-02bf6d106e46.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 94
        D.BaseHealth = 233
        D.CardValueMulti = 54
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lord of the Pit"
        D.Description = "The night laughs first, then bares its teeth."
        D.CardID = 1321
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001321-3b4c083f-d619-4913-aa7b-d345e3bdb1c4.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 628
        D.CardValueMulti = 48
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Shivan Dragon"
        D.Description = "Old wings, hot breath, and a throne of smoke."
        D.CardID = 1322
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001322-7fec2b71-8fa9-4818-9c4f-5d2dcd2af495.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 244
        D.BaseHealth = 482
        D.CardValueMulti = 65
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Juzám Djinn"
        D.Description = "A dangerous wish with a giant's shadow."
        D.CardID = 1323
        D.Gen = 10
        D.TexturePath = dir .. "images/cards/001323-31bf3f14-b5df-498b-a1bb-965885c82401.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 252
        D.BaseHealth = 464
        D.CardValueMulti = 65
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Jackal Pup"
        D.Description = "It carries old fire in its wake."
        D.CardID = 1324
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001324-3707ab74-9aec-4d30-86e0-ffa5f72d5b4f.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 91
        D.BaseHealth = 161
        D.CardValueMulti = 1.55
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Timber Wolves"
        D.Description = "Wild instinct guides every strike."
        D.CardID = 1325
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001325-d8f84fc8-69b4-4756-9634-4d6c17ec88a1.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 62
        D.BaseHealth = 153
        D.CardValueMulti = 1.57
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wild Mongrel"
        D.Description = "Loyal teeth with a hunter's heart."
        D.CardID = 1326
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001326-5bb8dd5c-a79a-4afc-80b2-64645bb17a34.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 90
        D.BaseHealth = 267
        D.CardValueMulti = 1.72
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Guiding Spirit"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 1327
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001327-5f96d184-0ef8-40f7-98bc-bd4c53c57072.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 88
        D.BaseHealth = 227
        D.CardValueMulti = 1.92
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Clockwork Avian"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 1328
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001328-4a92484b-064c-4588-a1ea-6de8fd485ca4.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 39
        D.BaseHealth = 462
        D.CardValueMulti = 1.57
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Nether Shadow"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 1329
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001329-b0877527-6dbe-49f2-862f-5c79e66a92e9.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 84
        D.BaseHealth = 112
        D.CardValueMulti = 1.43
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Black Knight"
        D.Description = "An old oath wrapped in steel."
        D.CardID = 1330
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001330-a03b6221-2c85-44c0-82f1-b2b9e2c83c80.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 102
        D.BaseHealth = 192
        D.CardValueMulti = 1.23
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Warping Wurm"
        D.Description = "The earth opens when hunger calls."
        D.CardID = 1331
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001331-a2c41d0f-f1db-4797-b245-7de12ffa3a0d.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 64
        D.BaseHealth = 156
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Vesuvan Doppelganger"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 1401
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001401-92808879-895f-4e65-854c-2c92f170a1e3.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 95
        D.BaseHealth = 100
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Firestorm Phoenix"
        D.Description = "Every ending only feeds the next flame."
        D.CardID = 1402
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001402-3247a7dd-f48c-4cb4-8475-4864acccef7a.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 149
        D.BaseHealth = 296
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mirri, Cat Warrior"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 1403
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001403-6d1682dd-5a99-4bee-a2c2-c8735047e1a9.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 108
        D.BaseHealth = 313
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Gorilla Titan"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 1404
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001404-435d9562-8f2b-43fe-ba21-8f5896378280.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 183
        D.BaseHealth = 410
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Fire Drake"
        D.Description = "A lesser dragon, still proud enough to scorch the sky."
        D.CardID = 1405
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001405-8b94218b-26d7-40cd-aef7-0e2415d1551f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 90
        D.BaseHealth = 230
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tetravus"
        D.Description = "Built long ago, still obeying."
        D.CardID = 1406
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001406-49c1a2b2-50f0-4ed0-bd8f-06cd6aada04f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 90
        D.BaseHealth = 219
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Giant Shark"
        D.Description = "The water parts for teeth."
        D.CardID = 1407
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001407-53ec4a19-0f2f-4713-a869-58832484648d.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 212
        D.BaseHealth = 389
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Triskelion"
        D.Description = "Built long ago, still obeying."
        D.CardID = 1408
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/001408-09294401-a895-4084-8302-196a946863d6.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 100
        D.BaseHealth = 212
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rogue Elephant"
        D.Description = "A gentle giant until the charge begins."
        D.CardID = 2101
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002101-1b622b2f-84ad-4203-97fa-35af09e1c370.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.02
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Giant Oyster"
        D.Description = "The tide bends quietly around it."
        D.CardID = 2102
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002102-f8045d23-e6e6-474c-a3e7-ddfc6121657a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 23
        D.BaseHealth = 120
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dire Wolves"
        D.Description = "Wild instinct guides every strike."
        D.CardID = 2103
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002103-a602c93d-e00f-4b4f-a7ff-95316b7e7641.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 81
        D.BaseHealth = 120
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kyren Sniper"
        D.Description = "It carries old fire in its wake."
        D.CardID = 2104
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002104-4df99e19-0b1e-48ec-a146-38cf147eab61.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 49
        D.BaseHealth = 120
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Zodiac Monkey"
        D.Description = "Quick hands, quicker trouble."
        D.CardID = 2105
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002105-5e98eb0b-c3b5-4561-b8a2-f22bd0fe1115.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 77
        D.BaseHealth = 116
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Snarling Undorak"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 2106
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002106-05788d63-6210-44f2-9ae4-e55e9507a3a9.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.08
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Vampire Bats"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 2107
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002107-c8b8aa03-c777-467f-9b05-812183553f7b.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 8
        D.BaseHealth = 100
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cloud Sprite"
        D.Description = "Small wings, sharp tricks, no apologies."
        D.CardID = 2108
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002108-3d14352c-ac8c-45b5-b930-63822408ba3d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 40
        D.BaseHealth = 101
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Grappler"
        D.Description = "It carries old fire in its wake."
        D.CardID = 2109
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002109-5c948872-295c-41b9-8094-db7db7578b0d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 41
        D.BaseHealth = 97
        D.CardValueMulti = 1.11
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dragon Whelp"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 2110
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002110-349ff6e6-b914-4787-bb90-ea77a3550d23.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 88
        D.BaseHealth = 120
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Fungusaur"
        D.Description = "It blooms where safer things decay."
        D.CardID = 2111
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002111-37f6f2bd-4e0e-42d8-b5a6-ad4ee736c69e.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 87
        D.BaseHealth = 120
        D.CardValueMulti = 1.13
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hunting Drake"
        D.Description = "A lesser dragon, still proud enough to scorch the sky."
        D.CardID = 2112
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002112-5b0293a9-48fe-4018-bd25-3e02c227a3dd.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thunder Spirit"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 2113
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002113-61a59775-b1cd-4ed0-8abf-c2b37f7be0d5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 84
        D.BaseHealth = 120
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Teferi's Drake"
        D.Description = "A lesser dragon, still proud enough to scorch the sky."
        D.CardID = 2114
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002114-c24823df-5651-4578-a0c8-f9f52f66abe4.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.16
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thallid"
        D.Description = "It blooms where safer things decay."
        D.CardID = 2115
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002115-4caaf31b-86a9-485b-8da7-d5b526ed1233.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 40
        D.BaseHealth = 100
        D.CardValueMulti = 1.17
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Snowman"
        D.Description = "It carries old fire in its wake."
        D.CardID = 2201
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002201-5bbb260a-6763-4d1c-a009-4e34cd572519.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 57
        D.BaseHealth = 143
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Brine Hag"
        D.Description = "The tide bends quietly around it."
        D.CardID = 2202
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002202-2a1e7796-fbfb-4976-879f-bb748429d5c7.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 88
        D.BaseHealth = 220
        D.CardValueMulti = 1.19
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Warchief"
        D.Description = "It carries old fire in its wake."
        D.CardID = 2203
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002203-66864a4b-8924-40ef-a337-15b12413a158.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 85
        D.BaseHealth = 196
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Boneshard Slasher"
        D.Description = "Something from the dark learned how to hunt."
        D.CardID = 2204
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002204-27201370-32cc-4b90-890d-8c3f5362ad70.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 47
        D.BaseHealth = 119
        D.CardValueMulti = 1.21
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Whirling Dervish"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 2205
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002205-e51bfbd4-2319-41eb-b694-72874c24b31a.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 47
        D.BaseHealth = 117
        D.CardValueMulti = 1.22
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dauthi Trapper"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 2206
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002206-6d83770e-16ff-49c6-b4e7-eb7fc566eef8.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 49
        D.BaseHealth = 156
        D.CardValueMulti = 1.23
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spike Feeder"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 2301
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002301-3751b2ae-a234-4691-984b-2f9f6b1cd1df.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 24
        D.BaseHealth = 202
        D.CardValueMulti = 1.24
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Man-o'-War"
        D.Description = "A bright shape moving under dark water."
        D.CardID = 2302
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002302-a7a4a023-8867-4fb4-baf9-df7540b61725.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 96
        D.BaseHealth = 281
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Halfdane"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 2303
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002303-2e939761-3542-4044-9038-d1d30c6a38fc.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 132
        D.BaseHealth = 370
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Black Lotus"
        D.Description = "A perfect bloom. A moment of impossible power."
        D.CardID = 2304
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002304-4a2e428c-dd25-484c-bbc8-2d6ce10ef42c.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 68
        D.BaseHealth = 192
        D.CardValueMulti = 0.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kjeldoran Phalanx"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 2305
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002305-b6e91ba0-b229-4ab1-84f3-2a490dfa5051.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 108
        D.BaseHealth = 541
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dralnu's Pet"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 2306
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002306-cd5f4daf-7b54-4425-a93a-19532dfb83ca.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 111
        D.BaseHealth = 236
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Blistering Firecat"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 2307
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002307-e0ddcf4a-1943-49dd-a02c-75804ce4bc3e.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 184
        D.CardValueMulti = 1.31
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Gigapede"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 2308
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002308-0a96a608-9237-41c1-824c-89d5fad939ad.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 350
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tempest Efreet"
        D.Description = "Smoke, pride, and flame given form."
        D.CardID = 2309
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002309-c2ea6dfe-64d6-451a-bd34-31546996e711.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 126
        D.BaseHealth = 447
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Krovikan Horror"
        D.Description = "Something from the dark learned how to hunt."
        D.CardID = 2310
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002310-e1f3cb1c-6bde-4b55-b5bc-5b64b56930f2.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 99
        D.BaseHealth = 310
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pygmy Hippo"
        D.Description = "The tide bends quietly around it."
        D.CardID = 2311
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002311-2e3f6220-6ead-46b4-8663-57609ef5a12e.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 86
        D.BaseHealth = 297
        D.CardValueMulti = 1.72
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Roots"
        D.Description = "Green life with a will of its own."
        D.CardID = 2312
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002312-aeb151d2-c313-44d2-972e-33487f070c23.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 28
        D.BaseHealth = 476
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sustaining Spirit"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 2313
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002313-c9ecf91a-9ce1-44a1-8859-7163d32cfba6.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 25
        D.BaseHealth = 354
        D.CardValueMulti = 1.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Time Walk"
        D.Description = "One step bends into another turn."
        D.CardID = 2314
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002314-ade7d00d-4e7b-46e9-ace1-63f628a589fc.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 100
        D.BaseHealth = 327
        D.CardValueMulti = 1.52
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rootwater Shaman"
        D.Description = "A song from below the waves answers back."
        D.CardID = 2315
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002315-caa1b84b-efda-4324-9106-0d1d00385cdc.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 94
        D.BaseHealth = 290
        D.CardValueMulti = 1.67
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Atog"
        D.Description = "It grins at anything that can be eaten."
        D.CardID = 2316
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002316-f123fe6a-99ca-48c1-9a7a-ae905c10108a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 62
        D.BaseHealth = 258
        D.CardValueMulti = 1.38
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Timmerian Fiends"
        D.Description = "Something from the dark learned how to hunt."
        D.CardID = 2317
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002317-90643766-c92f-4a25-bd02-227f3c91f391.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 88
        D.BaseHealth = 164
        D.CardValueMulti = 1.7
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lightning Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 2318
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002318-342fc7bc-657f-43a3-9558-f516fa545a09.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 191
        D.BaseHealth = 382
        D.CardValueMulti = 1.68
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ancestral Recall"
        D.Description = "Three old memories arrive like lightning."
        D.CardID = 2319
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002319-2dd41293-d7c8-4422-9f0c-b3e96350f5c9.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 98
        D.BaseHealth = 226
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Scryb Sprites"
        D.Description = "Small wings, sharp tricks, no apologies."
        D.CardID = 2401
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002401-ab52f491-26f1-494f-8ec7-9630c4f9653a.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 61
        D.BaseHealth = 165
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lichenthrope"
        D.Description = "Green life with a will of its own."
        D.CardID = 2402
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002402-76f0c356-a81d-41d4-a8b7-8c159146a8b8.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 210
        D.BaseHealth = 480
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phantom Nishoba"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 2403
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002403-56ebc372-aabd-4174-a943-c7bf59e5028d.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 50
        D.BaseHealth = 198
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Great Whale"
        D.Description = "A living island beneath the surface."
        D.CardID = 2404
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002404-58a2acf1-dad8-4f93-a34e-891e5178a48f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 207
        D.BaseHealth = 609
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spectral Bears"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 2405
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002405-7e13875f-f745-4afd-a830-33df9576dce8.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 123
        D.BaseHealth = 346
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Timetwister"
        D.Description = "Past and future tumble through the same door."
        D.CardID = 2406
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002406-01bda3d7-122a-48a0-bab3-676c4a557b74.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 151
        D.BaseHealth = 373
        D.CardValueMulti = 1.22
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Jareth, Leonine Titan"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 2407
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002407-65dd1364-ff36-4cb9-ad93-e6fcbcb942cf.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 198
        D.BaseHealth = 621
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sol Ring"
        D.Description = "A small circle holding a sun's worth of power."
        D.CardID = 2408
        D.Gen = 1
        D.TexturePath = dir .. "images/cards/002408-9138d11a-d55f-4c46-bb27-7e8e15a44e8c.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 124
        D.BaseHealth = 251
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Shadows"
        D.Description = "It does not chase. It does not need to."
        D.CardID = 3101
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003101-69c6e076-d7bf-435b-ba79-84aa9f073130.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 20
        D.BaseHealth = 120
        D.CardValueMulti = 1.02
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Clockwork Beast"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 3102
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003102-ed5507d5-7f1b-4cbf-8341-495c33e5ab6c.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 34
        D.BaseHealth = 120
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Battering Ram"
        D.Description = "Built long ago, still obeying."
        D.CardID = 3103
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003103-e7e2857f-f6eb-4091-b758-7bb508544170.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 111
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Urborg Phantom"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 3104
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003104-397355b9-5b67-4973-972e-3505c500d116.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Daru Stinger"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 3105
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003105-ff5866a4-f4c0-45bc-9b33-b77387441d34.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 56
        D.BaseHealth = 120
        D.CardValueMulti = 1.08
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Aven Farseer"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 3106
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003106-47854e89-4d22-4eb6-a77d-6f04407bd2e5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 113
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Giant Albatross"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 3107
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003107-bce05870-74d3-43f1-92d0-dc1744c0138d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 109
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thunder Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 3108
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003108-7e9b06a8-c3f3-4174-b992-7da7ca163990.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Auramancer"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 3109
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003109-090dd4cf-5087-4ed8-a944-f3794e5862d5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 84
        D.BaseHealth = 120
        D.CardValueMulti = 1.16
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Bloodfire Dwarf"
        D.Description = "It carries old fire in its wake."
        D.CardID = 3110
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003110-86b5c38e-7d74-4862-8187-f5db4a3d1e0f.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 40
        D.BaseHealth = 96
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Ski Patrol"
        D.Description = "It carries old fire in its wake."
        D.CardID = 3111
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003111-fde1c8b5-1e01-4920-8d02-bf80d5b238c5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 109
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Chicken Egg"
        D.Description = "It carries old fire in its wake."
        D.CardID = 3112
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003112-640ac565-331b-47e2-b2af-a8a94a96488a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 14
        D.BaseHealth = 112
        D.CardValueMulti = 1.22
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Sky Raider"
        D.Description = "It carries old fire in its wake."
        D.CardID = 3113
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003113-738cbf9b-e3d3-4568-93ce-7915b248e5b3.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 52
        D.BaseHealth = 120
        D.CardValueMulti = 1.24
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Soldevi Sentry"
        D.Description = "A relic from an age that trusted metal with miracles."
        D.CardID = 3114
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003114-85976b5c-4eed-4cf9-b2b0-a8421a97ab2a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 100
        D.CardValueMulti = 1.26
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Raider"
        D.Description = "It carries old fire in its wake."
        D.CardID = 3115
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003115-3315d75d-08dc-456c-a8e7-fe3136bf1a6b.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 79
        D.BaseHealth = 120
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Voice of Truth"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 3201
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003201-40377e3d-77d9-4d86-ac8c-4e27803e48d8.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 94
        D.BaseHealth = 213
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Raven Familiar"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 3202
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003202-b104638d-29aa-490c-8cfb-e08fc94efb59.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 52
        D.BaseHealth = 201
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Skyshroud Elite"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 3203
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003203-f6a496a4-1b4c-4c5d-99e5-ec40601c759d.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 42
        D.BaseHealth = 103
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Orcish Cannoneers"
        D.Description = "It carries old fire in its wake."
        D.CardID = 3204
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003204-a4309a2f-27f5-4652-b0b4-6a6119436f75.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 50
        D.BaseHealth = 220
        D.CardValueMulti = 1.34
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Frost Giant"
        D.Description = "Stone remembers every step it takes."
        D.CardID = 3205
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003205-6955d54f-7b37-4e43-8183-51677fb1ee11.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 120
        D.BaseHealth = 220
        D.CardValueMulti = 1.36
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Killer Bees"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 3206
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003206-6a749837-56ff-4e42-9bf2-82633bccdc39.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 18
        D.BaseHealth = 143
        D.CardValueMulti = 1.38
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Bloodline Shaman"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 3207
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003207-5fdfc473-8477-4c04-a4e7-ecac1b0a5716.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 47
        D.BaseHealth = 121
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Zombie Mob"
        D.Description = "The grave forgot to keep this one."
        D.CardID = 3208
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003208-ab85551f-c9cc-409c-9fb5-a45de695e521.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 89
        D.BaseHealth = 78
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Soldevi Sage"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 3209
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003209-268c3726-0e2d-40df-811d-2cdf6b328ea3.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 44
        D.BaseHealth = 144
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Crosis's Attendant"
        D.Description = "Stone and metal remember their maker's command."
        D.CardID = 3210
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003210-45edc18c-2046-4d0e-92fe-a6cf4aaf1c6f.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 120
        D.BaseHealth = 220
        D.CardValueMulti = 0.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Flametongue Kavu"
        D.Description = "An old legend pulled from a well-worn binder."
        D.CardID = 3301
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003301-e5056bca-bd90-4b50-8630-105558f8ef92.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 172
        D.BaseHealth = 268
        D.CardValueMulti = 0.94
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Harbinger of Night"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 3302
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003302-33124133-ed2c-4b86-a135-ac76f4fe4da5.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 104
        D.BaseHealth = 355
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tahngarth, Talruum Hero"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 3303
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003303-c1778f37-af01-4f8c-ab9d-a4c60abf7e78.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 183
        D.BaseHealth = 406
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Elven Warhounds"
        D.Description = "Loyal teeth with a hunter's heart."
        D.CardID = 3304
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003304-29138c1e-11cb-488f-8e04-f5488e08a81e.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 98
        D.BaseHealth = 310
        D.CardValueMulti = 1.26
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Psychatog"
        D.Description = "It grins at anything that can be eaten."
        D.CardID = 3305
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003305-6757bf0e-489f-4be2-9e41-463b59f00dd1.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 66
        D.BaseHealth = 274
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Nantuko Shade"
        D.Description = "A knight of darkness, sharpened by moonless nights."
        D.CardID = 3306
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003306-2ed9dc9c-b92b-4305-8c54-1a63f750f8d1.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 91
        D.BaseHealth = 198
        D.CardValueMulti = 1.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Chromeshell Crab"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 3307
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003307-e02a40a4-fa61-4595-810a-3796e0d71507.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 137
        D.BaseHealth = 389
        D.CardValueMulti = 1.45
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Giant Badger"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 3308
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003308-6b1ac9c5-5f9f-445e-8e4b-b53ed9984958.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 91
        D.BaseHealth = 332
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Squirrel Mob"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 3309
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003309-181254ce-259a-4b31-8937-728564f2baf3.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 93
        D.BaseHealth = 320
        D.CardValueMulti = 1.44
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mother of Runes"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 3310
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003310-0b1a46ab-95cb-4c24-924f-fc2afd4fcac7.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 53
        D.BaseHealth = 210
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Withered Wretch"
        D.Description = "The grave forgot to keep this one."
        D.CardID = 3311
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003311-b8a82948-503f-4ad4-9e3c-c080c16afd63.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 97
        D.BaseHealth = 249
        D.CardValueMulti = 1.45
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Nalathni Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 3312
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003312-7f9c6be5-ec44-4c66-aad6-cf9eca765b6b.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 83
        D.BaseHealth = 183
        D.CardValueMulti = 1.94
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thran Golem"
        D.Description = "Stone and metal remember their maker's command."
        D.CardID = 3313
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003313-5778c52b-248b-4131-b5c0-12ea1986786e.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 146
        D.BaseHealth = 351
        D.CardValueMulti = 1.72
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phyrexian Infiltrator"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 3314
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003314-224b8254-553d-4d88-8163-1f15e1244bd2.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 111
        D.BaseHealth = 246
        D.CardValueMulti = 2.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rootwater Thief"
        D.Description = "A song from below the waves answers back."
        D.CardID = 3315
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003315-38addef3-1dd7-41a1-9706-3be5c86a58c9.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 71
        D.BaseHealth = 239
        D.CardValueMulti = 1.55
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Leviathan"
        D.Description = "A continent of muscle beneath the waves."
        D.CardID = 3401
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003401-a4e96456-93bf-4d28-9a4b-5bc24ae07fc2.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 320
        D.BaseHealth = 902
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "War Mammoth"
        D.Description = "A gentle giant until the charge begins."
        D.CardID = 3402
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003402-c38912a6-0327-411a-9499-d659b635e2bd.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 128
        D.BaseHealth = 440
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Clone"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 3403
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003403-1d513dde-7c5f-46f1-b871-5290595bdbbe.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 44
        D.BaseHealth = 137
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mahamoti Djinn"
        D.Description = "Ancient power bound to a dangerous wish."
        D.CardID = 3404
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003404-5d464226-5607-4db2-bd43-7855efb92628.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 206
        D.BaseHealth = 616
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lord of Atlantis"
        D.Description = "A song from below the waves answers back."
        D.CardID = 3405
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003405-fd279366-8de2-47c5-9ac0-f41f8f81c643.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 100
        D.BaseHealth = 247
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Serra Angel"
        D.Description = "A bright omen with a sword in the clouds."
        D.CardID = 3406
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003406-b7b4e357-de48-4461-8109-bbb07fff5171.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 174
        D.BaseHealth = 438
        D.CardValueMulti = 1.17
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Erhnam Djinn"
        D.Description = "Ancient power bound to a dangerous wish."
        D.CardID = 3407
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003407-5bcf61ba-37fd-4029-b299-add7cf9d70bc.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 182
        D.BaseHealth = 470
        D.CardValueMulti = 1.26
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Juggernaut"
        D.Description = "Once it starts moving, the world makes room."
        D.CardID = 3408
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003408-82845f1e-a114-4d4f-8b6d-29e37fe1e925.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 220
        D.BaseHealth = 327
        D.CardValueMulti = 1.33
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Birds of Paradise"
        D.Description = "Every color of magic takes wing at once."
        D.CardID = 3409
        D.Gen = 2
        D.TexturePath = dir .. "images/cards/003409-a2985857-fee5-42a6-9b5d-e157ada52a03.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 47
        D.BaseHealth = 148
        D.CardValueMulti = 1.27
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Samite Healer"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 4101
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004101-19d997ce-6b08-4058-a7f8-82cc74b9974d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 112
        D.CardValueMulti = 1.02
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dwarven Scorcher"
        D.Description = "It carries old fire in its wake."
        D.CardID = 4102
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004102-099873b1-7181-4b9d-8ce1-8ec63c814afe.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 98
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lightning Elemental"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 4103
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004103-6df538e3-84c9-4580-85e9-8ac2f9a1294b.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Blood Celebrant"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 4104
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004104-805de325-6f14-4a52-bb85-f9a9545d82a4.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 41
        D.BaseHealth = 97
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Blastoderm"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 4105
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004105-9db5d6c2-b11f-442a-b172-c0c99c9bec07.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.08
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Gorilla Berserkers"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 4106
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004106-344b4613-17f8-4c8b-b5bc-f773a8f8007a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Llanowar Sentinel"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 4107
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004107-6f37ea4b-66e2-4ad5-ae7f-d02fd59131bd.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 86
        D.BaseHealth = 120
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Skirk Prospector"
        D.Description = "It carries old fire in its wake."
        D.CardID = 4108
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004108-eb545dcd-3a7a-46a7-9c35-d28faebc6d17.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 43
        D.BaseHealth = 97
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Icatian Infantry"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 4109
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004109-f95d42d8-ba75-43bf-81b8-b02374f03e83.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 43
        D.BaseHealth = 97
        D.CardValueMulti = 1.16
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Harvester Druid"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 4110
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004110-97337e6e-1b3f-43a2-91f2-ca8f6c5dea88.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 111
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Arctic Foxes"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 4111
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004111-98f99c3e-dddc-492f-aab6-1d899346a385.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 48
        D.BaseHealth = 110
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ridgeline Rager"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 4112
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004112-5f663a4a-592a-4a3b-bbaf-e9c5c3049021.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 52
        D.BaseHealth = 120
        D.CardValueMulti = 1.22
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Merfolk Traders"
        D.Description = "A song from below the waves answers back."
        D.CardID = 4113
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004113-ebacbf23-4b69-481c-aaf7-5de7b4a6db6f.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 48
        D.BaseHealth = 120
        D.CardValueMulti = 1.24
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hornet Cobra"
        D.Description = "A silent coil of hunger and patience."
        D.CardID = 4114
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004114-27180bad-9bbc-462b-8832-626dc403a3fd.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 84
        D.BaseHealth = 120
        D.CardValueMulti = 1.26
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Soldevi Heretic"
        D.Description = "The tide bends quietly around it."
        D.CardID = 4115
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004115-d46accc8-b926-4443-bc12-dfd5870b2d2e.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 89
        D.BaseHealth = 120
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Urborg Skeleton"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 4116
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004116-6e522a62-fbca-4362-9006-d4356c525704.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 13
        D.BaseHealth = 96
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Drudge Skeletons"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 4117
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004117-be76e8d0-70d3-4fc7-9320-e78ad93bd362.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 50
        D.BaseHealth = 106
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Clockwork Steed"
        D.Description = "Thunder follows its hooves."
        D.CardID = 4201
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004201-d27d83b9-4454-40c0-bac0-de736c634a53.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 29
        D.BaseHealth = 220
        D.CardValueMulti = 1.34
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pavel Maliki"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 4202
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004202-304f9d39-3ea2-4274-b23e-e4eaabbc1c4b.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 120
        D.BaseHealth = 220
        D.CardValueMulti = 1.36
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dwarven Blastminer"
        D.Description = "It carries old fire in its wake."
        D.CardID = 4203
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004203-2970831a-738b-476f-9d46-39f10a1f91e7.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 51
        D.BaseHealth = 120
        D.CardValueMulti = 1.38
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wildfire Emissary"
        D.Description = "Smoke, pride, and flame given form."
        D.CardID = 4204
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004204-6d99204c-b42d-48bc-9a93-fae5660665c7.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 94
        D.BaseHealth = 220
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tek"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 4301
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004301-c1f38104-a699-4bb9-930a-699f7bbc338a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 106
        D.BaseHealth = 317
        D.CardValueMulti = 0.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cloud Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 4302
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004302-4bb7fb59-65c0-4af6-9d3a-79cd6602d004.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 211
        D.BaseHealth = 449
        D.CardValueMulti = 1.45
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dromar, the Banisher"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 4303
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004303-cfcc3c72-fff5-454c-814c-eb952fd23ba9.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 596
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phyrexian Negator"
        D.Description = "Something from the dark learned how to hunt."
        D.CardID = 4304
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004304-45a02d67-5931-49ae-a28e-57aa6f9c7f83.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 206
        D.BaseHealth = 456
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Unstable Shapeshifter"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 4305
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004305-84e8cbd4-f49d-420d-a027-3be64ca58989.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 46
        D.BaseHealth = 195
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "White Knight"
        D.Description = "An old oath wrapped in steel."
        D.CardID = 4306
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004306-cb9cb8ed-7abb-4e71-b42f-5041dd0c0394.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 89
        D.BaseHealth = 269
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Stone Giant"
        D.Description = "Stone remembers every step it takes."
        D.CardID = 4307
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004307-7f736379-1fe8-43b8-b749-f1e9baef96a6.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 135
        D.BaseHealth = 418
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ihsan's Shade"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 4308
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004308-82351724-2814-4d9e-b065-bb72c761b2e7.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 218
        D.BaseHealth = 496
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Flotilla"
        D.Description = "It carries old fire in its wake."
        D.CardID = 4309
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004309-87024efe-4a74-49fe-a43a-480bed0a650a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 97
        D.BaseHealth = 274
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dwarven Pony"
        D.Description = "Thunder follows its hooves."
        D.CardID = 4310
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004310-53a3019f-0b27-4ba3-be4c-73ed50eb9514.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 53
        D.BaseHealth = 189
        D.CardValueMulti = 1.29
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Faerie Noble"
        D.Description = "Small wings, sharp tricks, no apologies."
        D.CardID = 4311
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004311-00f8931e-6402-483c-a9e8-63ee344c36a7.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 73
        D.BaseHealth = 256
        D.CardValueMulti = 1.38
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Frenetic Efreet"
        D.Description = "Smoke, pride, and flame given form."
        D.CardID = 4312
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004312-50d4468b-f7de-44fe-898a-4125d26d242f.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 114
        D.BaseHealth = 164
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Aboroth"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 4313
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004313-8c72ac67-e4fb-49a1-b1e5-cd2e414bec28.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 650
        D.CardValueMulti = 1.65
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phyrexian Dreadnought"
        D.Description = "Too much machine for any battlefield to hold."
        D.CardID = 4314
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004314-7b8197b9-0cd1-4fa1-9668-d1b5f1759151.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 650
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Palinchron"
        D.Description = "It is real enough when the blade lands."
        D.CardID = 4315
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004315-5621db3f-a9e7-4350-9c6a-0ba04a628947.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 180
        D.BaseHealth = 567
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Yavimaya Elder"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 4316
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004316-325d9372-01c9-4e99-a966-13c8f8566e2e.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 110
        D.BaseHealth = 178
        D.CardValueMulti = 1.6
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Musician"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 4317
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004317-9f8d2247-a10e-413a-b497-2add3918f991.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 82
        D.BaseHealth = 304
        D.CardValueMulti = 1.48
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Storm Spirit"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 4318
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004318-7a383a5f-4814-4b92-aa80-2a6440a719bc.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 157
        D.BaseHealth = 347
        D.CardValueMulti = 1.6
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Serendib Djinn"
        D.Description = "Ancient power bound to a dangerous wish."
        D.CardID = 4401
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004401-0458b733-d689-4cb5-8970-3b675c67fc4d.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 197
        D.BaseHealth = 601
        D.CardValueMulti = 1.41
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Force of Nature"
        D.Description = "The forest's anger given colossal form."
        D.CardID = 4402
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004402-e86f61bb-c2b5-4672-b262-1c72bd1de51f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 308
        D.BaseHealth = 726
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Masticore"
        D.Description = "A metal predator with hunger in every joint."
        D.CardID = 4403
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004403-908a2215-7231-43a4-8fec-5d1e4233c028.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 168
        D.BaseHealth = 432
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Old Man of the Sea"
        D.Description = "Ancient power bound to a dangerous wish."
        D.CardID = 4404
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004404-d10f8a05-78b0-42a7-adcd-83f6bafe5417.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 108
        D.BaseHealth = 325
        D.CardValueMulti = 1.26
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Morphling"
        D.Description = "A perfect shape that never stays still."
        D.CardID = 4405
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004405-812f4d5c-aacf-4bd8-849d-80a357a7804d.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 132
        D.BaseHealth = 482
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spiritmonger"
        D.Description = "It grows stronger on the edge of ruin."
        D.CardID = 4406
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004406-b96d6e67-f690-4f19-bb25-a7c2d2aaf42f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 240
        D.BaseHealth = 566
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Verdant Force"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 4407
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004407-29bd094c-fcc1-4abf-ba3e-03a5b9b6d1c2.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 292
        D.BaseHealth = 663
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Su-Chi"
        D.Description = "Built long ago, still obeying."
        D.CardID = 4408
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004408-a64d4f93-0c04-4078-aec0-7e9de92f260f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 214
        D.BaseHealth = 365
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Skizzik"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 4409
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004409-dc7732bc-e168-44d9-923a-db7e985bd6db.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 240
        D.BaseHealth = 299
        D.CardValueMulti = 1.41
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Braids, Cabal Minion"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 4410
        D.Gen = 3
        D.TexturePath = dir .. "images/cards/004410-4dcdcad5-e4fb-480e-984f-1ac5cdc986b9.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 157
        D.BaseHealth = 223
        D.CardValueMulti = 1.52
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Barbarian Guides"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5101
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005101-fe65a045-dacb-4392-bcb6-843394ef98c9.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 56
        D.BaseHealth = 120
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Raka Disciple"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5102
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005102-41462d43-4f9f-46ba-b79d-434597e74b6b.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 97
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pyric Salamander"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5103
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005103-7f2dc1a7-4b70-4643-90a8-fdc7877c01ca.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 54
        D.BaseHealth = 106
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Clockwork Swarm"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 5104
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005104-dfd89e5c-79dc-4a57-b5ea-16491443fea1.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 38
        D.BaseHealth = 120
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Giant Mantis"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 5105
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005105-2b56c895-37d3-4475-a542-dc6d21c46f06.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kobolds of Kher Keep"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5106
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005106-df0320d9-7c2a-456a-9159-1b4fae67bfb5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 6
        D.BaseHealth = 86
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Liberated Dwarf"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5107
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005107-e2c07842-9b70-40b1-9b97-9a9279b7ebc4.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 43
        D.BaseHealth = 96
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Barbarian Lunatic"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5108
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005108-6c899f9b-ebce-4424-9cd9-861a50a5f7d2.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 84
        D.BaseHealth = 120
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dwarven Berserker"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5110
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005110-7bc734e9-fb09-4094-94b6-76c0458649e9.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 108
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Willow Elf"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 5111
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005111-c063a072-0cd4-45fb-ac68-96e359bf3ef5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 96
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kjeldoran Skyknight"
        D.Description = "An old oath wrapped in steel."
        D.CardID = 5112
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005112-f794665a-8353-482a-b065-2a0777a8acda.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 52
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mesa Pegasus"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 5113
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005113-552089f3-1ae4-4f73-a19c-731ef98e1979.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 108
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Keeneye Aven"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 5114
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005114-1a355c58-cd28-4d2d-9df1-91b4196b01ef.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 89
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Shadow Guildmage"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5115
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005115-ba3fc11e-db36-430c-920b-31195913c16a.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 96
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Merchant of Secrets"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5116
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005116-d1109bdd-a5ce-4e63-adee-54e43a4c4a1e.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 52
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Devouring Deep"
        D.Description = "A bright shape moving under dark water."
        D.CardID = 5117
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005117-0855a5a8-8c40-4396-9ad1-8fa0fc6a0c59.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 52
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sparksmith"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5118
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005118-15a4460d-3fe8-4b1f-9990-0a19c3345367.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 108
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dega Disciple"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5119
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005119-fb9cd7d9-8aad-4607-890c-9c8efe016a92.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 96
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Information Dealer"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5120
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005120-a45ac59c-654d-44de-b266-532d44b34137.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 108
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cephalid Looter"
        D.Description = "Eight arms, one patient mind."
        D.CardID = 5121
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005121-cb6f1c4e-4fbc-4474-8dd2-5846d417b6ab.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 84
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Storm Crow"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 5122
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005122-7e573308-40d0-43ce-be04-dbab6bc1ed35.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Colos Yearling"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 5123
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005123-1d68eb62-9f86-4c85-8696-46a248c744ff.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 52
        D.BaseHealth = 120
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Sledder"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5124
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005124-3a9a1ecf-29f6-474e-bbcf-3455d388aa94.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 96
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Crystal Golem"
        D.Description = "Stone and metal remember their maker's command."
        D.CardID = 5201
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005201-4b1d3280-f3e1-42ea-93e1-dbab7336fb73.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 120
        D.BaseHealth = 220
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spore Flower"
        D.Description = "It blooms where safer things decay."
        D.CardID = 5202
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005202-f9681dc0-d0fc-4d5b-a23c-63ec1cc8343d.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 19
        D.BaseHealth = 114
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Firebrand Ranger"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 5203
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005203-ee05211e-cf08-4dea-9740-ed06f8682153.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 84
        D.BaseHealth = 114
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Suq'Ata Firewalker"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5204
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005204-b8a7c22e-fe96-4960-96d4-ee85abec3281.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 20
        D.BaseHealth = 136
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sea Spirit"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 5205
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005205-08933cca-6ed1-43da-a539-355ded52c5b6.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 95
        D.BaseHealth = 220
        D.CardValueMulti = 1.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Balduvian Dead"
        D.Description = "The grave forgot to keep this one."
        D.CardID = 5206
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005206-fac1875a-feab-4213-aa15-69892b7df58b.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 91
        D.BaseHealth = 220
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cephalid Illusionist"
        D.Description = "Eight arms, one patient mind."
        D.CardID = 5207
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005207-dceb8cf5-b31a-400e-aea5-ad0c3552d697.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 48
        D.BaseHealth = 119
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Aphetto Grifter"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 5208
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005208-3a7a7bf3-1b0c-415d-9c57-73ac55b1f915.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 58
        D.BaseHealth = 119
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Airdrop Condor"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 5209
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005209-ec9796ac-11e2-4295-bf00-f684d0111970.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 95
        D.BaseHealth = 220
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Jhoira's Toolbox"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 5210
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005210-edb38309-c02c-496c-894f-786a2f6e3d1c.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 48
        D.BaseHealth = 119
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Scalpelexis"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 5301
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005301-29c3b7fa-78e7-4a0c-bcdc-4b829638e3f6.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 67
        D.BaseHealth = 596
        D.CardValueMulti = 0.96
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Cloud of Faeries"
        D.Description = "Small wings, sharp tricks, no apologies."
        D.CardID = 5302
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005302-4e76d04a-0038-4b5b-a026-3056ee940da9.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 54
        D.BaseHealth = 262
        D.CardValueMulti = 0.96
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin King"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5303
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005303-0c77029a-7f00-490e-bf8b-dce192d72e2f.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 90
        D.BaseHealth = 351
        D.CardValueMulti = 0.96
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ancient Silverback"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 5304
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005304-3f2f8a99-b01d-4d0a-bf1c-a3cf08fbc469.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 650
        D.CardValueMulti = 0.96
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Uktabi Orangutan"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 5305
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005305-b6a944ef-dbf2-47c9-a245-dfd2533a0680.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 93
        D.BaseHealth = 306
        D.CardValueMulti = 0.96
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Blurred Mongoose"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 5306
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005306-4b073e3f-6a6f-495a-ab16-39d906b660f1.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 93
        D.BaseHealth = 187
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Discordant Spirit"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 5307
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005307-be67b950-dfe3-4159-aa53-63df25d2a926.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 119
        D.BaseHealth = 249
        D.CardValueMulti = 2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thundermare"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 5308
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005308-e936e5cb-0a8e-4348-afea-e5f96b19fe23.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 216
        D.BaseHealth = 503
        D.CardValueMulti = 1.7
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Blinding Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 5309
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005309-48c25553-6554-4e31-9012-c50da1f0a171.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 112
        D.BaseHealth = 431
        D.CardValueMulti = 1.8
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Serra Avatar"
        D.Description = "A soul so bright it becomes a body."
        D.CardID = 5310
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005310-288b0976-78e8-4fbe-8607-2e55d8761d3e.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 538
        D.CardValueMulti = 2.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Sun Quan, Lord of Wu"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 5311
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005311-6def4492-3f67-4cdb-8a25-c3ddebd125c7.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 204
        D.BaseHealth = 398
        D.CardValueMulti = 1.85
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mogg Fanatic"
        D.Description = "It carries old fire in its wake."
        D.CardID = 5312
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005312-ca2ecfd4-c874-4468-8601-87aa110d5a00.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 59
        D.BaseHealth = 180
        D.CardValueMulti = 2.01
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Karmic Guide"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 5313
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005313-77d23045-905b-44cb-9af9-cc6ad717477d.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 124
        D.BaseHealth = 274
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Gargantuan Gorilla"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 5314
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005314-49f367c2-f47e-43e1-9936-4324be664475.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 650
        D.CardValueMulti = 1.29
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Vexing Beetle"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 5315
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005315-d599d35f-1b73-498b-9a21-831c908a95d8.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 132
        D.BaseHealth = 445
        D.CardValueMulti = 1.66
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Copper Gnomes"
        D.Description = "A small machine with a stubborn spark."
        D.CardID = 5316
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005316-d5e326b7-6f6a-4249-a315-c5f017931c73.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 101
        D.BaseHealth = 129
        D.CardValueMulti = 1.67
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Selenia, Dark Angel"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 5317
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005317-9c1624f7-8275-46d3-ab7e-7b162e27593f.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 149
        D.BaseHealth = 342
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lightning Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 5318
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005318-6518d0c5-58ee-4089-bf19-5030d4319681.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 130
        D.BaseHealth = 458
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lu Su, Wu Advisor"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 5319
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005319-9d361823-31ce-42c4-997d-3d3b52c0599a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 84
        D.BaseHealth = 275
        D.CardValueMulti = 1.8
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Craw Wurm"
        D.Description = "The earth opens when hunger calls."
        D.CardID = 5401
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005401-1a2e6afb-7094-4fa3-9246-58343f8d80b8.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 231
        D.BaseHealth = 614
        D.CardValueMulti = 1.32
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hypnotic Specter"
        D.Description = "A midnight rider stealing thoughts from the air."
        D.CardID = 5402
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005402-b5900350-be08-4904-8f1b-cc180ed08485.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 107
        D.BaseHealth = 274
        D.CardValueMulti = 1.41
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Shivan Wurm"
        D.Description = "The earth opens when hunger calls."
        D.CardID = 5403
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005403-4bc72997-78b0-47aa-a029-bf55f77c3e73.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 280
        D.BaseHealth = 636
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Woolly Mammoths"
        D.Description = "A gentle giant until the charge begins."
        D.CardID = 5404
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005404-eaca1216-99c8-4ad5-a51a-3c4ff3b82097.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 146
        D.BaseHealth = 250
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thorn Elemental"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 5405
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005405-e06bea52-3db1-4b61-8418-77ace9cd70b5.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 267
        D.BaseHealth = 854
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Karn, Silver Golem"
        D.Description = "Silver hands, ancient heart, endless memory."
        D.CardID = 5406
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005406-811a0988-2900-426c-9413-8f1778d99678.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 164
        D.BaseHealth = 585
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Royal Assassin"
        D.Description = "One quiet step is all it needs."
        D.CardID = 5407
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005407-b2d51bdf-f118-4a1e-9060-bdf3c78697f2.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 68
        D.BaseHealth = 225
        D.CardValueMulti = 1.37
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Revered Unicorn"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 5408
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005408-8c642dd2-1a3e-4b08-917e-6e8aed358b72.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 97
        D.BaseHealth = 346
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Nightmare"
        D.Description = "Thunder follows its hooves."
        D.CardID = 5409
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005409-c3779fda-5de0-4d80-8af0-95956e87d9e1.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 206
        D.BaseHealth = 552
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Two-Headed Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 5410
        D.Gen = 4
        D.TexturePath = dir .. "images/cards/005410-40fed2c7-c922-41c3-b86b-a8ed41a1308d.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 226
        D.BaseHealth = 393
        D.CardValueMulti = 1.53
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thalakos Sentry"
        D.Description = "The tide bends quietly around it."
        D.CardID = 6101
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006101-739a13d6-5f73-4166-b923-9db8ee3f2cf7.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 120
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mesmeric Fiend"
        D.Description = "Something from the dark learned how to hunt."
        D.CardID = 6102
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006102-b6edd4ea-c587-4d93-a675-4cdec3e0b1ca.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 48
        D.BaseHealth = 116
        D.CardValueMulti = 1.01
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Balduvian Shaman"
        D.Description = "The tide bends quietly around it."
        D.CardID = 6103
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006103-74859723-8ddf-4ee6-a0a7-87192c84e8ad.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 101
        D.CardValueMulti = 1.03
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Standard Bearer"
        D.Description = "The forest gives warning before it gives chase."
        D.CardID = 6104
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006104-e0f8e16a-55f0-4147-a01a-dba7938f31c4.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 49
        D.BaseHealth = 113
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Razorfin Hunter"
        D.Description = "A song from below the waves answers back."
        D.CardID = 6105
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006105-99829552-917a-4373-9772-4255dff542d6.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 49
        D.BaseHealth = 117
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Frozen Shade"
        D.Description = "A knight of darkness, sharpened by moonless nights."
        D.CardID = 6106
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006106-cbd0b4ff-f49f-4079-991a-f66d1220235d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 22
        D.BaseHealth = 120
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Corpses"
        D.Description = "It does not chase. It does not need to."
        D.CardID = 6107
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006107-dde6d3d1-75db-445f-9f17-632ee0292211.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 20
        D.BaseHealth = 120
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ascending Aven"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 6108
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006108-bd8b17df-615c-4cc1-af1a-2fc35a985af9.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Benalish Hero"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 6109
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006109-32dcd608-ef94-4047-841d-5c3471375d5d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 108
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Coalition Honor Guard"
        D.Description = "The forest gives warning before it gives chase."
        D.CardID = 6110
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006110-c5b7be3e-b4af-46d4-bcc6-b44c651f2012.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Glimmering Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 6111
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006111-f14f55e4-eded-4a86-87f4-b8fa6f30bc0f.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.11
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Mountaineer"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6112
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006112-66a072ec-717c-453e-a331-49056e3d917d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 45
        D.BaseHealth = 105
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Treetop Scout"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6113
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006113-2fa39646-a609-4b37-b8de-97893ae43c49.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 103
        D.CardValueMulti = 1.13
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pygmy Pyrosaur"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6114
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006114-42e01129-254c-4a16-9f11-21a7a9c66f32.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 49
        D.BaseHealth = 113
        D.CardValueMulti = 1.08
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Heart Sliver"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6115
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006115-27a83ab6-0d15-49e4-90e3-b3a2a095c632.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 48
        D.BaseHealth = 116
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Laccolith Whelp"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 6116
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006116-86eb5b9e-320f-40de-8668-ee0c08f63ec1.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 45
        D.BaseHealth = 98
        D.CardValueMulti = 1.16
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Metallic Sliver"
        D.Description = "A relic from an age that trusted metal with miracles."
        D.CardID = 6117
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006117-30143f4f-9846-448d-8797-8fe0bc0cc5df.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 58
        D.BaseHealth = 89
        D.CardValueMulti = 1.17
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Vapor"
        D.Description = "It does not chase. It does not need to."
        D.CardID = 6118
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006118-309c1b2a-0230-4b66-84a0-32b8cd6d31eb.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 39
        D.BaseHealth = 120
        D.CardValueMulti = 1.13
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kjeldoran Warrior"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 6119
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006119-ce76f38f-566e-49ff-b197-510cfa1cb51c.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 62
        D.BaseHealth = 86
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phyrexian War Beast"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 6120
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006120-e7a83384-8762-4028-8cab-b690593790a6.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.14
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Aesthir Glider"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 6121
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006121-35a8080f-ca3c-46fe-81cf-003ac7ba7f24.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 116
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Roterothopter"
        D.Description = "A blade-winged relic of old machinery."
        D.CardID = 6123
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006123-22148a1a-2172-4718-8ee4-08770eafed9f.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 21
        D.BaseHealth = 120
        D.CardValueMulti = 1.17
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Orcish Lumberjack"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6124
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006124-21ef13e3-658c-43a3-a290-4c5dde8e8b55.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 51
        D.BaseHealth = 103
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Stormscape Familiar"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 6125
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006125-4c831c42-77a0-4f4f-9628-ad630541cf66.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 46
        D.BaseHealth = 112
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Argothian Pixies"
        D.Description = "Small wings, sharp tricks, no apologies."
        D.CardID = 6126
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006126-78276d53-7c01-45b4-a136-a9f3674e1f26.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 104
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Chariot"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6127
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006127-f7571801-c1df-4387-ae61-1fefd449ebf9.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Tombstones"
        D.Description = "It does not chase. It does not need to."
        D.CardID = 6201
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006201-55da1e86-fe18-486a-b510-f941e6f6e378.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 18
        D.BaseHealth = 120
        D.CardValueMulti = 1.13
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Volunteer Reserves"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 6202
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006202-5344911f-25e8-45ce-87b9-607e42db0139.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 83
        D.BaseHealth = 220
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Fleeting Aven"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 6203
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006203-246a2758-0096-43b9-8193-d6ae5b41b6e6.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 87
        D.BaseHealth = 199
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Viseling"
        D.Description = "Built long ago, still obeying."
        D.CardID = 6204
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006204-a3eb86c5-d6fe-4dde-ad07-c3109b3a1611.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 92
        D.BaseHealth = 212
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rainbow Crow"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 6205
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006205-7e622ad2-473f-489e-b4cf-bbdcc44d0cde.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 93
        D.BaseHealth = 216
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wirewood Hivemaster"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6206
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006206-ea55b4fc-366f-4906-9eaa-9085f6a22612.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 46
        D.BaseHealth = 129
        D.CardValueMulti = 1.18
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Millikin"
        D.Description = "Built long ago, still obeying."
        D.CardID = 6207
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006207-0550133b-22cf-4ecd-b89a-8c2f0beeaa22.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 15
        D.BaseHealth = 128
        D.CardValueMulti = 1.19
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Chambered Nautilus"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 6208
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006208-860c613d-d031-4c2a-922b-39f4eec04e18.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 88
        D.BaseHealth = 196
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Balshan Beguiler"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 6209
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006209-5d977da2-4024-4c7b-b557-e89564f8d465.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 55
        D.BaseHealth = 130
        D.CardValueMulti = 1.21
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Derelor"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 6301
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006301-530043ad-d4bf-4fb0-b6e0-f8a744968cfc.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 162
        D.BaseHealth = 498
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Abyssal Specter"
        D.Description = "A whisper from the grave with hands of shadow."
        D.CardID = 6302
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006302-a7e6582d-e569-4131-b212-3ef1767be107.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 102
        D.BaseHealth = 363
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "River Boa"
        D.Description = "A silent coil of hunger and patience."
        D.CardID = 6303
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006303-fff58d35-eb23-47ee-9b8c-6919ad1a413a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 92
        D.BaseHealth = 206
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Bottle Gnomes"
        D.Description = "A small machine with a stubborn spark."
        D.CardID = 6304
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006304-645297d1-ee77-4879-83eb-8114fbabb9a4.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 73
        D.BaseHealth = 323
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Steel)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ophidian"
        D.Description = "A silent coil of hunger and patience."
        D.CardID = 6305
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006305-0de0a010-76a7-460f-bb4e-a152c10c3bb7.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 59
        D.BaseHealth = 404
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ambush Commander"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6306
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006306-7485da91-a051-4680-8a25-c81fdaa77130.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 106
        D.BaseHealth = 326
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rofellos, Llanowar Emissary"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 6307
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006307-6aa5cc65-f8f1-4f6f-8b4e-2fedccbda684.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 84
        D.BaseHealth = 322
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ayesha Tanaka"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 6308
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006308-8ce912d9-406b-4eba-97be-3bf1d425ee05.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 93
        D.BaseHealth = 422
        D.CardValueMulti = 2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dreamborn Muse"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 6309
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006309-9e36cf11-5dfb-4593-8335-f739b7c7829c.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 107
        D.BaseHealth = 282
        D.CardValueMulti = 1.7
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lin Sivvi, Defiant Hero"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 6310
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006310-e574e522-2632-4cd4-8545-c582ac3b641f.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 72
        D.BaseHealth = 334
        D.CardValueMulti = 1.66
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Menacing Ogre"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6311
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006311-5360a871-6932-45b2-bc94-1bd414e38906.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 137
        D.BaseHealth = 403
        D.CardValueMulti = 1.7
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Quirion Ranger"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6312
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006312-56efe72c-6d7f-44f6-ac74-01af9305c4b6.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 58
        D.BaseHealth = 182
        D.CardValueMulti = 1.69
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Elvish Champion"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6313
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006313-61d00f31-d8fd-4272-87ba-6bcb65c609c6.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 107
        D.BaseHealth = 255
        D.CardValueMulti = 1.75
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Fleeting Image"
        D.Description = "It is real enough when the blade lands."
        D.CardID = 6314
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006314-35971a15-7d8f-4b05-918e-605a26a11f4c.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 114
        D.BaseHealth = 169
        D.CardValueMulti = 1.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Priest of Titania"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6315
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006315-965c33c3-0c68-4516-b8b0-5a0552ed44b6.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 80
        D.BaseHealth = 150
        D.CardValueMulti = 2.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tribal Forcemage"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 6316
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006316-104735d7-6cea-4d4a-8cc8-e1934883da97.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 84
        D.BaseHealth = 146
        D.CardValueMulti = 2.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "River Merfolk"
        D.Description = "A song from below the waves answers back."
        D.CardID = 6317
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006317-27d7fa54-4b89-4a9a-b088-4b89c525c1ea.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 109
        D.BaseHealth = 171
        D.CardValueMulti = 2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thalakos Drifters"
        D.Description = "The tide bends quietly around it."
        D.CardID = 6318
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006318-468e13d2-6bd7-403c-8e2e-e00917b39597.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 129
        D.BaseHealth = 414
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Copper-Leaf Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 6319
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006319-7be413dd-d6e0-4bd3-8c14-4dbe44e8ee41.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 98
        D.BaseHealth = 480
        D.CardValueMulti = 1.6
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wayward Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 6320
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006320-1fb726e8-162d-4143-9778-32476c0e1ab1.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 184
        D.BaseHealth = 431
        D.CardValueMulti = 2.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Lavaborn Muse"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 6321
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006321-4cbc94fb-9e3f-4075-bb6a-8f04862dc585.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 151
        D.BaseHealth = 347
        D.CardValueMulti = 1.85
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Matron"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6322
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006322-862409e1-33e0-474c-8627-b03d25b654b9.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 82
        D.BaseHealth = 194
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Meddling Mage"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 6323
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006323-176f84c6-aa5e-449c-bd2b-cc91a898f0c7.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 102
        D.BaseHealth = 264
        D.CardValueMulti = 1.55
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spike Weaver"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 6401
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006401-9c561a2a-91c6-4d4b-9f96-bffd43a00478.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 40
        D.BaseHealth = 216
        D.CardValueMulti = 1.08
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Maro"
        D.Description = "Raw magic walking on borrowed legs."
        D.CardID = 6402
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006402-b4c3853c-8b41-4bce-b4e0-3824fc5888c4.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 158
        D.BaseHealth = 478
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ravenous Baloth"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 6403
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006403-c98182d6-5b25-4493-9286-f29633e1bec4.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 172
        D.BaseHealth = 447
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tradewind Rider"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 6404
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006404-09412374-3645-4644-952e-2beaefb3104b.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 87
        D.BaseHealth = 416
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Polar Kraken"
        D.Description = "The sea keeps its largest secret for last."
        D.CardID = 6405
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006405-aee01e9c-0445-4228-a73a-3e5744844ed3.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 320
        D.BaseHealth = 950
        D.CardValueMulti = 1.17
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Giant Octopus"
        D.Description = "Eight arms, one patient mind."
        D.CardID = 6406
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006406-5b707b2d-63e1-4c2c-ba42-9e027f02b1ff.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 139
        D.BaseHealth = 380
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ali from Cairo"
        D.Description = "It carries old fire in its wake."
        D.CardID = 6407
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006407-42027613-d261-4ce2-8ba1-7a2480c660f8.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 48
        D.BaseHealth = 212
        D.CardValueMulti = 1.31
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Zodiac Dragon"
        D.Description = "Old wings, hot breath, and a name that survives every age."
        D.CardID = 6408
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006408-46652ae3-6572-4296-939b-0789923180d5.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 310
        D.BaseHealth = 948
        D.CardValueMulti = 1.31
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Blossoms"
        D.Description = "Green life with a will of its own."
        D.CardID = 6409
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006409-7eb4a1a3-efcf-4c9a-ad1f-0a3f8f2b456f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 40
        D.BaseHealth = 404
        D.CardValueMulti = 1.24
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Marjhan"
        D.Description = "The deep coils around an ancient hunger."
        D.CardID = 6410
        D.Gen = 5
        D.TexturePath = dir .. "images/cards/006410-b6aa3299-3b7a-4ea5-bc1f-beead26d8116.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 314
        D.BaseHealth = 767
        D.CardValueMulti = 1.33
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Krosan Wayfarer"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7101
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007101-5356e684-c2fc-465e-a16c-7300824d2a8d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 105
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Quirion Explorer"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7102
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007102-141a031d-f899-497b-adf7-4af142078085.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 50
        D.BaseHealth = 115
        D.CardValueMulti = 0.97
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Harvest Mage"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 7103
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007103-95b29329-b9a3-4d59-b0f8-2abc67337760.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 44
        D.BaseHealth = 108
        D.CardValueMulti = 0.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Elvish Pioneer"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7104
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007104-7e71fc2d-643b-4fad-89a8-624d330895d6.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 45
        D.BaseHealth = 106
        D.CardValueMulti = 0.99
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Diligent Farmhand"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7105
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007105-7bb40e09-6855-46d5-9bc9-bc6b2b0d7653.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 42
        D.BaseHealth = 105
        D.CardValueMulti = 1.01
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Mistform Sliver"
        D.Description = "It is real enough when the blade lands."
        D.CardID = 7106
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007106-79a53c29-6753-4f6b-b4ee-00c1adf7e9c6.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 61
        D.BaseHealth = 101
        D.CardValueMulti = 1.02
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Urborg Elf"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7107
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007107-1d8521bf-d026-4d26-831e-a2f253307c93.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 54
        D.BaseHealth = 117
        D.CardValueMulti = 1.03
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Crafty Pathmage"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 7108
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007108-c5d91378-f831-40ef-a79b-b044af1470e0.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 58
        D.BaseHealth = 120
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Metathran Soldier"
        D.Description = "The tide bends quietly around it."
        D.CardID = 7109
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007109-650d40d0-78ec-4b6e-8ea0-28d43ce175d5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 116
        D.CardValueMulti = 1.05
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Marsh Viper"
        D.Description = "A silent coil of hunger and patience."
        D.CardID = 7110
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007110-ba4c0606-f9af-4dee-bc36-5051395b5f44.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 70
        D.BaseHealth = 120
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wirewood Guardian"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7111
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007111-e8676b1f-e37c-4ae1-9dbe-d000369fa422.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spiketail Hatchling"
        D.Description = "A lesser dragon, still proud enough to scorch the sky."
        D.CardID = 7112
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007112-9988f0fe-a7d4-44f9-b37c-fa30014ea215.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 54
        D.BaseHealth = 113
        D.CardValueMulti = 1.08
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Taskmaster"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7113
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007113-feff65ca-aedf-4434-b701-590d600d1a0b.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 47
        D.BaseHealth = 105
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dream Fighter"
        D.Description = "The tide bends quietly around it."
        D.CardID = 7114
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007114-aec06bc9-553c-4e01-8b43-a4eeaa511b4d.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 61
        D.BaseHealth = 120
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pardic Swordsmith"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7115
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007115-44ac622c-db04-41bf-817e-4698843e6346.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 55
        D.BaseHealth = 120
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Bogardan Firefiend"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 7116
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007116-80ff9650-d25f-4c6b-b96e-794b50af3f14.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 90
        D.BaseHealth = 120
        D.CardValueMulti = 1.12
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Carrion Feeder"
        D.Description = "The grave forgot to keep this one."
        D.CardID = 7117
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007117-88042031-64af-4f84-85d5-95992b43aa6c.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 50
        D.BaseHealth = 96
        D.CardValueMulti = 1.13
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Gustcloak Runner"
        D.Description = "A thought becomes a weapon in its hands."
        D.CardID = 7118
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007118-eb227f65-9189-41ed-94a0-2aa21cad26f5.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 56
        D.BaseHealth = 92
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Goblin Patrol"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7119
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007119-d0fcd8d3-f159-49a1-8dd9-582ae4a0adc3.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 83
        D.BaseHealth = 94
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rogue Kavu"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7120
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007120-61e1a445-129d-4bb9-a8b0-3f55e3e0bc58.jpg"
        D.Rarity = UE.ECardRarity.Common
        D.BaseAttack = 60
        D.BaseHealth = 102
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Broodhatch Nantuko"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 7201
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007201-38315ba3-57a0-4aa0-b1bc-4b1fcdd763d4.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 55
        D.BaseHealth = 103
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thalakos Dreamsower"
        D.Description = "A name, a gesture, and reality changes course."
        D.CardID = 7202
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007202-d725cdc0-3a85-4722-bb13-40c336f511b6.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 73
        D.BaseHealth = 113
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Crypt Rats"
        D.Description = "Wild instinct guides every strike."
        D.CardID = 7203
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007203-f9b2f697-01cc-4610-b4aa-cae83b38647a.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 52
        D.BaseHealth = 134
        D.CardValueMulti = 1.01
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spiny Starfish"
        D.Description = "A bright shape moving under dark water."
        D.CardID = 7204
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007204-c4242dda-6078-481d-a068-e7b10c873b89.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 24
        D.BaseHealth = 130
        D.CardValueMulti = 1.04
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Vodalian Hypnotist"
        D.Description = "A song from below the waves answers back."
        D.CardID = 7205
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007205-721fd877-0a28-4002-8b47-058bac4ac44d.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 51
        D.BaseHealth = 121
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hyperion Blacksmith"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7206
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007206-44d499a9-fe7c-4a1a-9eb3-a7fd9f85ae08.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 92
        D.BaseHealth = 202
        D.CardValueMulti = 1.15
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Soulcatcher"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 7207
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007207-14d24d2f-699b-46d8-9353-45e6a67f99d2.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 62
        D.BaseHealth = 101
        D.CardValueMulti = 1.19
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Mulch"
        D.Description = "It does not chase. It does not need to."
        D.CardID = 7208
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007208-8b3b4448-50f0-4996-94a1-db9ce356d925.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 23
        D.BaseHealth = 220
        D.CardValueMulti = 1.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Elves of Deep Shadow"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7209
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007209-f395278e-6d74-4f35-af9d-21bad7b19763.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 52
        D.BaseHealth = 95
        D.CardValueMulti = 1.16
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Silver Erne"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 7210
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007210-685076cc-098c-4f98-918c-0ad825eda10f.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 98
        D.BaseHealth = 203
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Thunder Wall"
        D.Description = "It does not chase. It does not need to."
        D.CardID = 7211
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007211-4fc5d510-c4f7-4a09-bf86-83c3fa3f8928.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 28
        D.BaseHealth = 194
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Rock)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wonder"
        D.Description = "The tide bends quietly around it."
        D.CardID = 7212
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007212-44670666-9028-4b4a-a5af-a3bf35fc6a21.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 93
        D.BaseHealth = 211
        D.CardValueMulti = 1.06
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Warbreak Trumpeter"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7213
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007213-fc942957-1067-428c-8ee1-01f9e260efe1.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 47
        D.BaseHealth = 103
        D.CardValueMulti = 1.07
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Nimble Mongoose"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7214
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007214-99e5ecf5-a662-4df0-a6ba-9177c62b6503.jpg"
        D.Rarity = UE.ECardRarity.UnCommon
        D.BaseAttack = 45
        D.BaseHealth = 106
        D.CardValueMulti = 1.09
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Doomsday Specter"
        D.Description = "A whisper from the grave with hands of shadow."
        D.CardID = 7301
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007301-85206cc1-5484-40c6-b11d-b8d6fad4fc5c.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 100
        D.BaseHealth = 410
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Xira Arien"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 7302
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007302-21fa636b-8ce8-40b6-a4d0-3191a664bd92.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 79
        D.BaseHealth = 253
        D.CardValueMulti = 1.3
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Darigaaz, the Igniter"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 7303
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007303-54dcf5e3-4303-41a3-b54c-24a9d462ce07.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 547
        D.CardValueMulti = 1.6
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Arrogant Wurm"
        D.Description = "The earth opens when hunger calls."
        D.CardID = 7304
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007304-11b849c7-c91d-4c67-a357-f7d17f9b187a.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 172
        D.BaseHealth = 473
        D.CardValueMulti = 1.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Chicken à la King"
        D.Description = "A flash of wings over a changing battlefield."
        D.CardID = 7305
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007305-3fcefcab-8988-47e8-89bb-9b76f14c9d8b.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 104
        D.BaseHealth = 274
        D.CardValueMulti = 1.4
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Crosis, the Purger"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 7306
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007306-e5f336d8-12a4-482d-8ffd-c205858c72ba.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 589
        D.CardValueMulti = 1.73
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "B.F.M. (Big Furry Monster)"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 7307
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007307-a9f9c279-e382-4feb-9575-196e7cf5d7dc.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 220
        D.BaseHealth = 650
        D.CardValueMulti = 1.6
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Molten Hydra"
        D.Description = "It carries old fire in its wake."
        D.CardID = 7308
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007308-95234b29-9ac8-4200-b42d-9653ba51b010.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 76
        D.BaseHealth = 168
        D.CardValueMulti = 1.55
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rasputin Dreamweaver"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 7309
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007309-503256f8-3aab-49d0-b78b-6502aa29ce52.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 173
        D.BaseHealth = 282
        D.CardValueMulti = 1.8
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Gorilla Shaman"
        D.Description = "Old forest strength in a sudden charge."
        D.CardID = 7310
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007310-bf8b213e-31ca-4eb5-bf0b-515a0ad4fd31.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 60
        D.BaseHealth = 187
        D.CardValueMulti = 1.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Anavolver"
        D.Description = "Dark omens follow in its silence."
        D.CardID = 7311
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007311-5e685a8c-fba6-495f-ac0f-1ff5456b22d0.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 129
        D.BaseHealth = 444
        D.CardValueMulti = 1.54
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Canyon Drake"
        D.Description = "A lesser dragon, still proud enough to scorch the sky."
        D.CardID = 7312
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007312-22f84143-5912-43ca-a274-f26ed0dbadd0.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 116
        D.BaseHealth = 226
        D.CardValueMulti = 1.66
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Squee, Goblin Nabob"
        D.Description = "Trouble survives because trouble is stubborn."
        D.CardID = 7313
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007313-4ba8325a-1203-4125-9111-94d9e2b1f14b.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 97
        D.BaseHealth = 155
        D.CardValueMulti = 1.74
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Fallen Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 7314
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007314-612ecb2c-e732-40cc-9e92-d18b80a26c4c.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 160
        D.BaseHealth = 340
        D.CardValueMulti = 1.8
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Wall of Kelp"
        D.Description = "Green life with a will of its own."
        D.CardID = 7315
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007315-52ff5051-e24b-4453-aaae-ed4f2bf213ab.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 42
        D.BaseHealth = 309
        D.CardValueMulti = 1.89
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Zhao Zilong, Tiger General"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 7316
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007316-2d16cf1d-a7c3-4038-a648-299c1bedae99.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 164
        D.BaseHealth = 328
        D.CardValueMulti = 2.2
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Argothian Enchantress"
        D.Description = "An old legend pulled from a well-worn binder."
        D.CardID = 7317
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007317-9ababc1a-515e-4e20-8819-19d84d9b0af5.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 61
        D.BaseHealth = 145
        D.CardValueMulti = 1.98
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Asmira, Holy Avenger"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 7318
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007318-a7d64600-84fc-42a5-a6a6-b26f98fac0a4.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 137
        D.BaseHealth = 306
        D.CardValueMulti = 1.8
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ichorid"
        D.Description = "Something from the dark learned how to hunt."
        D.CardID = 7319
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007319-97431dca-54ca-47ef-ab00-943140e8e758.jpg"
        D.Rarity = UE.ECardRarity.Rare
        D.BaseAttack = 174
        D.BaseHealth = 162
        D.CardValueMulti = 1.95
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Waterspout Djinn"
        D.Description = "Ancient power bound to a dangerous wish."
        D.CardID = 7401
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007401-6946a75e-e9d1-4a56-86d1-dd81f7b1b125.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 166
        D.BaseHealth = 475
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Killer Whale"
        D.Description = "A living island beneath the surface."
        D.CardID = 7402
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007402-d932f6d3-4918-4a41-836c-4eaa6cfac049.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 151
        D.BaseHealth = 503
        D.CardValueMulti = 1.1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Deranged Hermit"
        D.Description = "Old roots answer when it stirs."
        D.CardID = 7403
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007403-bf0e94c9-61c4-4cc0-b5ce-db62bc2660ee.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 69
        D.BaseHealth = 358
        D.CardValueMulti = 1.45
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Serendib Efreet"
        D.Description = "Smoke, pride, and flame given form."
        D.CardID = 7404
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007404-019fb309-2cd1-4367-8a42-0295e9bbf552.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 120
        D.BaseHealth = 634
        D.CardValueMulti = 1.35
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "The Wretched"
        D.Description = "A bargain given claws and a smile."
        D.CardID = 7405
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007405-729f4543-79f3-4fe2-973f-fb2598045877.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 126
        D.BaseHealth = 484
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Exalted Angel"
        D.Description = "A bright omen descending from impossible heights."
        D.CardID = 7406
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007406-c2213eac-cea4-4dfd-90c4-c1f466967e2e.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 210
        D.BaseHealth = 474
        D.CardValueMulti = 1.25
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ball Lightning"
        D.Description = "A thunderclap that learned to charge."
        D.CardID = 7407
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007407-3ede7920-e219-4e9d-bfa5-e0f562460914.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 282
        D.BaseHealth = 142
        D.CardValueMulti = 1.31
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Anurid Brushhopper"
        D.Description = "Too wild to tame, too strong to ignore."
        D.CardID = 7408
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007408-b09204c7-3e3d-484a-a4f7-da1b818e3884.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 188
        D.BaseHealth = 353
        D.CardValueMulti = 1.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Avatar of Woe"
        D.Description = "An idea so powerful it grew a body."
        D.CardID = 7409
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007409-0f695405-7238-48fb-9ea2-1b1613a0afda.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 279
        D.BaseHealth = 520
        D.CardValueMulti = 1.36
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hammerhead Shark"
        D.Description = "The water parts for teeth."
        D.CardID = 7410
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007410-854627ab-38bd-4894-94d8-9ef51a57579c.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 129
        D.BaseHealth = 286
        D.CardValueMulti = 1.46
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Denizen of the Deep"
        D.Description = "The deep coils around an ancient hunger."
        D.CardID = 7411
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007411-95b00eca-065e-495e-947e-24eb79ffb1df.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 320
        D.BaseHealth = 950
        D.CardValueMulti = 1.43
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Venomous Dragonfly"
        D.Description = "Tiny wings, endless numbers."
        D.CardID = 7412
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007412-479fc902-ce94-4a6b-af87-4645387a46c6.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 90
        D.BaseHealth = 188
        D.CardValueMulti = 1.28
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Insect)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Pride of Lions"
        D.Description = "Grace, claws, and perfect timing."
        D.CardID = 7413
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007413-65c3274b-3eb0-450a-88bf-fb378e6cf94a.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 228
        D.BaseHealth = 376
        D.CardValueMulti = 1.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rainbow Efreet"
        D.Description = "Smoke, pride, and flame given form."
        D.CardID = 7414
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007414-1d6f03a6-3665-40e4-ae68-640913972770.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 187
        D.BaseHealth = 159
        D.CardValueMulti = 1.42
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Water)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Spectral Lynx"
        D.Description = "A restless echo wearing a shape for one more night."
        D.CardID = 7415
        D.Gen = 6
        D.TexturePath = dir .. "images/cards/007415-13099abe-721e-42b4-9666-9e6b5f1d75c9.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 121
        D.BaseHealth = 159
        D.CardValueMulti = 1.88
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Palladia-Mors"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9001
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009001-0ea81883-7cd6-4443-9733-39d25cc64328.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 282
        D.BaseHealth = 621
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Baron Sengir"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9002
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009002-51bdddac-02fc-493a-a0ea-689273252d7e.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 218
        D.BaseHealth = 481
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Akroma, Angel of Wrath"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9003
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009003-814245de-6105-43ef-acbf-d12d304b6331.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 250
        D.BaseHealth = 551
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Hazezon Tamar"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9004
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009004-17fc3a85-c6b9-4fd2-a6a2-d3210708e5ea.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 116
        D.BaseHealth = 399
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rith, the Awakener"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9005
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009005-c30be387-280d-49bd-a3d1-c1636ee931ce.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 241
        D.BaseHealth = 529
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Kamahl, Fist of Krosa"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9006
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009006-150d5229-b1a5-42cf-bf6a-04d246f1124f.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 177
        D.BaseHealth = 319
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Dakkon Blackblade"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9007
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009007-4874388e-0227-4b89-a986-d86c14482c81.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 194
        D.BaseHealth = 519
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Arcanis the Omnipotent"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9008
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009008-90865f52-c062-4505-a204-b4d7d4b3fc4c.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 231
        D.BaseHealth = 352
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Jeska, Warrior Adept"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9060
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009060-1cf96a59-8b7d-4a5b-adfd-17eeedd95db5.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 126
        D.BaseHealth = 170
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Fire)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Phage the Untouchable"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9061
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009061-a410b933-99d0-4383-b54b-4839a76eb6fe.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 174
        D.BaseHealth = 434
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Atalya, Samite Master"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9062
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009062-90500e7a-f76d-453a-bda0-d56d3f7c7534.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 97
        D.BaseHealth = 322
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Treva, the Renewer"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9063
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009063-4ee67039-6cee-4a2d-b973-570f5060f550.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 231
        D.BaseHealth = 558
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Commander Greven il-Vec"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9064
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009064-ab0ce69f-a259-4801-9ac3-f6754040434c.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 261
        D.BaseHealth = 488
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ertai, the Corrupted"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9065
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009065-66b950d9-8fef-4deb-b51b-26edb90abc56.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 124
        D.BaseHealth = 445
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Multani, Maro-Sorcerer"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9066
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009066-0d6cc98b-b376-40af-8308-198bab00b2b1.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 195
        D.BaseHealth = 530
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Johan"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9067
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009067-2f2f3b3e-63f3-4cab-aa95-030990157ed5.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 211
        D.BaseHealth = 404
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Barrin, Master Wizard"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9068
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009068-ec79e35f-9e78-462d-8b71-4f044e2eff90.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 117
        D.BaseHealth = 134
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Psychic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Balthor the Defiled"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9069
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009069-ed4cc273-adc3-4f46-9743-134b552d1d56.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 89
        D.BaseHealth = 293
        D.CardValueMulti = 1
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Volrath the Fallen"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9071
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009071-08bdd66e-9ca1-456e-a61c-7c96cf6f7c56.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 240
        D.BaseHealth = 422
        D.CardValueMulti = 6.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Animal)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Tsabo Tavoc"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9072
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009072-ccbe2539-7a7c-468b-a270-7ca1bdcccb1e.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 276
        D.BaseHealth = 434
        D.CardValueMulti = 6.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ascendant Evincar"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9073
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009073-e5c87c93-8cf4-4d1a-9bb8-349600da55bc.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 144
        D.BaseHealth = 352
        D.CardValueMulti = 6.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Ramses Overdark"
        D.Description = "Songs remember its name long after battles end."
        D.CardID = 9074
        D.Gen = 9
        D.TexturePath = dir .. "images/cards/009074-f079c74e-a39a-40f9-9c7e-9319c0c189c6.jpg"
        D.Rarity = UE.ECardRarity.SuperRare
        D.BaseAttack = 176
        D.BaseHealth = 352
        D.CardValueMulti = 6.5
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Mystic)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Chromium"
        D.Description = "A divine presence from an older world of magic."
        D.CardID = 100001
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/100001-e85e54f3-012b-460f-a6f9-d0242a174adc.jpg"
        D.Rarity = UE.ECardRarity.God
        D.BaseAttack = 316
        D.BaseHealth = 761
        D.CardValueMulti = 10
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Nicol Bolas"
        D.Description = "An elder mind with plans inside plans."
        D.CardID = 100002
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/100002-05362cde-3b0b-4a8d-9875-675cfac52e4a.jpg"
        D.Rarity = UE.ECardRarity.God
        D.BaseAttack = 316
        D.BaseHealth = 761
        D.CardValueMulti = 10
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Rorix Bladewing"
        D.Description = "A divine presence from an older world of magic."
        D.CardID = 100003
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/100003-7f2caba5-9f30-4b5e-833e-68c85a47ef7c.jpg"
        D.Rarity = UE.ECardRarity.God
        D.BaseAttack = 274
        D.BaseHealth = 597
        D.CardValueMulti = 10
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Dragon)
        R:RegisterCardData(D.CardID, D)
    end
    do
        local D = UE.FCardDataAll()
        D.Name = "Silvos, Rogue Elemental"
        D.Description = "A divine presence from an older world of magic."
        D.CardID = 100004
        D.Gen = 0
        D.TexturePath = dir .. "images/cards/100004-3e48715c-6ff7-4b0c-aa7e-a2c901215426.jpg"
        D.Rarity = UE.ECardRarity.God
        D.BaseAttack = 338
        D.BaseHealth = 597
        D.CardValueMulti = 10
        D.UseBigImage = true
        D.CardElementFaction:Add(UE.ECardElementFaction.Grass)
        R:RegisterCardData(D.CardID, D)
    end

    if MOD and MOD.Logger then MOD.Logger.LogScreen("[GenMTG] Loaded 449 MTG card replacements", 5,1,1,0,1) end
end

function M.OnInit()
    ApplyGenMTG()
end

return M
