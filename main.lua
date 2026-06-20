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
        -- Old: Sand Flame Dog
        -- Old description: Dogs that live in desert areas like hot and dry environments.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Flowstone Giant"
            D.Description = "Flowstone Giant leaves this sign: A red spark refuses to die."
            D.TexturePath = dir .. "images/cards/001101-46e8240a-d882-4f60-8960-1856284e04a0.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1102
        -- Old: Minite
        -- Old description: A herbivore with a gentle personality.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phantom Tiger"
            D.Description = "No one forgets Phantom Tiger when the past borrows a body."
            D.TexturePath = dir .. "images/cards/001102-32839296-e583-4f71-aa44-dbe16408665e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1103
        -- Old: Naughty Bear
        -- Old description: A species that has a lively personality and likes to live in groups.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Camel"
            D.Description = "The trail of Camel says it clearly: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/001103-e0078aa8-bfb8-43b0-a6b7-1991596c21e1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1104
        -- Old: Turabi
        -- Old description: A gentle hedgehog that lives by the pond.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elvish Scout"
            D.Description = "Elvish Scout leaves this sign: The road bends under its weight."
            D.TexturePath = dir .. "images/cards/001104-689cd2ed-be81-4769-a8ec-287946301396.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1105
        -- Old: Shock Bear
        -- Old description: Electric Bear doesn't like wearing clothes very much. He hates pants and T-shirts, but he doesn't dislike shoes and gloves.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Raging Goblin"
            D.Description = "Raging Goblin is known for one thing: lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/001105-657190fe-9c18-4134-a556-e081daff73cd.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1106
        -- Old: Mu Ti
        -- Old description: Bear living in water on arctic map.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arctic Merfolk"
            D.Description = "The trail of Arctic Merfolk says it clearly: the sea answers in song."
            D.TexturePath = dir .. "images/cards/001106-86369fe5-d86d-4f4c-8f3d-dedc174f2032.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1107
        -- Old: Electric Dog
        -- Old description: Angry dogs whose body hair becomes electrically charged when angry.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Hounds"
            D.Description = "Where Lightning Hounds goes, loyalty comes with teeth."
            D.TexturePath = dir .. "images/cards/001107-38c82a1d-5db1-4090-b446-cc5bc6dc811d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1108
        -- Old: Ice Cave Rat
        -- Old description: A herbivore that burrows in glaciers.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Plague Rats"
            D.Description = "Trainers whisper of Plague Rats: winter keeps close company."
            D.TexturePath = dir .. "images/cards/001108-c99fd75c-4b41-411f-92b0-ca3b220946b5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1109
        -- Old: Colorful Butterfly
        -- Old description: Small insects living in the forest.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Druid Lyrist"
            D.Description = "No one forgets Druid Lyrist when the swarm notices first."
            D.TexturePath = dir .. "images/cards/001109-e9923532-bc4f-44de-b963-d6914321c49a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1110
        -- Old: Amy Meow
        -- Old description: A cat that likes to eat fish, meat and rice. Because of its cute appearance, many humans keep it as a pet at home.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Patron of the Wild"
            D.Description = "Patron of the Wild leaves this sign: Claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/001110-7f7a0810-3970-454f-8381-700d6c6aefdc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1111
        -- Old: Ice Cave Otter
        -- Old description: A hairy creature that lives in ice caves and is said to sleep 20 hours a day.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Trained Pronghorn"
            D.Description = "Trained Pronghorn leaves this sign: Frost marks the path."
            D.TexturePath = dir .. "images/cards/001111-720ec745-226c-4211-974f-e04a4f9e1902.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1112
        -- Old: Weiwei Weasel
        -- Old description: A cunning creature that is good at climbing trees and has many tricks. Its attack method is to continuously throw spiked pine cones on the trees.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Taunting Elf"
            D.Description = "Taunting Elf is known for one thing: wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/001112-6b24af94-9632-47da-9bf3-e81bb743cd43.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1113
        -- Old: Le Songhu
        -- Old description: It is intelligent and has healing power. It can use various flowers and plants to make herbal dressings to help the animals in the forest heal.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pikemen"
            D.Description = "The trail of Pikemen says it clearly: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/001113-18243ac8-6097-4f2c-8064-3dab48038e4a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1114
        -- Old: Coius
        -- Old description: It is said that it comes from an alien planet and has great respect for its master, but is hostile to unfamiliar creatures.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hunter Sliver"
            D.Description = "No one forgets Hunter Sliver when a roar becomes weather."
            D.TexturePath = dir .. "images/cards/001114-ca9aea1a-6f50-4f66-9f36-2e214dce41b4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1115
        -- Old: Berry-tailed monkey
        -- Old description: The sleeping habits are similar to those of rabbits, gentle and timid. There is a pink berry on the tail.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wellwisher"
            D.Description = "Trainers whisper of Wellwisher: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/001115-be95ab7c-0e77-4293-aa48-ee54902a363f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1116
        -- Old: Bouncing Mouse
        -- Old description: Jump with both feet together, jumping high.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jackalope Herd"
            D.Description = "Jackalope Herd is known for one thing: the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/001116-cb80105c-d2c0-4f8c-9302-5e6152a60f54.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1117
        -- Old: Fucaolong
        -- Old description: A timid social creature, it feels safe in the shade of trees.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Daru Spiritualist"
            D.Description = "Daru Spiritualist leaves this sign: Wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/001117-18f26b88-cffc-47ed-a70a-7d704a32c8bb.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1118
        -- Old: Ye Pipi
        -- Old description: A hedgehog that can disguise itself as a plant.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Willow Dryad"
            D.Description = "Willow Dryad is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/001118-1def835b-aabb-4a9d-8fb9-460452de0d79.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1119
        -- Old: Gawuniao
        -- Old description: It lives on rock walls and comes out to hunt at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Viashino Sandscout"
            D.Description = "Trainers whisper of Viashino Sandscout: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/001119-12dd888a-ca98-44dd-a213-858c3539dc97.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1120
        -- Old: Big-eared monkey
        -- Old description: He is keenly aware of what is happening around him and is very timid.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tree Monkey"
            D.Description = "Trainers whisper of Tree Monkey: it leaps before doubt can catch it."
            D.TexturePath = dir .. "images/cards/001120-c60bbbf7-a005-4b4b-b8e4-e95bbb67f529.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1121
        -- Old: Curse Owl
        -- Old description: Birds with high intelligence use mysterious magic power to roll up wind walls to impede the movement of enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mtenda Lion"
            D.Description = "The trail of Mtenda Lion says it clearly: grace keeps its claws hidden."
            D.TexturePath = dir .. "images/cards/001121-cb05cf5b-2a0d-432a-b8e7-10335c2a18e8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1122
        -- Old: Tide otter
        -- Old description: Can read the memory of water flow, and often uses phantoms at night to make travelers get lost.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merfolk of the Pearl Trident"
            D.Description = "The trail of Merfolk of the Pearl Trident says it clearly: the sea answers in song."
            D.TexturePath = dir .. "images/cards/001122-a2e7d1a5-b8ad-48e8-9b54-3663310eca33.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1123
        -- Old: Chi Chu
        -- Old description: Use high temperatures to restructure matter and cook non-existent ingredients into energy for fighting.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cinder Crawler"
            D.Description = "Trainers whisper of Cinder Crawler: smoke follows every step."
            D.TexturePath = dir .. "images/cards/001123-a9406050-d76b-4569-a463-e21acaf84166.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1124
        -- Old: Explosive Jar Spirit
        -- Old description: It is formed from the residual gas of discarded gas tanks. The higher the pressure, the more dangerous it is.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Homarid"
            D.Description = "Trainers whisper of Homarid: dark omens gather quietly."
            D.TexturePath = dir .. "images/cards/001124-d6ffeab4-83b1-4414-ae72-e59a2354ea15.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1201
        -- Old: Rockhelm Lizard
        -- Old description: Lives in caves and has a hard helmet.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crashing Centaur"
            D.Description = "No one forgets Crashing Centaur when old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/001201-e1f3a32a-bfd2-4c31-a349-3e62a84c20e1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1202
        -- Old: Baidumon
        -- Old description: An amphibious fish with scaly wings on its back that spends most of its time in the water.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Willbender"
            D.Description = "Willbender leaves this sign: One word tilts the battle."
            D.TexturePath = dir .. "images/cards/001202-fb33b35b-33c9-4d59-9ed6-7ad40ea82cb0.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1203
        -- Old: Snow Fairy
        -- Old description: Appears in the forest in the early morning and can turn dew into ice crystals.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Voice of Law"
            D.Description = "Trainers whisper of Voice of Law: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/001203-daec52a4-02da-4bff-aff4-5247baed1326.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1204
        -- Old: Zhang Bobo
        -- Old description: The tentacles on the top of the head are actually hair.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Coral Fighters"
            D.Description = "Coral Fighters leaves this sign: A ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/001204-08f9dfa0-bdb3-4419-ae4b-cc394552af74.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1205
        -- Old: Kaqi Fox
        -- Old description: A friendly herbivore, good at using camouflage to avoid enemy attacks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Primordial Ooze"
            D.Description = "Primordial Ooze is known for one thing: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/001205-a53d8d6d-b8d3-4f71-a88a-5d639ce2925f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1206
        -- Old: Pan Xiaoda
        -- Old description: A panda with red pupils, good at boxing and kicking.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Defiant Vanguard"
            D.Description = "The trail of Defiant Vanguard says it clearly: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/001206-4c0bd267-59ec-41df-b0b7-37f6e6d6b073.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1207
        -- Old: Volcano Spider
        -- Old description: Spiders that live in volcanic areas can spit out scorching silk.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cinder Elemental"
            D.Description = "No one forgets Cinder Elemental when the world moves through it."
            D.TexturePath = dir .. "images/cards/001207-80b39056-2ee8-4cfd-acbd-ba99f74e788d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1208
        -- Old: Thunder Eagle
        -- Old description: The giant bird that soars in the storm only appears on extremely high peaks. Climbing enthusiasts have witnessed its appearance. It is said that it can reach a height of 7 meters.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Roc Hatchling"
            D.Description = "Trainers whisper of Roc Hatchling: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/001208-25857884-6bb7-4a8e-a08b-fa610af8a5c3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1209
        -- Old: Vampire Bat Dragon
        -- Old description: Ancient dragons living in swamps can secrete toxins from their teeth that can dissolve fat, meat and bones.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sengir Vampire"
            D.Description = "No one forgets Sengir Vampire when it smiles without warmth."
            D.TexturePath = dir .. "images/cards/001209-2308c0c4-7a78-4da8-8dd8-5b35b49a1896.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1210
        -- Old: White Batmon
        -- Old description: An ancient creature with low aggressiveness can use magic power to adjust the size of its body, ranging from a minimum of about 5 centimeters to a maximum of about 5 meters.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ovinomancer"
            D.Description = "Trainers whisper of Ovinomancer: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/001210-ae4f0988-4194-4481-a6b7-27753261174a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1211
        -- Old: Fever Lizard
        -- Old description: It is an omnivorous creature that has very strong adaptability and can live and hunt in magma, lakes, and on the ground.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Yavimaya Gnats"
            D.Description = "Where Yavimaya Gnats goes, small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/001211-9d8b7020-ca8f-4867-bc51-13d824daf154.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1212
        -- Old: Cryolophosaurus
        -- Old description: Living in extremely cold glacier areas, it can create sharp ice spikes in its body and spit out high-speed flying ice spikes from its mouth to pierce its opponents.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloudreach Cavalry"
            D.Description = "Cloudreach Cavalry leaves this sign: Winter keeps close company."
            D.TexturePath = dir .. "images/cards/001212-65680bda-b999-4c2a-99a8-b03287e00807.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1213
        -- Old: Young Cryolophosaurus
        -- Old description: An ancient dragon that lives in extremely cold glaciers, it can break ice by flapping its wings and make the ice fly out quickly.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Samite Archer"
            D.Description = "Samite Archer is known for one thing: winter keeps close company."
            D.TexturePath = dir .. "images/cards/001213-07a262d7-6d0c-43d0-89b6-9f46a1a9eb69.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1214
        -- Old: Electrical package
        -- Old description: A toaster awakened by an abnormal current will cry and bake electrified bread.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spined Sliver"
            D.Description = "Trainers whisper of Spined Sliver: the next spark knows where to land."
            D.TexturePath = dir .. "images/cards/001214-9a8a9442-7b08-4cc8-94ec-bddb8feab1a8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1215
        -- Old: Crash and cracked screen
        -- Old description: The screen propagates glitches, often causing electronic devices close to it to crash out of control.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Undead Warchief"
            D.Description = "Undead Warchief leaves this sign: Old bones remember the road."
            D.TexturePath = dir .. "images/cards/001215-e6b3bcfe-be82-458b-ba59-ecb84436d747.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1216
        -- Old: Dan Fist Lamp Dou
        -- Old description: When the red light lights up, it enters combat mode and will automatically lock on to the moving target.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ornithopter"
            D.Description = "Trainers whisper of Ornithopter: a relic cuts the air."
            D.TexturePath = dir .. "images/cards/001216-09c6ac8a-01b1-4af5-89d8-ad66d9a81ceb.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1301
        -- Old: Mine Eye King
        -- Old description: The ore on his back represents his identity.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Emperor Crocodile"
            D.Description = "The trail of Emperor Crocodile says it clearly: stone remembers the impact."
            D.TexturePath = dir .. "images/cards/001301-9ccba208-1e24-45bb-a556-a3eb936efb10.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1302
        -- Old: Desmo
        -- Old description: A blood-sucking creature that haunts the night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Callous Oppressor"
            D.Description = "No one forgets Callous Oppressor when eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/001302-b3dd3ce7-e0e3-4412-9983-ff933584f59b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1303
        -- Old: Fire Pattern Wolf
        -- Old description: has a tattoo of fire on his back
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kird Ape"
            D.Description = "Trainers whisper of Kird Ape: old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/001303-c88e9802-4066-453e-b246-96b6245d21fe.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1304
        -- Old: Mountain Dew Dragon
        -- Old description: An aquatic dragon that likes to glide quickly on the waves.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pallimud"
            D.Description = "The trail of Pallimud says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/001304-61adc314-cfb2-4fdd-925c-cc1dc4692992.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1305
        -- Old: Youyoudie
        -- Old description: A butterfly with mysterious patterns on its body.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Forgotten Ancient"
            D.Description = "Forgotten Ancient is known for one thing: the world moves through it."
            D.TexturePath = dir .. "images/cards/001305-49d3b91d-2e4f-4574-89f8-7b804f1d21bf.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1306
        -- Old: Flamingo
        -- Old description: It is said that there is an eternal fire in the body, which will be passed on to future generations.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pyre Zombie"
            D.Description = "Trainers whisper of Pyre Zombie: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/001306-6c030108-2995-4fb0-9b80-efdfdd0f11e0.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1307
        -- Old: Troublemaker
        -- Old description: A beast that likes to come out at night, be careful to be discovered by it.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Savannah Lions"
            D.Description = "Where Savannah Lions goes, grace keeps its claws hidden."
            D.TexturePath = dir .. "images/cards/001307-a2ee9127-d007-48e8-b797-88ef72bc7c8b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1308
        -- Old: Frozen Dragon
        -- Old description: Being in an extremely cold place, everything can be frozen.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Eternal Dragon"
            D.Description = "Eternal Dragon is known for one thing: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/001308-0596928c-2b20-4dbb-aa78-3ab6c3ce0d72.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1309
        -- Old: Magnetic Beetle
        -- Old description: Group movement will form a swarm of insects and use electromagnetic force to attack together.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urza's Avenger"
            D.Description = "Trainers whisper of Urza's Avenger: old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/001309-60bd9559-1a8f-47d0-af6b-d0681cae4060.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1310
        -- Old: Attack the Demon
        -- Old description: He is good at launching attacks from the air and has super explosive power.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Piledriver"
            D.Description = "Where Goblin Piledriver goes, smoke follows every step."
            D.TexturePath = dir .. "images/cards/001310-f6c4df1f-f148-42ec-8e22-e7114216927d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1311
        -- Old: Rainbow cat fish
        -- Old description: An elegant and agile dreamlike amphibious creature.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merfolk Looter"
            D.Description = "No one forgets Merfolk Looter when the sea answers in song."
            D.TexturePath = dir .. "images/cards/001311-4ec07b20-9768-4c21-90d5-70d57959c698.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1312
        -- Old: Bubu
        -- Old description: Its wings can fan out cold wind.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Knight"
            D.Description = "Kjeldoran Knight is known for one thing: honor wears a sharpened edge."
            D.TexturePath = dir .. "images/cards/001312-d5b9db8f-93b5-44e3-9e2b-728c80dfbb37.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1313
        -- Old: Thunder Bear
        -- Old description: An energetic bear-shaped creature that likes to compete with people in the playground by wearing special sneakers and sprinting 100 meters.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bomb Squad"
            D.Description = "Trainers whisper of Bomb Squad: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/001313-8e9535a5-29ea-4085-a36b-4905d85e97ac.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1314
        -- Old: Cloud Demon
        -- Old description: The laughter of the cloud demons is very similar to the sound of thunder, and they will bring lightning and rain to Halloween night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thundercloud Elemental"
            D.Description = "The trail of Thundercloud Elemental says it clearly: something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001314-597aea42-43e0-41ed-bfe7-fc92b6b8e680.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1315
        -- Old: Ghost Lantern
        -- Old description: Can transform into a ghost disguised as a lamp, and suddenly change back to its original form, which is shocking.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Will-o'-the-Wisp"
            D.Description = "No one forgets Will-o'-the-Wisp when a candle flickers with no hand nearby."
            D.TexturePath = dir .. "images/cards/001315-583ef317-8105-4917-ba3c-93de3eebd944.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1316
        -- Old: Poison Miasma
        -- Old description: A fungus that emerges from the soil on Halloween night and releases a foul odor that causes hallucinations.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mold Demon"
            D.Description = "Mold Demon leaves this sign: A shadow crosses and stays."
            D.TexturePath = dir .. "images/cards/001316-649a33aa-7eac-4161-ae1a-fcbc758abccf.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1317
        -- Old: So cute
        -- Old description: Beloved by children, the Halloween ghost scares everyone except children and the elderly with its magical flashes.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skulking Ghost"
            D.Description = "No one forgets Skulking Ghost when something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001317-f8ca7e96-0545-4f36-85c0-944d5c0b760a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1318
        -- Old: Shadow Ghost
        -- Old description: The ghost that lurks in the shadows and follows people can move freely between different shadows. The bigger the shadow, the stronger its power.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Guiltfeeder"
            D.Description = "Trainers whisper of Guiltfeeder: something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001318-e2e9af4e-bd02-4d91-898f-68d192446904.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1319
        -- Old: Pumpkin Head
        -- Old description: It is said that a magician carved a pumpkin and cast a spell to create a ghost. It can fly in the air, but its magic power is actually low and there is no threat.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Headless Horseman"
            D.Description = "The trail of Headless Horseman says it clearly: the mask smiles after midnight."
            D.TexturePath = dir .. "images/cards/001319-d1aa37c8-98fa-4984-b09b-cf65ad84e97b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1320
        -- Old: Felfire Bat
        -- Old description: A monster with devilish legs and a will-o'-the-wisp on its head will add a gloomy and terrifying atmosphere to the Halloween night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sengir Bats"
            D.Description = "No one forgets Sengir Bats when something old waits behind the grin."
            D.TexturePath = dir .. "images/cards/001320-3c745c2c-4311-412d-a137-02bf6d106e46.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1321
        -- Old: Giant Mouth Demon
        -- Old description: It is said that he is the scariest guy on Halloween. He likes to suddenly jump down from the roof and land on people's shoulders or heads.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lord of the Pit"
            D.Description = "The trail of Lord of the Pit says it clearly: the mask smiles after midnight."
            D.TexturePath = dir .. "images/cards/001321-3b4c083f-d619-4913-aa7b-d345e3bdb1c4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1322
        -- Old: Baijiaoling
        -- Old description: A ghost that mutated from White Pepper, the broken shackles on his hands came from his previous master.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Shivan Dragon"
            D.Description = "Old wings, hot breath, and a throne of smoke."
            D.TexturePath = dir .. "images/cards/001322-7fec2b71-8fa9-4818-9c4f-5d2dcd2af495.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1323
        -- Old: Xiaogu
        -- Old description: The successor of the King of the Bone Army, although still relatively weak now, will grow into a reliable leader of the Bone Army in the future.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Juzám Djinn"
            D.Description = "A dangerous wish with a giant's shadow."
            D.TexturePath = dir .. "images/cards/001323-31bf3f14-b5df-498b-a1bb-965885c82401.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1324
        -- Old: Bag Fist
        -- Old description: The essence of kangaroo boxing is to attack with fast punches and at the same time seize the opportunity to kick him!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jackal Pup"
            D.Description = "Jackal Pup is known for one thing: wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/001324-3707ab74-9aec-4d30-86e0-ffa5f72d5b4f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1325
        -- Old: Lantern Hat Forest Demon
        -- Old description: It looks scary, but it is actually very kind and will illuminate a warm light at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Timber Wolves"
            D.Description = "Timber Wolves leaves this sign: Green strength gathers quietly."
            D.TexturePath = dir .. "images/cards/001325-d8f84fc8-69b4-4756-9634-4d6c17ec88a1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1326
        -- Old: Berry Deer
        -- Old description: This kind of fawn is popular because of its petite body.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wild Mongrel"
            D.Description = "Wild Mongrel leaves this sign: Loyalty comes with teeth."
            D.TexturePath = dir .. "images/cards/001326-5bb8dd5c-a79a-4afc-80b2-64645bb17a34.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1327
        -- Old: Dream hat is stupid
        -- Old description: became popular due to a photo on the Internet, and many artists and Internet celebrities came to take photos.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Guiding Spirit"
            D.Description = "Trainers whisper of Guiding Spirit: hope descends with a blade."
            D.TexturePath = dir .. "images/cards/001327-5f96d184-0ef8-40f7-98bc-bd4c53c57072.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1328
        -- Old: Smoke Stove Dummy
        -- Old description: Can be switched to a fireplace form, just like a normal fireplace with a chimney.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Avian"
            D.Description = "No one forgets Clockwork Avian when a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/001328-4a92484b-064c-4588-a1ea-6de8fd485ca4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1329
        -- Old: Sew even puff puff
        -- Old description: After the forgotten old doll wakes up, it will wander along the memory of the discarded doll.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nether Shadow"
            D.Description = "The trail of Nether Shadow says it clearly: a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/001329-b0877527-6dbe-49f2-862f-5c79e66a92e9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1330
        -- Old: Heart-wrenching couple
        -- Old description: Stitched by unanswered wishes, the knots contain lost prayers.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Black Knight"
            D.Description = "The trail of Black Knight says it clearly: an old oath rides in steel."
            D.TexturePath = dir .. "images/cards/001330-a03b6221-2c85-44c0-82f1-b2b9e2c83c80.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1331
        -- Old: Unicycle Zhenhu
        -- Old description: Enjoys the challenge of stairs, ramps, and pipes, dragging out blue arcs as you move.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Warping Wurm"
            D.Description = "No one forgets Warping Wurm when the ground opens for its hunger."
            D.TexturePath = dir .. "images/cards/001331-a2c41d0f-f1db-4797-b245-7de12ffa3a0d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1401
        -- Old: Different pupils
        -- Old description: The terrifying deep-sea shellfish.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vesuvan Doppelganger"
            D.Description = "No one forgets Vesuvan Doppelganger when old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/001401-92808879-895f-4e65-854c-2c92f170a1e3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1402
        -- Old: Flame-feathered owl
        -- Old description: Shoots flaming sharp feathers to burn the opponent.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Firestorm Phoenix"
            D.Description = "Trainers whisper of Firestorm Phoenix: ash is only a pause."
            D.TexturePath = dir .. "images/cards/001402-3247a7dd-f48c-4cb4-8475-4864acccef7a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1403
        -- Old: Mind Reading Cat
        -- Old description: Can use the power of mind to read the inner thoughts of other creatures.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mirri, Cat Warrior"
            D.Description = "The old stories keep a place for Mirri, Cat Warrior."
            D.TexturePath = dir .. "images/cards/001403-6d1682dd-5a99-4bee-a2c2-c8735047e1a9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1404
        -- Old: Fist Emperor Ape
        -- Old description: Although it is called the King of Fighters, its ultimate move is actually to kick out dust with its strong legs and feet.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gorilla Titan"
            D.Description = "Where Gorilla Titan goes, the trees shake first."
            D.TexturePath = dir .. "images/cards/001404-435d9562-8f2b-43fe-ba21-8f5896378280.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1405
        -- Old: Flame Pincher
        -- Old description: Cut apart opponents while flying at high speed, leaving gorgeous flame trails in the sky.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fire Drake"
            D.Description = "No one forgets Fire Drake when it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/001405-8b94218b-26d7-40cd-aef7-0e2415d1551f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1406
        -- Old: Crystal Gear
        -- Old description: General-purpose robots in ancient technological facilities have many functions and are the link between robot groups.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tetravus"
            D.Description = "The trail of Tetravus says it clearly: built long ago, still obeying."
            D.TexturePath = dir .. "images/cards/001406-49c1a2b2-50f0-4ed0-bd8f-06cd6aada04f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1407
        -- Old: Dark Shark
        -- Old description: Can control water flow to perform sharp slashes or powerful blows
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Shark"
            D.Description = "Giant Shark is known for one thing: a fin cuts through silence."
            D.TexturePath = dir .. "images/cards/001407-53ec4a19-0f2f-4713-a869-58832484648d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 1408
        -- Old: Voltage Turing
        -- Old description: A mechanical Pokémon awakened by an abnormal power grid will connect to the power grid to control mechanical equipment.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Triskelion"
            D.Description = "Triskelion is known for one thing: built long ago, still obeying."
            D.TexturePath = dir .. "images/cards/001408-09294401-a895-4084-8302-196a946863d6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2101
        -- Old: Seedstealing Beast
        -- Old description: likes to sneak in and steal various seeds.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rogue Elephant"
            D.Description = "Trainers whisper of Rogue Elephant: the charge changes the map."
            D.TexturePath = dir .. "images/cards/002101-1b622b2f-84ad-4203-97fa-35af09e1c370.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2102
        -- Old: Zhang Pipi
        -- Old description: Zhang Bobo's friend likes to eat kelp and small fish, and will lie on the rocks to bask in the sun on sunny days.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Oyster"
            D.Description = "Giant Oyster is known for one thing: the tide bends near it."
            D.TexturePath = dir .. "images/cards/002102-f8045d23-e6e6-474c-a3e7-ddfc6121657a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2103
        -- Old: Grass-tailed Finch
        -- Old description: Good at disguising themselves as plants.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dire Wolves"
            D.Description = "Dire Wolves is known for one thing: green strength gathers quietly."
            D.TexturePath = dir .. "images/cards/002103-a602c93d-e00f-4b4f-a7ff-95316b7e7641.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2104
        -- Old: Iwakuriko
        -- Old description: Good at digging holes in the ground to escape.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kyren Sniper"
            D.Description = "The trail of Kyren Sniper says it clearly: dust rises around it."
            D.TexturePath = dir .. "images/cards/002104-4df99e19-0b1e-48ec-a146-38cf147eab61.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2105
        -- Old: Dazzling tail monkey
        -- Old description: The confusing tail can swing and emit pink mist to block the opponent's vision.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zodiac Monkey"
            D.Description = "Zodiac Monkey leaves this sign: Quick hands invite trouble."
            D.TexturePath = dir .. "images/cards/002105-5e98eb0b-c3b5-4561-b8a2-f22bd0fe1115.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2106
        -- Old: Gem Bear
        -- Old description: A robot bear with gems embedded in its body as a power source.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Snarling Undorak"
            D.Description = "The trail of Snarling Undorak says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/002106-05788d63-6210-44f2-9ae4-e55e9507a3a9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2107
        -- Old: Shadow Dragon
        -- Old description: It looks like a lazy dinosaur-like fish. The skin on its back is very thick. It is not very aggressive but has full defense. When it sees a beast or a person, it will look at it for 2 seconds and then slowly run away.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vampire Bats"
            D.Description = "Where Vampire Bats goes, a roar becomes weather."
            D.TexturePath = dir .. "images/cards/002107-c8b8aa03-c777-467f-9b05-812183553f7b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2108
        -- Old: Ghost Jellyfish
        -- Old description: Ghosts in the water cannot be hit by physical weapons.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloud Sprite"
            D.Description = "Cloud Sprite is known for one thing: small wings, sharp tricks."
            D.TexturePath = dir .. "images/cards/002108-3d14352c-ac8c-45b5-b930-63822408ba3d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2109
        -- Old: Burning Mane Fox
        -- Old description: It has thick manes all over its body, and its body temperature can reach up to 100 degrees during combat. If you are not careful, it may cause forest fires.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Grappler"
            D.Description = "Goblin Grappler leaves this sign: Smoke follows every step."
            D.TexturePath = dir .. "images/cards/002109-5c948872-295c-41b9-8094-db7db7578b0d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2110
        -- Old: Double-finned dragon
        -- Old description: A strong dragon with a slender body and flexible movements. It is good at running. Its ultimate trick is the iron mountain.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dragon Whelp"
            D.Description = "The trail of Dragon Whelp says it clearly: its shadow arrives before the roar."
            D.TexturePath = dir .. "images/cards/002110-349ff6e6-b914-4787-bb90-ea77a3550d23.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2111
        -- Old: Mushroom Shell Rabbit
        -- Old description: There is a mushroom on its back. If nourished enough, the mushroom will grow into a huge one.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fungusaur"
            D.Description = "Fungusaur is known for one thing: spores drift like tiny omens."
            D.TexturePath = dir .. "images/cards/002111-37f6f2bd-4e0e-42d8-b5a6-ad4ee736c69e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2112
        -- Old: Thunder Beast
        -- Old description: An elf with built-in static electricity, its limbs will emit an electric sizzling sound when it jumps.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hunting Drake"
            D.Description = "Where Hunting Drake goes, it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/002112-5b0293a9-48fe-4018-bd25-3e02c227a3dd.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2113
        -- Old: MIMIHU
        -- Old description: is good at using electric tricks to stun enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thunder Spirit"
            D.Description = "Trainers whisper of Thunder Spirit: the past borrows a body."
            D.TexturePath = dir .. "images/cards/002113-61a59775-b1cd-4ed0-8abf-c2b37f7be0d5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2114
        -- Old: Enderrat
        -- Old description: Hidden in the shadows of the cave, never coming out during the day.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Teferi's Drake"
            D.Description = "The trail of Teferi's Drake says it clearly: it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/002114-c24823df-5651-4578-a0c8-f9f52f66abe4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2115
        -- Old: Tree Imp
        -- Old description: Likes to eat tender leaves and grass, and is well hydrated. It needs to drink 10 kilograms of water every day to feel comfortable.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thallid"
            D.Description = "The trail of Thallid says it clearly: spores drift like tiny omens."
            D.TexturePath = dir .. "images/cards/002115-4caaf31b-86a9-485b-8da7-d5b526ed1233.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2201
        -- Old: Molten Beast
        -- Old description: Small and medium-sized beasts active in volcanic areas have body temperatures as high as 300 degrees, making them unbearably hot just by being close to them.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Snowman"
            D.Description = "Where Goblin Snowman goes, heat gathers around its name."
            D.TexturePath = dir .. "images/cards/002201-5bbb260a-6763-4d1c-a009-4e34cd572519.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2202
        -- Old: Fossil fish
        -- Old description: Creatures from ancient times contained tremendous power.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Brine Hag"
            D.Description = "Trainers whisper of Brine Hag: blue shadows move below."
            D.TexturePath = dir .. "images/cards/002202-2a1e7796-fbfb-4976-879f-bb748429d5c7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2203
        -- Old: Exploding Tail Frog
        -- Old description: Its tail is like an explosive spark, and its attack method is to emit explosions from the tail behind its back.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Warchief"
            D.Description = "The trail of Goblin Warchief says it clearly: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/002203-66864a4b-8924-40ef-a337-15b12413a158.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2204
        -- Old: Butterfly Rabbit Demon
        -- Old description: A rabbit with low-altitude flying ability and almost no aggression.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Boneshard Slasher"
            D.Description = "Where Boneshard Slasher goes, the dark learned a new shape."
            D.TexturePath = dir .. "images/cards/002204-27201370-32cc-4b90-890d-8c3f5362ad70.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2205
        -- Old: Coulee Beetle
        -- Old description: The bright red and blue colors on its carapace can quickly change to make enemies dizzy, and it can spit out lightning balls from its mouth to stun enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Whirling Dervish"
            D.Description = "Where Whirling Dervish goes, the swarm notices first."
            D.TexturePath = dir .. "images/cards/002205-e51bfbd4-2319-41eb-b694-72874c24b31a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2206
        -- Old: Silk Songworm
        -- Old description: The wings are as smooth and flexible as ribbons, and can bind enemies to restrict their movements.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dauthi Trapper"
            D.Description = "Dauthi Trapper leaves this sign: The swarm notices first."
            D.TexturePath = dir .. "images/cards/002206-6d83770e-16ff-49c6-b4e7-eb7fc566eef8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2301
        -- Old: Valley Hedgehog
        -- Old description: The scales on its body turn into spikes when in danger.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spike Feeder"
            D.Description = "Trainers whisper of Spike Feeder: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/002301-3751b2ae-a234-4691-984b-2f9f6b1cd1df.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2302
        -- Old: Tsunami Otter
        -- Old description: It can store water in its tail and launch huge waves with one leap.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Man-o'-War"
            D.Description = "Man-o'-War is known for one thing: a bright shape slips below."
            D.TexturePath = dir .. "images/cards/002302-a7a4a023-8867-4fb4-baf9-df7540b61725.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2303
        -- Old: Hallelujah
        -- Old description: has great power and often appears at night to fight criminals.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Halfdane"
            D.Description = "When Halfdane appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/002303-2e939761-3542-4044-9038-d1d30c6a38fc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2304
        -- Old: Shenmo Lamp
        -- Old description: Floating will-o’-the-wisp
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Black Lotus"
            D.Description = "A perfect bloom. A moment of impossible power."
            D.TexturePath = dir .. "images/cards/002304-4a2e428c-dd25-484c-bbc8-2d6ce10ef42c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2305
        -- Old: Babymon
        -- Old description: My body was too hot, so I could only soak myself in water to cool down.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Phalanx"
            D.Description = "Kjeldoran Phalanx leaves this sign: Wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/002305-b6e91ba0-b229-4ab1-84f3-2a490dfa5051.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2306
        -- Old: Cangguan
        -- Old description: The giant wings are covered with star feathers, and the whole body is translucent. The pupils are like whirlpools in the night sky, and the whole body is surrounded by star streams and afterimages.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dralnu's Pet"
            D.Description = "Dralnu's Pet is known for one thing: old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/002306-cd5f4daf-7b54-4425-a93a-19532dfb83ca.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2307
        -- Old: Raging Beast
        -- Old description: A high-speed beast with a top speed of 600km/h, the faster it runs, the hotter it burns.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blistering Firecat"
            D.Description = "Trainers whisper of Blistering Firecat: raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/002307-e0ddcf4a-1943-49dd-a02c-75804ce4bc3e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2308
        -- Old: Stone-breaking pig
        -- Old description: Hitting the rock wall at high speed to open a path is called a "mobile mining hammer".
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gigapede"
            D.Description = "Gigapede leaves this sign: One wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/002308-0a96a608-9237-41c1-824c-89d5fad939ad.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2309
        -- Old: Hammersmith
        -- Old description: He is good at drilling for earth veins and has a hard body all over his body.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tempest Efreet"
            D.Description = "Where Tempest Efreet goes, smoke and pride take form."
            D.TexturePath = dir .. "images/cards/002309-c2ea6dfe-64d6-451a-bd34-31546996e711.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2310
        -- Old: Fugui
        -- Old description: Floating with a light body, it glows at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Krovikan Horror"
            D.Description = "Trainers whisper of Krovikan Horror: fear gives it room to breathe."
            D.TexturePath = dir .. "images/cards/002310-e1f3cb1c-6bde-4b55-b5bc-5b64b56930f2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2311
        -- Old: Sleepy Otter
        -- Old description: Spent most of the time sleeping, completely unalert.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pygmy Hippo"
            D.Description = "Pygmy Hippo leaves this sign: Blue shadows move below."
            D.TexturePath = dir .. "images/cards/002311-2e3f6220-6ead-46b4-8663-57609ef5a12e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2312
        -- Old: Short Dora
        -- Old description: A creature that is friendly to humans and likes to eat fruits.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Roots"
            D.Description = "Trainers whisper of Wall of Roots: green life grows teeth."
            D.TexturePath = dir .. "images/cards/002312-aeb151d2-c313-44d2-972e-33487f070c23.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2313
        -- Old: Velvet snow cotton
        -- Old description: Although it is snow, I need to wear a scarf because I am afraid of the cold.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sustaining Spirit"
            D.Description = "Sustaining Spirit is known for one thing: hope descends with a blade."
            D.TexturePath = dir .. "images/cards/002313-c9ecf91a-9ce1-44a1-8859-7163d32cfba6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2314
        -- Old: Winter Night Ringtone
        -- Old description: Melodious music will be made on Christmas Eve.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Time Walk"
            D.Description = "One step bends into another turn."
            D.TexturePath = dir .. "images/cards/002314-ade7d00d-4e7b-46e9-ace1-63f628a589fc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2315
        -- Old: Phantom Beast
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rootwater Shaman"
            D.Description = "Trainers whisper of Rootwater Shaman: the sea answers in song."
            D.TexturePath = dir .. "images/cards/002315-caa1b84b-efda-4324-9106-0d1d00385cdc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2316
        -- Old: Green Surge
        -- Old description: Apple-flavored ooze
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Atog"
            D.Description = "The trail of Atog says it clearly: hunger has a very strange smile."
            D.TexturePath = dir .. "images/cards/002316-f123fe6a-99ca-48c1-9a7a-ae905c10108a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2317
        -- Old: Split Shadow in Colorful Clothes
        -- Old description: I don’t know how to play baseball. Guess what this bat is used for.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Timmerian Fiends"
            D.Description = "No one forgets Timmerian Fiends when the dark learned a new shape."
            D.TexturePath = dir .. "images/cards/002317-90643766-c92f-4a25-bd02-227f3c91f391.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2318
        -- Old: Burn frequency
        -- Old description: The most enthusiastic sister at Christmas
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Dragon"
            D.Description = "Lightning Dragon leaves this sign: The sky remembers this one."
            D.TexturePath = dir .. "images/cards/002318-342fc7bc-657f-43a3-9558-f516fa545a09.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2319
        -- Old: Bing Lingling
        -- Old description: The snow wand in his hand is said to have been used by Santa Claus, and it can instantly create many snowflakes.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ancestral Recall"
            D.Description = "Three old memories arrive like lightning."
            D.TexturePath = dir .. "images/cards/002319-2dd41293-d7c8-4422-9f0c-b3e96350f5c9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2401
        -- Old: Sheath Fairy
        -- Old description: A cute herbivore like a rabbit, it lives in the grass under the big trees. In winter, it lives in holes in the ground to keep warm.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Scryb Sprites"
            D.Description = "Scryb Sprites is known for one thing: small wings, sharp tricks."
            D.TexturePath = dir .. "images/cards/002401-ab52f491-26f1-494f-8ec7-9630c4f9653a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2402
        -- Old: Cactus Beast
        -- Old description: Plants that appear in desert areas cannot move because they are rooted in the sand. They can spray small thorns from their mouths to attack distant threats.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lichenthrope"
            D.Description = "Lichenthrope is known for one thing: roots remember old magic."
            D.TexturePath = dir .. "images/cards/002402-76f0c356-a81d-41d4-a8b7-8c159146a8b8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2403
        -- Old: Phantom Beast
        -- Old description: A mysterious ghost with electricity all over his body
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phantom Nishoba"
            D.Description = "Phantom Nishoba leaves this sign: The past borrows a body."
            D.TexturePath = dir .. "images/cards/002403-56ebc372-aabd-4174-a943-c7bf59e5028d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2404
        -- Old: Ancient Rock Whale
        -- Old description: A heavy giant fish in the deep sea. Because its whole body is covered with rocks, almost no creature can bite it. When swimming at full strength, you can hit with your body to cause huge damage.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Great Whale"
            D.Description = "Trainers whisper of Great Whale: a living island turns below."
            D.TexturePath = dir .. "images/cards/002404-58a2acf1-dad8-4f93-a34e-891e5178a48f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2405
        -- Old: Fujiyou Itachi
        -- Old description: A nimble guy who likes to hang from the vines swinging in the woods. It is said that he can turn into a ghost to evade attacks when in danger.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spectral Bears"
            D.Description = "Where Spectral Bears goes, the past borrows a body."
            D.TexturePath = dir .. "images/cards/002405-7e13875f-f745-4afd-a830-33df9576dce8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2406
        -- Old: Mirror Eyes
        -- Old description: Living in deep mines, it is said to use mysterious power to check the movement of the earth's crust and maintain the stability of the earth.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Timetwister"
            D.Description = "Past and future tumble through the same door."
            D.TexturePath = dir .. "images/cards/002406-01bda3d7-122a-48a0-bab3-676c4a557b74.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2407
        -- Old: Fortune Cat
        -- Old description: Often worshiped as a god representing money, people worship and pray to bless them with increasing wealth.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jareth, Leonine Titan"
            D.Description = "Jareth, Leonine Titan arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/002407-65dd1364-ff36-4cb9-ad93-e6fcbcb942cf.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 2408
        -- Old: Luxiang Division
        -- Old description: Play music in ancient ruins to direct various machines to work in an orderly manner
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sol Ring"
            D.Description = "A small circle holding a sun's worth of power."
            D.TexturePath = dir .. "images/cards/002408-9138d11a-d55f-4c46-bb27-7e8e15a44e8c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3101
        -- Old: Ulodi
        -- Old description: Can understand the languages of many animals.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Shadows"
            D.Description = "Wall of Shadows is known for one thing: the path ends here."
            D.TexturePath = dir .. "images/cards/003101-69c6e076-d7bf-435b-ba79-84aa9f073130.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3102
        -- Old: Masked Bear
        -- Old description: A bear wearing a steel mask.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Beast"
            D.Description = "Trainers whisper of Clockwork Beast: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/003102-ed5507d5-7f1b-4cbf-8341-495c33e5ab6c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3103
        -- Old: Mechanical Snake
        -- Old description: The inside of the body is made up of mechanical parts.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Battering Ram"
            D.Description = "Battering Ram is known for one thing: old gears wake with purpose."
            D.TexturePath = dir .. "images/cards/003103-e7e2857f-f6eb-4091-b758-7bb508544170.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3104
        -- Old: Lock Teeth
        -- Old description: A rodent with a tail covered in ice crystals.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urborg Phantom"
            D.Description = "The trail of Urborg Phantom says it clearly: the past borrows a body."
            D.TexturePath = dir .. "images/cards/003104-397355b9-5b67-4973-972e-3505c500d116.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3105
        -- Old: Papite
        -- Old description: A highly intelligent creature with the ability to operate ultra-advanced precision machinery, it looks like a rabbit.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Daru Stinger"
            D.Description = "Trainers whisper of Daru Stinger: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/003105-ff5866a4-f4c0-45bc-9b33-b77387441d34.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3106
        -- Old: Fangya
        -- Old description: A cat-shaped creature that likes to hang out on windy nights, and its red scarf is its representative feature.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aven Farseer"
            D.Description = "The trail of Aven Farseer says it clearly: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/003106-47854e89-4d22-4eb6-a77d-6f04407bd2e5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3107
        -- Old: Electric Ape
        -- Old description: Can emit a momentary electric shock when clapping its hands.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Albatross"
            D.Description = "Giant Albatross is known for one thing: it reads the wind first."
            D.TexturePath = dir .. "images/cards/003107-bce05870-74d3-43f1-92d0-dc1744c0138d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3108
        -- Old: Ice Tyrannosaurus
        -- Old description: Dragons living in extremely cold areas are cruel by nature.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thunder Dragon"
            D.Description = "Thunder Dragon is known for one thing: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/003108-7e9b06a8-c3f3-4174-b992-7da7ca163990.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3109
        -- Old: Bitcat
        -- Old description: Can use the ability to retrieve objects from the air.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Auramancer"
            D.Description = "No one forgets Auramancer when one word tilts the battle."
            D.TexturePath = dir .. "images/cards/003109-090dd4cf-5087-4ed8-a944-f3794e5862d5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3110
        -- Old: Star Beast
        -- Old description: A typical feature is the star-shaped head.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bloodfire Dwarf"
            D.Description = "No one forgets Bloodfire Dwarf when smoke follows every step."
            D.TexturePath = dir .. "images/cards/003110-86b5c38e-7d74-4862-8187-f5db4a3d1e0f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3111
        -- Old: Tomb Patrol Sheep
        -- Old description: Wander around the cemetery area and jump to a 5-meter-high platform.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Ski Patrol"
            D.Description = "Goblin Ski Patrol is known for one thing: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/003111-fde1c8b5-1e01-4920-8d02-bf80d5b238c5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3112
        -- Old: Centrino
        -- Old description: A four-legged animal that is good at running and looks like a combination of a horse and a dog.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chicken Egg"
            D.Description = "Trainers whisper of Chicken Egg: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003112-640ac565-331b-47e2-b2af-a8a94a96488a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3113
        -- Old: Jetwing
        -- Old description: Huge flying insects with hard carapace.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Sky Raider"
            D.Description = "The trail of Goblin Sky Raider says it clearly: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/003113-738cbf9b-e3d3-4568-93ce-7915b248e5b3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3114
        -- Old: Steel Royal
        -- Old description: A creature with a body made of solid steel
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soldevi Sentry"
            D.Description = "Soldevi Sentry is known for one thing: old machinery finds its rhythm."
            D.TexturePath = dir .. "images/cards/003114-85976b5c-4eed-4cf9-b2b0-a8421a97ab2a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3115
        -- Old: Bantli
        -- Old description: A muscular African creature that can run on all fours and stand and fight.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Raider"
            D.Description = "Goblin Raider is known for one thing: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003115-3315d75d-08dc-456c-a8e7-fe3136bf1a6b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3201
        -- Old: Snow-footed Mongoose
        -- Old description: His snow-white tail and light blue feet are his representative features.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Voice of Truth"
            D.Description = "No one forgets Voice of Truth when hope descends with a blade."
            D.TexturePath = dir .. "images/cards/003201-40377e3d-77d9-4d86-ac8c-4e27803e48d8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3202
        -- Old: Electric Claw Dragon
        -- Old description: Shaking the wings on its head can put the whole body into an electrified state.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Raven Familiar"
            D.Description = "Raven Familiar leaves this sign: It reads the wind first."
            D.TexturePath = dir .. "images/cards/003202-b104638d-29aa-490c-8cfb-e08fc94efb59.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3203
        -- Old: Juta
        -- Old description: An elegant long-tailed fox.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skyshroud Elite"
            D.Description = "Skyshroud Elite is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/003203-f6a496a4-1b4c-4c5d-99e5-ec40601c759d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3204
        -- Old: Cory sheep
        -- Old description: A cute sheep who is good at jumping
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Orcish Cannoneers"
            D.Description = "No one forgets Orcish Cannoneers when a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/003204-a4309a2f-27f5-4652-b0b4-6a6119436f75.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3205
        -- Old: Elk Maple Deer
        -- Old description: A giant deer living in the maple forest
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Frost Giant"
            D.Description = "Frost Giant leaves this sign: Heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003205-6955d54f-7b37-4e43-8183-51677fb1ee11.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3206
        -- Old: Ant King
        -- Old description: A huge ant king.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Killer Bees"
            D.Description = "Where Killer Bees goes, one wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/003206-6a749837-56ff-4e42-9bf2-82633bccdc39.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3207
        -- Old: Honeywing Bee
        -- Old description: has gorgeous and sweet wings
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bloodline Shaman"
            D.Description = "Where Bloodline Shaman goes, old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/003207-5fdfc473-8477-4c04-a4e7-ecac1b0a5716.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3208
        -- Old: Honey-winged Ant
        -- Old description: Often compete with honey-winged bees for honey
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zombie Mob"
            D.Description = "Zombie Mob is known for one thing: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/003208-ab85551f-c9cc-409c-9fb5-a45de695e521.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3209
        -- Old: Qianshuixia
        -- Old description: Disguises itself as coral to hide from predators
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soldevi Sage"
            D.Description = "No one forgets Soldevi Sage when old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/003209-268c3726-0e2d-40df-811d-2cdf6b328ea3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3210
        -- Old: Sakura Eye Shark
        -- Old description: The color of the eyes is like pink cherry blossoms
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crosis's Attendant"
            D.Description = "Crosis's Attendant leaves this sign: Stone remembers its maker."
            D.TexturePath = dir .. "images/cards/003210-45edc18c-2046-4d0e-92fe-a6cf4aaf1c6f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3301
        -- Old: Huonudi
        -- Old description: Flame-like hair represents courage
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Flametongue Kavu"
            D.Description = "No one forgets Flametongue Kavu when heat gathers around its name."
            D.TexturePath = dir .. "images/cards/003301-e5056bca-bd90-4b50-8630-105558f8ef92.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3302
        -- Old: Blood Moon Beast
        -- Old description: The monsters of the vampire family hunt at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Harbinger of Night"
            D.Description = "Harbinger of Night is known for one thing: a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/003302-33124133-ed2c-4b86-a135-ac76f4fe4da5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3303
        -- Old: Bag bag
        -- Old description: Lively and full of energy, he will invite a boxing duel if he disagrees.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tahngarth, Talruum Hero"
            D.Description = "Tahngarth, Talruum Hero walks in with history close behind."
            D.TexturePath = dir .. "images/cards/003303-c1778f37-af01-4f8c-ab9d-a4c60abf7e78.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3304
        -- Old: Fighting Priest
        -- Old description: A dog that has received professional fighting training since childhood.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elven Warhounds"
            D.Description = "Where Elven Warhounds goes, it follows trouble by scent."
            D.TexturePath = dir .. "images/cards/003304-29138c1e-11cb-488f-8e04-f5488e08a81e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3305
        -- Old: Wu Kong
        -- Old description: is good at Chinese martial arts and kung fu.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Psychatog"
            D.Description = "Psychatog is known for one thing: hunger has a very strange smile."
            D.TexturePath = dir .. "images/cards/003305-6757bf0e-489f-4be2-9e41-463b59f00dd1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3306
        -- Old: Crazy Golden Leopard
        -- Old description: has a fanatical love for gold
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nantuko Shade"
            D.Description = "Where Nantuko Shade goes, its shadow carries a blade."
            D.TexturePath = dir .. "images/cards/003306-2ed9dc9c-b92b-4305-8c54-1a63f750f8d1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3307
        -- Old: Qilarus
        -- Old description: Has an icy body and will stir up cold wind when running
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chromeshell Crab"
            D.Description = "No one forgets Chromeshell Crab when the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/003307-e02a40a4-fa61-4595-810a-3796e0d71507.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3308
        -- Old: Ni Gumo
        -- Old description: A giant insect said to lurk in the soil
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Badger"
            D.Description = "Giant Badger is known for one thing: tiny wings carry a warning."
            D.TexturePath = dir .. "images/cards/003308-6b1ac9c5-5f9f-445e-8e4b-b53ed9984958.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3309
        -- Old: Morning Traveler Luna
        -- Old description: Her smile is the starting point of the journey.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Squirrel Mob"
            D.Description = "Trainers whisper of Squirrel Mob: the forest leans closer."
            D.TexturePath = dir .. "images/cards/003309-181254ce-259a-4b31-8937-728564f2baf3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3310
        -- Old: Captain Sunshine Linda
        -- Old description: The girl who always brings the atmosphere to life!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mother of Runes"
            D.Description = "Where Mother of Runes goes, deep currents keep its secret."
            D.TexturePath = dir .. "images/cards/003310-0b1a46ab-95cb-4c24-924f-fc2afd4fcac7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3311
        -- Old: Tang Chong Chong
        -- Old description: A little sugar man who likes to sprint on a skateboard
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Withered Wretch"
            D.Description = "Withered Wretch is known for one thing: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/003311-b8a82948-503f-4ad4-9e3c-c080c16afd63.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3312
        -- Old: Cyclops
        -- Old description: Its arms are powerful and can throw large rocks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nalathni Dragon"
            D.Description = "Trainers whisper of Nalathni Dragon: old flame gathers under its wings."
            D.TexturePath = dir .. "images/cards/003312-7f9c6be5-ec44-4c66-aad6-cf9eca765b6b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3313
        -- Old: Ring Box
        -- Old description: He is very small and will speak loudly when he is standing high, but he will be submissive when he is standing low.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thran Golem"
            D.Description = "Thran Golem leaves this sign: Stone remembers its maker."
            D.TexturePath = dir .. "images/cards/003313-5778c52b-248b-4131-b5c0-12ea1986786e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3314
        -- Old: Qingsuo
        -- Old description: It is said that an old ghost who is over 10,000 years old spends time cleaning and maintaining his brick body every day.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian Infiltrator"
            D.Description = "No one forgets Phyrexian Infiltrator when old magic walks beside it."
            D.TexturePath = dir .. "images/cards/003314-224b8254-553d-4d88-8163-1f15e1244bd2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3315
        -- Old: Starfish
        -- Old description: Likes to suck the golden starfish in the water into his mouth and spit it out, just for fun.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rootwater Thief"
            D.Description = "Rootwater Thief leaves this sign: The sea answers in song."
            D.TexturePath = dir .. "images/cards/003315-38addef3-1dd7-41a1-9706-3be5c86a58c9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3401
        -- Old: Bobby Langbi
        -- Old description: An elf with strong water power, the waves it stirs up can sweep away enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Leviathan"
            D.Description = "Leviathan is known for one thing: the horizon learns to fear the deep."
            D.TexturePath = dir .. "images/cards/003401-a4e96456-93bf-4d28-9a4b-5bc24ae07fc2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3402
        -- Old: Damu
        -- Old description: A good-tempered old tree that provides shade and rain for the animals in the forest. But if anyone dares to destroy the trees, the angry Damu will roar to pieces with huge sound waves.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "War Mammoth"
            D.Description = "No one forgets War Mammoth when gentle eyes, unstoppable weight."
            D.TexturePath = dir .. "images/cards/003402-c38912a6-0327-411a-9499-d659b635e2bd.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3403
        -- Old: Strange vortex snail
        -- Old description: It will leave behind a slippery slime when walking, and can release super-viscous glue to immobilize enemies when necessary.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clone"
            D.Description = "Clone leaves this sign: The trees shake first."
            D.TexturePath = dir .. "images/cards/003403-1d513dde-7c5f-46f1-b871-5290595bdbbe.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3404
        -- Old: Haiming female
        -- Old description: A shy creature that doesn't like sports and lurks under the sea. It generally does not initiate attacks and can glide quickly on the seabed.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mahamoti Djinn"
            D.Description = "The trail of Mahamoti Djinn says it clearly: a wish becomes a warning."
            D.TexturePath = dir .. "images/cards/003404-5d464226-5607-4db2-bd43-7855efb92628.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3405
        -- Old: Hyrule
        -- Old description: A mysterious four-legged creature said to have served a powerful master.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lord of Atlantis"
            D.Description = "Where Lord of Atlantis goes, a ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/003405-fd279366-8de2-47c5-9ac0-f41f8f81c643.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3406
        -- Old: Sunshine Holiday·Freya
        -- Old description: Passionate like the summer sea breeze, set off with full energy!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serra Angel"
            D.Description = "A bright omen with a sword in the clouds."
            D.TexturePath = dir .. "images/cards/003406-b7b4e357-de48-4461-8109-bbb07fff5171.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3407
        -- Old: Green Breath Fox
        -- Old description: When someone is lost in the forest, the Green Breath Fox will quietly make a sound to guide the lost person to find the direction.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Erhnam Djinn"
            D.Description = "No one forgets Erhnam Djinn when a wish becomes a warning."
            D.TexturePath = dir .. "images/cards/003407-5bcf61ba-37fd-4029-b299-add7cf9d70bc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3408
        -- Old: Dice Frog
        -- Old description: This dice can distort the direction of gravity according to the changes in the throwing results.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Juggernaut"
            D.Description = "The trail of Juggernaut says it clearly: the world makes room."
            D.TexturePath = dir .. "images/cards/003408-82845f1e-a114-4d4f-8b6d-29e37fe1e925.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 3409
        -- Old: Three types of balls
        -- Old description: It is very popular with humans because the special substances in its body can make the nearby land very fertile, causing unreasonably huge fruits to grow on the land.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Birds of Paradise"
            D.Description = "Every color of magic takes wing at once."
            D.TexturePath = dir .. "images/cards/003409-a2985857-fee5-42a6-9b5d-e157ada52a03.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4101
        -- Old: Spida
        -- Old description: A giant bird that flies at supersonic speeds.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Samite Healer"
            D.Description = "The trail of Samite Healer says it clearly: wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/004101-19d997ce-6b08-4058-a7f8-82cc74b9974d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4102
        -- Old: Arrow-feathered bird
        -- Old description: Has sharp feathers.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Scorcher"
            D.Description = "Dwarven Scorcher is known for one thing: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/004102-099873b1-7181-4b9d-8ce1-8ec63c814afe.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4103
        -- Old: Burning Mane Lion
        -- Old description: You can condense flames in your palms and use Flame Fist.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Elemental"
            D.Description = "Lightning Elemental leaves this sign: Raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004103-6df538e3-84c9-4580-85e9-8ac2f9a1294b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4104
        -- Old: Fantasy Dragon
        -- Old description: The pink dreamy foam is intoxicating.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blood Celebrant"
            D.Description = "Trainers whisper of Blood Celebrant: a shadow learns its name."
            D.TexturePath = dir .. "images/cards/004104-805de325-6f14-4a52-bb85-f9a9545d82a4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4105
        -- Old: Three-leaf palm
        -- Old description: A cactus-like creature with three leaves on its head.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blastoderm"
            D.Description = "No one forgets Blastoderm when instinct settles the argument."
            D.TexturePath = dir .. "images/cards/004105-9db5d6c2-b11f-442a-b172-c0c99c9bec07.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4106
        -- Old: Sunflowermon
        -- Old description: Very eager for sunlight, it can exert its greatest power on sunny days.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gorilla Berserkers"
            D.Description = "Gorilla Berserkers is known for one thing: the trees shake first."
            D.TexturePath = dir .. "images/cards/004106-344b4613-17f8-4c8b-b5bc-f773a8f8007a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4107
        -- Old: Spiny Rabbit
        -- Old description: The body has many cactus spines.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Llanowar Sentinel"
            D.Description = "Llanowar Sentinel is known for one thing: the forest leans closer."
            D.TexturePath = dir .. "images/cards/004107-6f37ea4b-66e2-4ad5-ae7f-d02fd59131bd.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4108
        -- Old: Fan Bear
        -- Old description: Looks like a panda
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skirk Prospector"
            D.Description = "Skirk Prospector is known for one thing: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/004108-eb545dcd-3a7a-46a7-9c35-d28faebc6d17.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4109
        -- Old: Chef Lizard
        -- Old description: A lizard-like creature that loves cooking
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Icatian Infantry"
            D.Description = "Trainers whisper of Icatian Infantry: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/004109-f95d42d8-ba75-43bf-81b8-b02374f03e83.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4110
        -- Old: Maple Tail Fox
        -- Old description: A huge tail the color of maple leaves
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Harvester Druid"
            D.Description = "Trainers whisper of Harvester Druid: claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/004110-97337e6e-1b3f-43a2-91f2-ca8f6c5dea88.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4111
        -- Old: Border Fox
        -- Old description: A fox patrolling the border.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arctic Foxes"
            D.Description = "Where Arctic Foxes goes, the unseen hand moves first."
            D.TexturePath = dir .. "images/cards/004111-98f99c3e-dddc-492f-aab6-1d899346a385.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4112
        -- Old: Duolingduo
        -- Old description: Big ears, high voltage.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ridgeline Rager"
            D.Description = "No one forgets Ridgeline Rager when instinct settles the argument."
            D.TexturePath = dir .. "images/cards/004112-5f663a4a-592a-4a3b-bbaf-e9c5c3049021.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4113
        -- Old: Electric Dragon Lizard
        -- Old description: I love lemons very much.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merfolk Traders"
            D.Description = "Merfolk Traders leaves this sign: The sea answers in song."
            D.TexturePath = dir .. "images/cards/004113-ebacbf23-4b69-481c-aaf7-5de7b4a6db6f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4114
        -- Old: Long tail dragon
        -- Old description: Good at jumping, running and stealing.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hornet Cobra"
            D.Description = "The trail of Hornet Cobra says it clearly: patience wears scales."
            D.TexturePath = dir .. "images/cards/004114-27180bad-9bbc-462b-8832-626dc403a3fd.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4115
        -- Old: Pippi
        -- Old description: There is a crackling sound of electric sparks while running.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soldevi Heretic"
            D.Description = "Soldevi Heretic is known for one thing: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/004115-d46accc8-b926-4443-bc12-dfd5870b2d2e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4116
        -- Old: Dora Fat
        -- Old description: Fat rabbit
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urborg Skeleton"
            D.Description = "Trainers whisper of Urborg Skeleton: a shadow learns its name."
            D.TexturePath = dir .. "images/cards/004116-6e522a62-fbca-4362-9006-d4356c525704.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4117
        -- Old: Black Snail Beast
        -- Old description: Carrying a huge snail shell, it can curl up in the shell when encountering danger.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Drudge Skeletons"
            D.Description = "No one forgets Drudge Skeletons when old magic walks beside it."
            D.TexturePath = dir .. "images/cards/004117-be76e8d0-70d3-4fc7-9320-e78ad93bd362.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4201
        -- Old: Steel Goat
        -- Old description: Can dig caves with steel claws
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Steed"
            D.Description = "The trail of Clockwork Steed says it clearly: it runs like a storm breaking."
            D.TexturePath = dir .. "images/cards/004201-d27d83b9-4454-40c0-bac0-de736c634a53.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4202
        -- Old: Stone Mountain Armor
        -- Old description: His natural mission is to protect his stone mountain
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pavel Maliki"
            D.Description = "Pavel Maliki walks in with history close behind."
            D.TexturePath = dir .. "images/cards/004202-304f9d39-3ea2-4274-b23e-e4eaabbc1c4b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4203
        -- Old: Timid Crab
        -- Old description: Crabs that like to huddle up in caves to hide themselves
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Blastminer"
            D.Description = "Trainers whisper of Dwarven Blastminer: dust rises around it."
            D.TexturePath = dir .. "images/cards/004203-2970831a-738b-476f-9d46-39f10a1f91e7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4204
        -- Old: Mushroom Cap Crab
        -- Old description: The head is shaped like a mushroom
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wildfire Emissary"
            D.Description = "Trainers whisper of Wildfire Emissary: fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/004204-6d99204c-b42d-48bc-9a93-fae5660665c7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4301
        -- Old: Golden Mountain Armor
        -- Old description: A beast covered in hard gold steel.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tek"
            D.Description = "Tek is known for one thing: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/004301-c1f38104-a699-4bb9-930a-699f7bbc338a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4302
        -- Old: Mysterious Dragon
        -- Old description: Mysterious dragons, it is said that they can only be seen when the weather is abnormal in the sea.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloud Dragon"
            D.Description = "Cloud Dragon leaves this sign: Old flame gathers under its wings."
            D.TexturePath = dir .. "images/cards/004302-4bb7fb59-65c0-4af6-9d3a-79cd6602d004.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4303
        -- Old: Thundermon
        -- Old description: A magical beast that can control thunderstorm weather, and can make thunderclouds move or cause thunder to fall.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dromar, the Banisher"
            D.Description = "When Dromar, the Banisher appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/004303-cfcc3c72-fff5-454c-814c-eb952fd23ba9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4304
        -- Old: Bitter Demon
        -- Old description: The demon of pain from hell
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian Negator"
            D.Description = "Where Phyrexian Negator goes, the dark learned a new shape."
            D.TexturePath = dir .. "images/cards/004304-45a02d67-5931-49ae-a28e-57aa6f9c7f83.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4305
        -- Old: Dark Scale Salamander
        -- Old description: A salamander living in the dark abyss of the sea
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Unstable Shapeshifter"
            D.Description = "Unstable Shapeshifter leaves this sign: Old forest strength charges forward."
            D.TexturePath = dir .. "images/cards/004305-84e8cbd4-f49d-420d-a027-3be64ca58989.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4306
        -- Old: Rabbi
        -- Old description: Former special-purpose bunny soldier, Lie Er gave up his Medal of Honor and embarked on a journey to find his missing brother. He is agile and has a strong sense of justice. His backpack contains the tactical manual and secret map left by his father.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "White Knight"
            D.Description = "The trail of White Knight says it clearly: an old oath rides in steel."
            D.TexturePath = dir .. "images/cards/004306-cb9cb8ed-7abb-4e71-b42f-5041dd0c0394.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4307
        -- Old: Rock Claw Beast
        -- Old description: Lives by eating rocks in caves and has a hard carapace.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Stone Giant"
            D.Description = "The trail of Stone Giant says it clearly: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/004307-7f736379-1fe8-43b8-b749-f1e9baef96a6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4308
        -- Old: Menglong
        -- Old description: Weave dreams at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ihsan's Shade"
            D.Description = "The old stories keep a place for Ihsan's Shade."
            D.TexturePath = dir .. "images/cards/004308-82351724-2814-4d9e-b065-bb72c761b2e7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4309
        -- Old: Thunder Meow
        -- Old description: In lightning weather, every hair becomes electrified by anger.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Flotilla"
            D.Description = "The trail of Goblin Flotilla says it clearly: thunder trails a step behind."
            D.TexturePath = dir .. "images/cards/004309-87024efe-4a74-49fe-a43a-480bed0a650a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4310
        -- Old: Wetland dragon lizard
        -- Old description: Lives in damp swamps and likes to eat damp moss.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Pony"
            D.Description = "Dwarven Pony is known for one thing: it runs like a storm breaking."
            D.TexturePath = dir .. "images/cards/004310-53a3019f-0b27-4ba3-be4c-73ed50eb9514.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4311
        -- Old: Blazing Sight·Elena
        -- Old description: has an irresistible glow of confidence.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Faerie Noble"
            D.Description = "Trainers whisper of Faerie Noble: it laughs from somewhere nearby."
            D.TexturePath = dir .. "images/cards/004311-00f8931e-6402-483c-a9e8-63ee344c36a7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4312
        -- Old: Morning Light Caroline
        -- Old description: Every step comes before efficiency.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Frenetic Efreet"
            D.Description = "Where Frenetic Efreet goes, fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/004312-50d4468b-f7de-44fe-898a-4125d26d242f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4313
        -- Old: Treasure Dragon
        -- Old description: The happy little dragon who gives out gifts to everyone on Christmas
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aboroth"
            D.Description = "Aboroth leaves this sign: Raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004313-8c72ac67-e4fb-49a1-b1e5-cd2e414bec28.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4314
        -- Old: Clockwork Duck
        -- Old description: It actually has legs, but in order to disguise itself as a box and scare people, it usually only walks when no one sees it.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian Dreadnought"
            D.Description = "Too much machine for any battlefield to hold."
            D.TexturePath = dir .. "images/cards/004314-7b8197b9-0cd1-4fa1-9668-d1b5f1759151.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4315
        -- Old: Fantasy amber sturgeon
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Palinchron"
            D.Description = "No one forgets Palinchron when the lie casts a true shadow."
            D.TexturePath = dir .. "images/cards/004315-5621db3f-a9e7-4350-9c6a-0ba04a628947.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4316
        -- Old: Split Front
        -- Old description: The Messenger of Jacaranda
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Yavimaya Elder"
            D.Description = "The trail of Yavimaya Elder says it clearly: the forest leans closer."
            D.TexturePath = dir .. "images/cards/004316-325d9372-01c9-4e99-a966-13c8f8566e2e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4317
        -- Old: Sand Electric Scorpion
        -- Old description: If you splash water on him, he will become very happy and expose his belly.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Musician"
            D.Description = "No one forgets Musician when one word tilts the battle."
            D.TexturePath = dir .. "images/cards/004317-9f8d2247-a10e-413a-b497-2add3918f991.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4318
        -- Old: Dark Scale Salamander
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Storm Spirit"
            D.Description = "The trail of Storm Spirit says it clearly: the past borrows a body."
            D.TexturePath = dir .. "images/cards/004318-7a383a5f-4814-4b92-aa80-2a6440a719bc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4401
        -- Old: Fantasy amber sturgeon
        -- Old description: Amber body, elegant lines, the embodiment of beauty in the ocean.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serendib Djinn"
            D.Description = "No one forgets Serendib Djinn when ancient power answers badly."
            D.TexturePath = dir .. "images/cards/004401-0458b733-d689-4cb5-8970-3b675c67fc4d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4402
        -- Old: Tongue Lizard
        -- Old description: Use its long tongue to dig deep into the ant nest for a feast.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Force of Nature"
            D.Description = "The forest's anger given colossal form."
            D.TexturePath = dir .. "images/cards/004402-e86f61bb-c2b5-4672-b262-1c72bd1de51f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4403
        -- Old: Ancient Dog Scorpion
        -- Old description: A loyal and elegant warrior, extremely excellent in attack, defense, and agility.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Masticore"
            D.Description = "A metal predator with hunger in every joint."
            D.TexturePath = dir .. "images/cards/004403-908a2215-7231-43a4-8fec-5d1e4233c028.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4404
        -- Old: Youlandie
        -- Old description: This squinting eye can make the sea churn.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Old Man of the Sea"
            D.Description = "Old Man of the Sea leaves this sign: Ancient power answers badly."
            D.TexturePath = dir .. "images/cards/004404-d10f8a05-78b0-42a7-adcd-83f6bafe5417.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4405
        -- Old: Crystal Shell Turtle
        -- Old description: Many diggers dream of finding the habitat of the Crystal Shell Turtle, and it is said that there will be a large number of faded crystals.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Morphling"
            D.Description = "A perfect shape that never stays still."
            D.TexturePath = dir .. "images/cards/004405-812f4d5c-aacf-4bd8-849d-80a357a7804d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4406
        -- Old: Forest Overlord
        -- Old description: Usually looks downcast as if it lacks sleep, but becomes energetic in the swamp.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spiritmonger"
            D.Description = "It grows stronger on the edge of ruin."
            D.TexturePath = dir .. "images/cards/004406-b96d6e67-f690-4f19-bb25-a7c2d2aaf42f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4407
        -- Old: Vitality Bomb·Ji Chenyin
        -- Old description: Gym regular, street legend. Her appearance always brings rhythm and excitement, and even opponents can't help but want to join the training.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Verdant Force"
            D.Description = "The trail of Verdant Force says it clearly: raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004407-29bd094c-fcc1-4abf-ba3e-03a5b9b6d1c2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4408
        -- Old: Mud Bird
        -- Old description: The bond of symbiotic twins, the upper bunk bed and the lower bunk respectively, are the owl and the mud monster. In fact, occasionally they will be separated for a short time.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Su-Chi"
            D.Description = "The trail of Su-Chi says it clearly: old gears wake with purpose."
            D.TexturePath = dir .. "images/cards/004408-a64d4f93-0c04-4078-aec0-7e9de92f260f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4409
        -- Old: Melting Heart Treasure
        -- Old description: The body contains low-temperature lava below 100 degrees. When angry, it will really become furious and furious.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Skizzik"
            D.Description = "Skizzik leaves this sign: Raw magic chooses a body."
            D.TexturePath = dir .. "images/cards/004409-dc7732bc-e168-44d9-923a-db7e985bd6db.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 4410
        -- Old: Time Law Armor
        -- Old description: A giant machine that controls the movement of time. The alarm clocks on both shoulders will sound at 0:00.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Braids, Cabal Minion"
            D.Description = "Braids, Cabal Minion walks in with history close behind."
            D.TexturePath = dir .. "images/cards/004410-4dcdcad5-e4fb-480e-984f-1ac5cdc986b9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5101
        -- Old: White Night Demon
        -- Old description: A white monster that appears at night
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Barbarian Guides"
            D.Description = "No one forgets Barbarian Guides when a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005101-fe65a045-dacb-4392-bcb6-843394ef98c9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5102
        -- Old: Lian Menghu
        -- Old description: Can transform into water droplets to hide itself.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Raka Disciple"
            D.Description = "Trainers whisper of Raka Disciple: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005102-41462d43-4f9f-46ba-b79d-434597e74b6b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5103
        -- Old: Rockhorned Dragon
        -- Old description: A small dragon living at the bottom of the canyon.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pyric Salamander"
            D.Description = "Where Pyric Salamander goes, the road bends under its weight."
            D.TexturePath = dir .. "images/cards/005103-7f2dc1a7-4b70-4643-90a8-fdc7877c01ca.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5104
        -- Old: Pharaoh Cat
        -- Old description: The skin on the surface of the body can withstand extremely strong impacts
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Clockwork Swarm"
            D.Description = "Where Clockwork Swarm goes, small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/005104-dfd89e5c-79dc-4a57-b5ea-16491443fea1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5105
        -- Old: White Rock Giant
        -- Old description: The body is made of white rock
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Mantis"
            D.Description = "No one forgets Giant Mantis when one wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/005105-2b56c895-37d3-4475-a542-dc6d21c46f06.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5106
        -- Old: White Rock Statue
        -- Old description: The body is made of white rock
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kobolds of Kher Keep"
            D.Description = "Kobolds of Kher Keep is known for one thing: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/005106-df0320d9-7c2a-456a-9159-1b4fae67bfb5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5107
        -- Old: Australian deer
        -- Old description: Deer leader from primitive tribe
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Liberated Dwarf"
            D.Description = "The trail of Liberated Dwarf says it clearly: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005107-e2c07842-9b70-40b1-9b97-9a9279b7ebc4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5108
        -- Old: Barbarian deer
        -- Old description: Strong deer
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Barbarian Lunatic"
            D.Description = "Where Barbarian Lunatic goes, buried things answer softly."
            D.TexturePath = dir .. "images/cards/005108-6c899f9b-ebce-4424-9cd9-861a50a5f7d2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5110
        -- Old: Mini Sheep
        -- Old description: Super small sheep
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dwarven Berserker"
            D.Description = "Trainers whisper of Dwarven Berserker: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005110-7bc734e9-fb09-4094-94b6-76c0458649e9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5111
        -- Old: Dobby
        -- Old description: An elf living in the forest
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Willow Elf"
            D.Description = "Trainers whisper of Willow Elf: the forest leans closer."
            D.TexturePath = dir .. "images/cards/005111-c063a072-0cd4-45fb-ac68-96e359bf3ef5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5112
        -- Old: Frozen Bear
        -- Old description: Likes to live in extremely cold worlds.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Skyknight"
            D.Description = "Where Kjeldoran Skyknight goes, an old oath rides in steel."
            D.TexturePath = dir .. "images/cards/005112-f794665a-8353-482a-b065-2a0777a8acda.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5113
        -- Old: Polar seal
        -- Old description: It is very cold-resistant and can easily survive in extremely low temperatures.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mesa Pegasus"
            D.Description = "Where Mesa Pegasus goes, winter keeps close company."
            D.TexturePath = dir .. "images/cards/005113-552089f3-1ae4-4f73-a19c-731ef98e1979.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5114
        -- Old: Frozen Bird
        -- Old description: Flying over the Arctic continent.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Keeneye Aven"
            D.Description = "Keeneye Aven is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/005114-1a355c58-cd28-4d2d-9df1-91b4196b01ef.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5115
        -- Old: Bi Meng Bee
        -- Old description: The tentacles on the top of its head can stimulate powerful electric shocks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Shadow Guildmage"
            D.Description = "Where Shadow Guildmage goes, one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005115-ba3fc11e-db36-430c-920b-31195913c16a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5116
        -- Old: Komodo
        -- Old description: An electric lizard living in the desert.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Merchant of Secrets"
            D.Description = "No one forgets Merchant of Secrets when one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005116-d1109bdd-a5ce-4e63-adee-54e43a4c4a1e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5117
        -- Old: Nemo
        -- Old description: An electric octopus that lives in the deep sea.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Devouring Deep"
            D.Description = "Where Devouring Deep goes, a bright shape slips below."
            D.TexturePath = dir .. "images/cards/005117-0855a5a8-8c40-4396-9ad1-8fa0fc6a0c59.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5118
        -- Old: Electric Seahorse
        -- Old description: Likes to electrocute small fish on the bottom of the sea.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sparksmith"
            D.Description = "The trail of Sparksmith says it clearly: lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/005118-15a4460d-3fe8-4b1f-9990-0a19c3345367.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5119
        -- Old: Bomb Crocodile
        -- Old description: Because he is too fat, he only has weak electrical energy.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dega Disciple"
            D.Description = "Dega Disciple is known for one thing: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/005119-fb9cd7d9-8aad-4607-890c-9c8efe016a92.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5120
        -- Old: Fat puffer fish
        -- Old description: A creature that lives on the bottom of the sea.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Information Dealer"
            D.Description = "Information Dealer is known for one thing: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/005120-a45ac59c-654d-44de-b266-532d44b34137.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5121
        -- Old: Abyss Octopus
        -- Old description: Will spray ink when disturbed.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cephalid Looter"
            D.Description = "Cephalid Looter leaves this sign: Eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/005121-cb6f1c4e-4fbc-4474-8dd2-5846d417b6ab.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5122
        -- Old: Ji Crow
        -- Old description: Mysterious birds.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Storm Crow"
            D.Description = "Storm Crow is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/005122-7e573308-40d0-43ce-be04-dbab6bc1ed35.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5123
        -- Old: Firefox
        -- Old description: A fox with a burning body.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Colos Yearling"
            D.Description = "Where Colos Yearling goes, instinct settles the argument."
            D.TexturePath = dir .. "images/cards/005123-1d68eb62-9f86-4c85-8696-46a248c744ff.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5124
        -- Old: Little Firefox
        -- Old description: Firefox’s childhood.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Sledder"
            D.Description = "Goblin Sledder is known for one thing: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/005124-3a9a1ecf-29f6-474e-bbcf-3455d388aa94.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5201
        -- Old: Steel Crystal Turtle
        -- Old description: The back shell grows by eating crystal ore in the cave.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crystal Golem"
            D.Description = "Crystal Golem leaves this sign: Ancient hands move again."
            D.TexturePath = dir .. "images/cards/005201-4b1d3280-f3e1-42ea-93e1-dbab7336fb73.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5202
        -- Old: Night Rat
        -- Old description: A gray-black rat that appears at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spore Flower"
            D.Description = "Spore Flower leaves this sign: It blooms where safer things decay."
            D.TexturePath = dir .. "images/cards/005202-f9681dc0-d0fc-4d5b-a23c-63ec1cc8343d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5203
        -- Old: Leaf-winged Frog
        -- Old description: A flexible animal that can both jump and fly.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Firebrand Ranger"
            D.Description = "No one forgets Firebrand Ranger when green strength gathers quietly."
            D.TexturePath = dir .. "images/cards/005203-ee05211e-cf08-4dea-9740-ed06f8682153.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5204
        -- Old: Pharaoh Dog
        -- Old description: has the superpower of a pharaoh and can summon sand and dust to attack.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Suq'Ata Firewalker"
            D.Description = "Suq'Ata Firewalker is known for one thing: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005204-b8a7c22e-fe96-4960-96d4-ee85abec3281.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5205
        -- Old: Ice Orangutan
        -- Old description: Woolly orangutan living in extremely cold areas
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sea Spirit"
            D.Description = "Where Sea Spirit goes, a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/005205-08933cca-6ed1-43da-a539-355ded52c5b6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5206
        -- Old: Red Eye Spot
        -- Old description: Zebra with red pupils
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balduvian Dead"
            D.Description = "Balduvian Dead leaves this sign: The grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/005206-fac1875a-feab-4213-aa15-69892b7df58b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5207
        -- Old: Bubble Cat
        -- Old description: Suddenly jumps out of the water to attack, and can huddle into a small corner to avoid pursuit.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cephalid Illusionist"
            D.Description = "Where Cephalid Illusionist goes, eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/005207-dceb8cf5-b31a-400e-aea5-ad0c3552d697.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5208
        -- Old: Cold Wind Bear
        -- Old description: Bears living in the polar circle.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aphetto Grifter"
            D.Description = "Trainers whisper of Aphetto Grifter: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/005208-3a7a7bf3-1b0c-415d-9c57-73ac55b1f915.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5209
        -- Old: Night Star Bug
        -- Old description: has undergone a mutation, so it now has electrical energy.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Airdrop Condor"
            D.Description = "Trainers whisper of Airdrop Condor: it reads the wind first."
            D.TexturePath = dir .. "images/cards/005209-ec9796ac-11e2-4295-bf00-f684d0111970.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5210
        -- Old: Ceratopsian
        -- Old description: A heavyweight insect tank that runs on tracks
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jhoira's Toolbox"
            D.Description = "Jhoira's Toolbox leaves this sign: One wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/005210-edb38309-c02c-496c-894f-786a2f6e3d1c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5301
        -- Old: Octopus Coco
        -- Old description: Coco is the little postman of the underwater village. He always greets people with a smile and delivers letters quickly with his eight tentacles. My dream is to one day reach the surface of the sea and see the legendary "Rainbow Bubble".
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Scalpelexis"
            D.Description = "Scalpelexis is known for one thing: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/005301-29c3b7fa-78e7-4a0c-bcdc-4b829638e3f6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5302
        -- Old: Dream Bug
        -- Old description: Chongchong is always dreaming and purring loudly.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Cloud of Faeries"
            D.Description = "Cloud of Faeries is known for one thing: it laughs from somewhere nearby."
            D.TexturePath = dir .. "images/cards/005302-4e76d04a-0038-4b5b-a026-3056ee940da9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5303
        -- Old: Long Duoduo
        -- Old description: A small dragon that can disguise itself as grass, but its divine power is immeasurable.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin King"
            D.Description = "The trail of Goblin King says it clearly: ancient wings darken the sun."
            D.TexturePath = dir .. "images/cards/005303-0c77029a-7f00-490e-bf8b-dce192d72e2f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5304
        -- Old: Lucky Leaf Frog
        -- Old description: Like extremely humid environments and have a lot of water in their bodies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ancient Silverback"
            D.Description = "Ancient Silverback leaves this sign: The trees shake first."
            D.TexturePath = dir .. "images/cards/005304-3f2f8a99-b01d-4d0a-bf1c-a3cf08fbc469.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5305
        -- Old: Tower flower beast
        -- Old description: When her corolla blooms, Towermon's power is fully unleashed.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Uktabi Orangutan"
            D.Description = "No one forgets Uktabi Orangutan when the trees shake first."
            D.TexturePath = dir .. "images/cards/005305-b6a944ef-dbf2-47c9-a245-dfd2533a0680.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5306
        -- Old: Thunder Flame Fang
        -- Old description: Born from the crater of a volcano, Thunderfang can summon lightning and flames. He does not fight to destroy, but to protect the forgotten ancient dragon place. Strength and responsibility go hand in hand.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blurred Mongoose"
            D.Description = "Blurred Mongoose leaves this sign: The sky makes room."
            D.TexturePath = dir .. "images/cards/005306-4b073e3f-6a6f-495a-ab16-39d906b660f1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5307
        -- Old: Tombmelting Dragon
        -- Old description: An ancient dragon from ancient times, guarding the tomb of the Lava King.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Discordant Spirit"
            D.Description = "Discordant Spirit is known for one thing: a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/005307-be67b950-dfe3-4159-aa53-63df25d2a926.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5308
        -- Old: Thunder Beast
        -- Old description: Causes a wide-area lightning strike when roaring.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thundermare"
            D.Description = "Trainers whisper of Thundermare: the world moves through it."
            D.TexturePath = dir .. "images/cards/005308-e936e5cb-0a8e-4348-afea-e5f96b19fe23.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5309
        -- Old: Winter Spring
        -- Old description: Running on a river will cause the river to freeze.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Blinding Angel"
            D.Description = "Where Blinding Angel goes, hope descends with a blade."
            D.TexturePath = dir .. "images/cards/005309-48c25553-6554-4e31-9012-c50da1f0a171.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5310
        -- Old: Glory
        -- Old description: A colorful Pegasus.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serra Avatar"
            D.Description = "A soul so bright it becomes a body."
            D.TexturePath = dir .. "images/cards/005310-288b0976-78e8-4fbe-8607-2e55d8761d3e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5311
        -- Old: Queen of Swimming Day·Su Liyin
        -- Old description: He has his own focus under the sun, and his smile hides his unyielding confidence and sultry aura.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Sun Quan, Lord of Wu"
            D.Description = "When Sun Quan, Lord of Wu appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/005311-6def4492-3f67-4cdb-8a25-c3ddebd125c7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5312
        -- Old: Chi Yang Young General Kasugina
        -- Old description: With hair like flames and full of enthusiasm, he is the most incredible sight in the library.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mogg Fanatic"
            D.Description = "Mogg Fanatic is known for one thing: smoke follows every step."
            D.TexturePath = dir .. "images/cards/005312-ca2ecfd4-c874-4468-8601-87aa110d5a00.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5313
        -- Old: Icefang Mammoth
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Karmic Guide"
            D.Description = "Trainers whisper of Karmic Guide: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/005313-77d23045-905b-44cb-9af9-cc6ad717477d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5314
        -- Old: Lucky Leaf Frog
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gargantuan Gorilla"
            D.Description = "The trail of Gargantuan Gorilla says it clearly: the trees shake first."
            D.TexturePath = dir .. "images/cards/005314-49f367c2-f47e-43e1-9936-4324be664475.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5315
        -- Old: Cake
        -- Old description: A rare insect on the verge of extinction, delicious and fragile.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vexing Beetle"
            D.Description = "Vexing Beetle leaves this sign: Small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/005315-d599d35f-1b73-498b-9a21-831c908a95d8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5316
        -- Old: Gift Box Boxer
        -- Old description: Suddenly pops out of the box and punches you!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Copper Gnomes"
            D.Description = "Where Copper Gnomes goes, a small machine with a stubborn spark."
            D.TexturePath = dir .. "images/cards/005316-d5e326b7-6f6a-4249-a315-c5f017931c73.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5317
        -- Old: Christmas elephant
        -- Old description: Although not the cutest, he can make friends with anyone.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Selenia, Dark Angel"
            D.Description = "Selenia, Dark Angel arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/005317-9c1624f7-8275-46d3-ab7e-7b162e27593f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5318
        -- Old: Tower flower beast
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lightning Angel"
            D.Description = "No one forgets Lightning Angel when hope descends with a blade."
            D.TexturePath = dir .. "images/cards/005318-6518d0c5-58ee-4089-bf19-5030d4319681.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5319
        -- Old: Flat ray
        -- Old description: A mount that Santa Claus rides when delivering gifts in the water.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lu Su, Wu Advisor"
            D.Description = "Lu Su, Wu Advisor arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/005319-9d361823-31ce-42c4-997d-3d3b52c0599a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5401
        -- Old: Shidou Xiaoba
        -- Old description: Weighs several tons and is difficult to move as long as he doesn't move.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Craw Wurm"
            D.Description = "The trail of Craw Wurm says it clearly: a tunnel becomes a warning."
            D.TexturePath = dir .. "images/cards/005401-1a2e6afb-7094-4fa3-9246-58343f8d80b8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5402
        -- Old: Mushroom fish
        -- Old description: A fish that lives on the water, its back is very suitable for mushroom growth.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hypnotic Specter"
            D.Description = "A midnight rider stealing thoughts from the air."
            D.TexturePath = dir .. "images/cards/005402-b5900350-be08-4904-8f1b-cc180ed08485.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5403
        -- Old: Ankylosaurus
        -- Old description: A swift and fierce hunter with a very stiff tail.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Shivan Wurm"
            D.Description = "Shivan Wurm is known for one thing: a tunnel becomes a warning."
            D.TexturePath = dir .. "images/cards/005403-4bc72997-78b0-47aa-a029-bf55f77c3e73.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5404
        -- Old: Icefang Mammoth
        -- Old description: Lives in extremely cold areas and can use Ice Wind Raid.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Woolly Mammoths"
            D.Description = "Where Woolly Mammoths goes, the charge changes the map."
            D.TexturePath = dir .. "images/cards/005404-eaca1216-99c8-4ad5-a51a-3c4ff3b82097.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5405
        -- Old: Caodundun
        -- Old description: Cao Dundun has a very tenacious vitality and can regenerate as long as there is water and sunlight.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thorn Elemental"
            D.Description = "Thorn Elemental is known for one thing: the world moves through it."
            D.TexturePath = dir .. "images/cards/005405-e06bea52-3db1-4b61-8418-77ace9cd70b5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5406
        -- Old: Dead Steel Stone
        -- Old description: An elf with strong water power, the waves it stirs up can sweep away enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Karn, Silver Golem"
            D.Description = "Silver hands, ancient heart, endless memory."
            D.TexturePath = dir .. "images/cards/005406-811a0988-2900-426c-9413-8f1778d99678.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5407
        -- Old: Hayate Fist Boy·Hikaru Nitta
        -- Old description: The shadowy boy on the playground wears an eyepatch to hide the scars of the past, his fist always moving forward.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Royal Assassin"
            D.Description = "Trainers whisper of Royal Assassin: the blade arrives without ceremony."
            D.TexturePath = dir .. "images/cards/005407-b2d51bdf-f118-4a1e-9060-bdf3c78697f2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5408
        -- Old: New Lima
        -- Old description: A cheerful pony with golden hooves and horns that appears in the Year of the Horse.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Revered Unicorn"
            D.Description = "No one forgets Revered Unicorn when wild instinct chooses the path."
            D.TexturePath = dir .. "images/cards/005408-8c642dd2-1a3e-4b08-917e-6e8aed358b72.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5409
        -- Old: Dark Abyss Sheep
        -- Old description: A mysterious creature that absorbs the energy of magnetic fields deep underground and controls this energy
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nightmare"
            D.Description = "Nightmare leaves this sign: Thunder gathers under its hooves."
            D.TexturePath = dir .. "images/cards/005409-c3779fda-5de0-4d80-8af0-95956e87d9e1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 5410
        -- Old: Yanxialong
        -- Old description: It is called a living stratum and rarely moves. Many people mistakenly think that they are stepping on the ground, but they are actually on the body of Yanxialong.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Two-Headed Dragon"
            D.Description = "Trainers whisper of Two-Headed Dragon: the sky remembers this one."
            D.TexturePath = dir .. "images/cards/005410-40fed2c7-c922-41c3-b86b-a8ed41a1308d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6101
        -- Old: Ripple Snake
        -- Old description: Can switch between ice state and water state freely
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thalakos Sentry"
            D.Description = "Thalakos Sentry is known for one thing: winter keeps close company."
            D.TexturePath = dir .. "images/cards/006101-739a13d6-5f73-4166-b923-9db8ee3f2cf7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6102
        -- Old: Glass Butterfly
        -- Old description: Flaps its wings and shoots glass shards to attack
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mesmeric Fiend"
            D.Description = "Mesmeric Fiend is known for one thing: fear gives it room to breathe."
            D.TexturePath = dir .. "images/cards/006102-b6edd4ea-c587-4d93-a675-4cdec3e0b1ca.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6103
        -- Old: Corrupted Thunder Beast
        -- Old description: When colliding at high speed, it can use the electric current generated in the body to paralyze the enemy.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balduvian Shaman"
            D.Description = "No one forgets Balduvian Shaman when lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/006103-74859723-8ddf-4ee6-a0a7-87192c84e8ad.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6104
        -- Old: Ice Peak Ape
        -- Old description: is good at climbing icebergs.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Standard Bearer"
            D.Description = "No one forgets Standard Bearer when the forest gives one warning."
            D.TexturePath = dir .. "images/cards/006104-e0f8e16a-55f0-4147-a01a-dba7938f31c4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6105
        -- Old: Ghost Shark
        -- Old description: Although dead, he is still wandering under the sea.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Razorfin Hunter"
            D.Description = "Razorfin Hunter leaves this sign: The sea answers in song."
            D.TexturePath = dir .. "images/cards/006105-99829552-917a-4373-9772-4255dff542d6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6106
        -- Old: Ghost Hedgehog
        -- Old description: A creature formed from the souls of hedgehogs who died in forest fires.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Frozen Shade"
            D.Description = "The trail of Frozen Shade says it clearly: its shadow carries a blade."
            D.TexturePath = dir .. "images/cards/006106-cbd0b4ff-f49f-4079-991a-f66d1220235d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6107
        -- Old: One-eyed octopus
        -- Old description: Ink containing neurotoxins can make opponents tired and weak.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Corpses"
            D.Description = "Wall of Corpses is known for one thing: the path ends here."
            D.TexturePath = dir .. "images/cards/006107-dde6d3d1-75db-445f-9f17-632ee0292211.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6108
        -- Old: Blue Bird
        -- Old description: Feathers can block and bounce flying objects
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ascending Aven"
            D.Description = "Ascending Aven is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/006108-bd8b17df-615c-4cc1-af1a-2fc35a985af9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6109
        -- Old: Soul Leaving Insect
        -- Old description: Can cause the opponent's soul to temporarily leave the body
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Benalish Hero"
            D.Description = "Benalish Hero is known for one thing: silence bends around its mind."
            D.TexturePath = dir .. "images/cards/006109-32dcd608-ef94-4047-841d-5c3471375d5d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6110
        -- Old: Nemesis
        -- Old description: The ability to absorb stars launches an impact
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Coalition Honor Guard"
            D.Description = "No one forgets Coalition Honor Guard when heavy paws end the debate."
            D.TexturePath = dir .. "images/cards/006110-c5b7be3e-b4af-46d4-bcc6-b44c651f2012.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6111
        -- Old: Star Jellyfish
        -- Old description: It can swim and fly, and can light up its tentacles to emit strong light at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Glimmering Angel"
            D.Description = "Where Glimmering Angel goes, hope descends with a blade."
            D.TexturePath = dir .. "images/cards/006111-f14f55e4-eded-4a86-87f4-b8fa6f30bc0f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6112
        -- Old: Earth Mountain Turtle
        -- Old description: Carrying a huge mountain on his back.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Mountaineer"
            D.Description = "The trail of Goblin Mountaineer says it clearly: the road bends under its weight."
            D.TexturePath = dir .. "images/cards/006112-66a072ec-717c-453e-a331-49056e3d917d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6113
        -- Old: Tusk Pig
        -- Old description: The fangs can penetrate the ground and are good at burrowing attacks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Treetop Scout"
            D.Description = "Treetop Scout leaves this sign: Dust rises around it."
            D.TexturePath = dir .. "images/cards/006113-2fa39646-a609-4b37-b8de-97893ae43c49.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6114
        -- Old: Crystal Beetle
        -- Old description: By eating underground minerals, strange ores can gradually grow on its back.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pygmy Pyrosaur"
            D.Description = "Pygmy Pyrosaur is known for one thing: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/006114-42e01129-254c-4a16-9f11-21a7a9c66f32.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6115
        -- Old: Desert Lizard
        -- Old description: Species that live in dry rocky desert areas can live without water at all.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Heart Sliver"
            D.Description = "Where Heart Sliver goes, a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/006115-27a83ab6-0d15-49e4-90e3-b3a2a095c632.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6116
        -- Old: Boxing Kangaroo
        -- Old description: Boxing contains explosive power.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Laccolith Whelp"
            D.Description = "No one forgets Laccolith Whelp when the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/006116-86eb5b9e-320f-40de-8668-ee0c08f63ec1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6117
        -- Old: Steel Armored Rhinoceros
        -- Old description: By eating various metals, the outer armor takes on different alloy qualities.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Metallic Sliver"
            D.Description = "Metallic Sliver leaves this sign: Old machinery finds its rhythm."
            D.TexturePath = dir .. "images/cards/006117-30143f4f-9846-448d-8797-8fe0bc0cc5df.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6118
        -- Old: Fantasy Bat
        -- Old description: Fantasy creatures that can only be detected using magic detectors are invisible to the naked eye.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Vapor"
            D.Description = "No one forgets Wall of Vapor when the path ends here."
            D.TexturePath = dir .. "images/cards/006118-309c1b2a-0230-4b66-84a0-32b8cd6d31eb.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6119
        -- Old: Hypnotic Peacock
        -- Old description: Being in a dream for a long time, can spiritually connect with other dream creatures.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kjeldoran Warrior"
            D.Description = "The trail of Kjeldoran Warrior says it clearly: a thought changes the fight."
            D.TexturePath = dir .. "images/cards/006119-ce76f38f-566e-49ff-b197-510cfa1cb51c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6120
        -- Old: Steel Thorn Beast
        -- Old description: Creature covered with steel spikes
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phyrexian War Beast"
            D.Description = "Where Phyrexian War Beast goes, the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/006120-e7a83384-8762-4028-8cab-b690593790a6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6121
        -- Old: Mechanical Bird
        -- Old description: Flying monitoring.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Aesthir Glider"
            D.Description = "Trainers whisper of Aesthir Glider: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/006121-35a8080f-ca3c-46fe-81cf-003ac7ba7f24.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6123
        -- Old: Engineering icon
        -- Old description: The body structure is good at lifting and carrying heavy objects and can play an important role in building houses.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Roterothopter"
            D.Description = "The trail of Roterothopter says it clearly: a relic cuts the air."
            D.TexturePath = dir .. "images/cards/006123-22148a1a-2172-4718-8ee4-08770eafed9f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6124
        -- Old: Volcano Dragon
        -- Old description: A species active in volcanic areas and extremely heat-resistant.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Orcish Lumberjack"
            D.Description = "Trainers whisper of Orcish Lumberjack: heat gathers around its name."
            D.TexturePath = dir .. "images/cards/006124-21ef13e3-658c-43a3-a290-4c5dde8e8b55.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6125
        -- Old: Electromagnetic Dog
        -- Old description: An electromagnetic canine creature.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Stormscape Familiar"
            D.Description = "Stormscape Familiar leaves this sign: It reads the wind first."
            D.TexturePath = dir .. "images/cards/006125-4c831c42-77a0-4f4f-9628-ad630541cf66.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6126
        -- Old: Color-changing deer
        -- Old description: Colorful forest creatures that can change color in different environments to blend into the environment.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Argothian Pixies"
            D.Description = "The trail of Argothian Pixies says it clearly: it laughs from somewhere nearby."
            D.TexturePath = dir .. "images/cards/006126-78276d53-7c01-45b4-a136-a9f3674e1f26.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6127
        -- Old: Greedy Dragon
        -- Old description: Can eat any object no matter how hard it is.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Chariot"
            D.Description = "Trainers whisper of Goblin Chariot: lightning waits under the skin."
            D.TexturePath = dir .. "images/cards/006127-f7571801-c1df-4387-ae61-1fefd449ebf9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6201
        -- Old: Rainbow Koala
        -- Old description: Throwing rainbow balls can confuse enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Tombstones"
            D.Description = "Trainers whisper of Wall of Tombstones: it does not chase. It does not need to."
            D.TexturePath = dir .. "images/cards/006201-55da1e86-fe18-486a-b510-f941e6f6e378.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6202
        -- Old: Ice and Snow Spirit Wave
        -- Old description: You can only go out to play in winter
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Volunteer Reserves"
            D.Description = "The trail of Volunteer Reserves says it clearly: winter keeps close company."
            D.TexturePath = dir .. "images/cards/006202-5344911f-25e8-45ce-87b9-607e42db0139.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6203
        -- Old: Faqi
        -- Old description: A wolf with pharaoh's superpowers
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fleeting Aven"
            D.Description = "Fleeting Aven leaves this sign: It reads the wind first."
            D.TexturePath = dir .. "images/cards/006203-246a2758-0096-43b9-8193-d6ae5b41b6e6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6204
        -- Old: Komi Sheep
        -- Old description: Need to eat circuit boards to keep the brain’s CPU running
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Viseling"
            D.Description = "Viseling is known for one thing: old gears wake with purpose."
            D.TexturePath = dir .. "images/cards/006204-a3eb86c5-d6fe-4dde-ad07-c3109b3a1611.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6205
        -- Old: Rainbow Dragon
        -- Old description: Super Rainbow Dragon.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rainbow Crow"
            D.Description = "Where Rainbow Crow goes, a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/006205-7e622ad2-473f-489e-b4cf-bbdcc44d0cde.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6206
        -- Old: Dada Duck
        -- Old description: A cute little duck.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wirewood Hivemaster"
            D.Description = "Trainers whisper of Wirewood Hivemaster: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/006206-ea55b4fc-366f-4906-9eaa-9085f6a22612.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6207
        -- Old: Steel Teeth Dog
        -- Old description: A creature covered in steel.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Millikin"
            D.Description = "No one forgets Millikin when built long ago, still obeying."
            D.TexturePath = dir .. "images/cards/006207-0550133b-22cf-4ecd-b89a-8c2f0beeaa22.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6208
        -- Old: Ore Beast
        -- Old description: Live in mineral-rich caves deep underground.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chambered Nautilus"
            D.Description = "The trail of Chambered Nautilus says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/006208-860c613d-d031-4c2a-922b-39f4eec04e18.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6209
        -- Old: Angel Eagle
        -- Old description: A heavenly creature that flies at super high altitudes and can hit the ground with high-speed lightning strikes
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balshan Beguiler"
            D.Description = "Trainers whisper of Balshan Beguiler: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/006209-5d977da2-4024-4c7b-b557-e89564f8d465.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6301
        -- Old: Ghost Egg
        -- Old description: No one has ever known the true appearance of the mysterious creature inside the eggshell.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Derelor"
            D.Description = "Derelor is known for one thing: old magic walks beside it."
            D.TexturePath = dir .. "images/cards/006301-530043ad-d4bf-4fb0-b6e0-f8a744968cfc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6302
        -- Old: Lightning Sheep
        -- Old description: will attract lightning from the sky during thunderstorms.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Abyssal Specter"
            D.Description = "No one forgets Abyssal Specter when it steals courage before blood."
            D.TexturePath = dir .. "images/cards/006302-a7e6582d-e569-4131-b212-3ef1767be107.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6303
        -- Old: Radix Snake Flower
        -- Old description: A snake-shaped plant with mysterious toxins in its body.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "River Boa"
            D.Description = "River Boa leaves this sign: Patience wears scales."
            D.TexturePath = dir .. "images/cards/006303-fff58d35-eb23-47ee-9b8c-6919ad1a413a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6304
        -- Old: Bubbles
        -- Old description: An aquatic creature whose entire body is made of bubbles.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bottle Gnomes"
            D.Description = "No one forgets Bottle Gnomes when tiny gears, troublesome courage."
            D.TexturePath = dir .. "images/cards/006304-645297d1-ee77-4879-83eb-8114fbabb9a4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6305
        -- Old: Bubble Jellyfish
        -- Old description: A jellyfish with a foamy body.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ophidian"
            D.Description = "Where Ophidian goes, patience wears scales."
            D.TexturePath = dir .. "images/cards/006305-0de0a010-76a7-460f-bb4e-a152c10c3bb7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6306
        -- Old: Gugu
        -- Old description: Goo-goo-goo-goo-goo.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ambush Commander"
            D.Description = "The trail of Ambush Commander says it clearly: the hunt begins in silence."
            D.TexturePath = dir .. "images/cards/006306-7485da91-a051-4680-8a25-c81fdaa77130.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6307
        -- Old: Lala
        -- Old description: Huhhhhhhhh.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rofellos, Llanowar Emissary"
            D.Description = "Rofellos, Llanowar Emissary walks in with history close behind."
            D.TexturePath = dir .. "images/cards/006307-6aa5cc65-f8f1-4f6f-8b4e-2fedccbda684.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6308
        -- Old: Mud Hippopotamus
        -- Old description: Likes to live in a cool quagmire surrounded by shade.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ayesha Tanaka"
            D.Description = "The old stories keep a place for Ayesha Tanaka."
            D.TexturePath = dir .. "images/cards/006308-8ce912d9-406b-4eba-97be-3bf1d425ee05.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6309
        -- Old: Sunshine Trainee·Natsume Rin
        -- Old description: The energetic girl on the playground is full of energy, never late for practice, and her smile is brighter than the sun!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dreamborn Muse"
            D.Description = "No one forgets Dreamborn Muse when a lantern flickers when it passes."
            D.TexturePath = dir .. "images/cards/006309-9e36cf11-5dfb-4593-8335-f739b7c7829c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6310
        -- Old: Fighting Girl Emily
        -- Old description: A girl who is always full of energy, running, punching, and challenging the limits, she is never absent!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lin Sivvi, Defiant Hero"
            D.Description = "The old stories keep a place for Lin Sivvi, Defiant Hero."
            D.TexturePath = dir .. "images/cards/006310-e574e522-2632-4cd4-8545-c582ac3b641f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6311
        -- Old: Candle Fox
        -- Old description: Eyes like candles are watching you
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Menacing Ogre"
            D.Description = "Menacing Ogre leaves this sign: Smoke follows every step."
            D.TexturePath = dir .. "images/cards/006311-5360a871-6932-45b2-bc94-1bd414e38906.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6312
        -- Old: Palm-tailed Frog
        -- Old description: A magical creature born from the split palm of the Night Tide Demon King
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Quirion Ranger"
            D.Description = "Quirion Ranger is known for one thing: blue shadows move below."
            D.TexturePath = dir .. "images/cards/006312-56efe72c-6d7f-44f6-ac74-01af9305c4b6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6313
        -- Old: Wave Demon
        -- Old description: The red plants floating on the sea are said to be closely related to a certain white rose in the desert.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elvish Champion"
            D.Description = "The trail of Elvish Champion says it clearly: the forest leans closer."
            D.TexturePath = dir .. "images/cards/006313-61d00f31-d8fd-4272-87ba-6bcb65c609c6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6314
        -- Old: Star Core Electric Spider
        -- Old description: Can inspire powerful electric energy to penetrate defenses
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fleeting Image"
            D.Description = "The trail of Fleeting Image says it clearly: the lie casts a true shadow."
            D.TexturePath = dir .. "images/cards/006314-35971a15-7d8f-4b05-918e-605a26a11f4c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6315
        -- Old: Jiajia
        -- Old description: likes to laugh, and the plants around him will thrive when they hear his laughter.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Priest of Titania"
            D.Description = "Priest of Titania is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/006315-965c33c3-0c68-4516-b8b0-5a0552ed44b6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6316
        -- Old: Velvet Vine
        -- Old description: It has green fur on its body, and its tail is made of tough vines.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tribal Forcemage"
            D.Description = "Tribal Forcemage is known for one thing: old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/006316-104735d7-6cea-4d4a-8cc8-e1934883da97.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6317
        -- Old: Night Flower
        -- Old description: Lives in the Meteor Forest, and when in contact with it, memories of past lives will be recalled.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "River Merfolk"
            D.Description = "River Merfolk leaves this sign: A ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/006317-27d7fa54-4b89-4a9a-b088-4b89c525c1ea.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6318
        -- Old: Lanfu
        -- Old description: Parasitic organisms on coral reefs can hide themselves by retracting their bodies into flower petals.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thalakos Drifters"
            D.Description = "No one forgets Thalakos Drifters when deep currents keep its secret."
            D.TexturePath = dir .. "images/cards/006318-468e13d2-6bd7-403c-8e2e-e00917b39597.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6319
        -- Old: Cotton seedlings
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Copper-Leaf Angel"
            D.Description = "Copper-Leaf Angel leaves this sign: Light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/006319-7be413dd-d6e0-4bd3-8c14-4dbe44e8ee41.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6320
        -- Old: Snow Hammer
        -- Old description: Every year, children put a carrot nose on it, but it actually has no nose.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wayward Angel"
            D.Description = "Trainers whisper of Wayward Angel: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/006320-1fb726e8-162d-4143-9778-32476c0e1ab1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6321
        -- Old: Owl Griffin
        -- Old description: Santa’s new aerial vehicle is quite warm to ride on.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Lavaborn Muse"
            D.Description = "The trail of Lavaborn Muse says it clearly: the past borrows a body."
            D.TexturePath = dir .. "images/cards/006321-4cbc94fb-9e3f-4075-bb6a-8f04862dc585.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6322
        -- Old: Buu
        -- Old description: Did he grow out of that: Shh... Wouldn't that be too rude:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Matron"
            D.Description = "No one forgets Goblin Matron when the road bends under its weight."
            D.TexturePath = dir .. "images/cards/006322-862409e1-33e0-474c-8627-b03d25b654b9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6323
        -- Old: Cola Cola
        -- Old description: Myopia is inherited from my ancestors, so I already wear glasses in the eggshell, and the glasses can get bigger as I grow up.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Meddling Mage"
            D.Description = "Meddling Mage leaves this sign: Old study becomes sudden power."
            D.TexturePath = dir .. "images/cards/006323-176f84c6-aa5e-449c-bd2b-cc91a898f0c7.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6401
        -- Old: Sporosaurus
        -- Old description: The spores on its tail can suffocate enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spike Weaver"
            D.Description = "No one forgets Spike Weaver when a roar becomes weather."
            D.TexturePath = dir .. "images/cards/006401-9c561a2a-91c6-4d4b-9f96-bffd43a00478.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6402
        -- Old: Three-headed piranha
        -- Old description: It disguises itself as a plant and hides in the depths of the forest, and suddenly opens its mouth to attack when the animals are not paying attention.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Maro"
            D.Description = "The trail of Maro says it clearly: the world moves through it."
            D.TexturePath = dir .. "images/cards/006402-b4c3853c-8b41-4bce-b4e0-3824fc5888c4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6403
        -- Old: Penpen
        -- Old description: A baby elephant who loves various flowerpots as hats.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ravenous Baloth"
            D.Description = "The trail of Ravenous Baloth says it clearly: instinct settles the argument."
            D.TexturePath = dir .. "images/cards/006403-c98182d6-5b25-4493-9286-f29633e1bec4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6404
        -- Old: Flower Dream
        -- Old description: The Flower Messenger who controls dreams
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tradewind Rider"
            D.Description = "No one forgets Tradewind Rider when the past borrows a body."
            D.TexturePath = dir .. "images/cards/006404-09412374-3645-4644-952e-2beaefb3104b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6405
        -- Old: Giant Mouth Rock
        -- Old description: It holds rocks and soil together.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Polar Kraken"
            D.Description = "Trainers whisper of Polar Kraken: depth itself reaches upward."
            D.TexturePath = dir .. "images/cards/006405-aee01e9c-0445-4228-a73a-3e5744844ed3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6406
        -- Old: Fungus Hunter Squid
        -- Old description: Dangerous creatures in the water that release poison to attack enemies.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Giant Octopus"
            D.Description = "No one forgets Giant Octopus when eight arms, one patient mind."
            D.TexturePath = dir .. "images/cards/006406-5b707b2d-63e1-4c2c-ba42-9e027f02b1ff.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6407
        -- Old: Street guy Bruno
        -- Old description: A hip-hop master from Brooklyn, sunny, loud, a bit fierce but actually a very nice person.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ali from Cairo"
            D.Description = "Where Ali from Cairo goes, buried things answer softly."
            D.TexturePath = dir .. "images/cards/006407-42027613-d261-4ce2-8ba1-7a2480c660f8.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6408
        -- Old: Cotton seedlings
        -- Old description: The cute cotton elf will burrow into the soil to avoid danger when in the fields.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zodiac Dragon"
            D.Description = "Where Zodiac Dragon goes, old flame gathers under its wings."
            D.TexturePath = dir .. "images/cards/006408-46652ae3-6572-4296-939b-0789923180d5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6409
        -- Old: Double leaf strain
        -- Old description: Twin plants, the water spirit is responsible for absorbing water, and the grass spirit is responsible for providing nutrients.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Blossoms"
            D.Description = "No one forgets Wall of Blossoms when green life grows teeth."
            D.TexturePath = dir .. "images/cards/006409-7eb4a1a3-efcf-4c9a-ad1f-0a3f8f2b456f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 6410
        -- Old: Zeshui Beast
        -- Old description: The guardian spirit in the lake controls the balance of the water. When abnormal forces are about to cause floods or disasters, the Zesui Beast will warn everyone.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Marjhan"
            D.Description = "Trainers whisper of Marjhan: old water coils around it."
            D.TexturePath = dir .. "images/cards/006410-b6aa3299-3b7a-4ea5-bc1f-beead26d8116.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7101
        -- Old: Le Yu Bird
        -- Old description: A lively and cheerful bird spirit, it travels through the forest with its melodious songs. It can influence the emotions of its partners with its melody. It is the "sonic assistant" in the team.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Krosan Wayfarer"
            D.Description = "Krosan Wayfarer leaves this sign: Claws decide what words cannot."
            D.TexturePath = dir .. "images/cards/007101-5356e684-c2fc-465e-a16c-7300824d2a8d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7102
        -- Old: Leaf Blade
        -- Old description: An insect-shaped elf with wings as sharp as blades and as fast as the wind in the dense forest.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Quirion Explorer"
            D.Description = "Quirion Explorer is known for one thing: chitin clicks in the grass."
            D.TexturePath = dir .. "images/cards/007102-141a031d-f899-497b-adf7-4af142078085.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7103
        -- Old: Leaf Claw Beast
        -- Old description: A small grass-type beast, covered with vine leaves, agile and a master of disguise in the jungle.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Harvest Mage"
            D.Description = "No one forgets Harvest Mage when the trees shake first."
            D.TexturePath = dir .. "images/cards/007103-95b29329-b9a3-4d59-b0f8-2abc67337760.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7104
        -- Old: Earthdramon
        -- Old description: A calm and taciturn dragon elf, he often patrols Iwahara Cliff alone. He is good at ground cracking and shock attacks and is the tactical core of the team.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elvish Pioneer"
            D.Description = "Elvish Pioneer is known for one thing: buried things answer softly."
            D.TexturePath = dir .. "images/cards/007104-7e71fc2d-643b-4fad-89a8-624d330895d6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7105
        -- Old: Rockfist Beast
        -- Old description: His body is as hard as rock, and his fists can break boulders. He is famous for his defense and punches, and is a rock-steady shield wall character in battle.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Diligent Farmhand"
            D.Description = "Diligent Farmhand leaves this sign: Stone remembers the impact."
            D.TexturePath = dir .. "images/cards/007105-7bb40e09-6855-46d5-9bc9-bc6b2b0d7653.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7106
        -- Old: Babu
        -- Old description: A mysterious little beast that lives deep in the forest. It is gentle but full of curiosity and often sneaks out at night.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Mistform Sliver"
            D.Description = "No one forgets Mistform Sliver when real enough when the blade lands."
            D.TexturePath = dir .. "images/cards/007106-79a53c29-6753-4f6b-b4ee-00c1adf7e9c6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7107
        -- Old: Rakamon
        -- Old description: The elves who live in the clouds are as light as mist and generate light every step of the way. They have the ability to control the weather and are the guides of the sky.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Urborg Elf"
            D.Description = "Where Urborg Elf goes, a thought changes the fight."
            D.TexturePath = dir .. "images/cards/007107-1d8521bf-d026-4d26-831e-a2f253307c93.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7108
        -- Old: Fist Raccoon
        -- Old description: A passionate fighting elf, wearing boxing gloves, with flexible movements and extremely fast attack rhythm, he is a fighting star in the ring.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crafty Pathmage"
            D.Description = "Where Crafty Pathmage goes, one word tilts the battle."
            D.TexturePath = dir .. "images/cards/007108-c5d91378-f831-40ef-a79b-b044af1470e0.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7109
        -- Old: Starryu Deer
        -- Old description: The mysterious guardian of the night sky, whose steps carry starlight and can summon the power of the stars.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Metathran Soldier"
            D.Description = "The trail of Metathran Soldier says it clearly: the next spark knows where to land."
            D.TexturePath = dir .. "images/cards/007109-650d40d0-78ec-4b6e-8ea0-28d43ce175d5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7110
        -- Old: Secret Love Bird
        -- Old description: A taciturn bird elf with emotional fluctuations hidden in his eyes. He is good at shadow and psychic skills. He is an observer who hides his strength.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Marsh Viper"
            D.Description = "No one forgets Marsh Viper when patience wears scales."
            D.TexturePath = dir .. "images/cards/007110-ba4c0606-f9af-4dee-bc36-5051395b5f44.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7111
        -- Old: Tree Elephant Beast
        -- Old description: Forest guardian, wearing tree armor, powerful, good at crushing and defense.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wirewood Guardian"
            D.Description = "Wirewood Guardian leaves this sign: Dust rises around it."
            D.TexturePath = dir .. "images/cards/007111-e8676b1f-e37c-4ae1-9dbe-d000369fa422.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7112
        -- Old: Water Bubble Spirit
        -- Old description: A happy water spirit creature that often floats with bubbles and can control water flow to fight.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spiketail Hatchling"
            D.Description = "Trainers whisper of Spiketail Hatchling: it wheels above the smoke."
            D.TexturePath = dir .. "images/cards/007112-9988f0fe-a7d4-44f9-b37c-fa30014ea215.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7113
        -- Old: Tidal Wing
        -- Old description: Water elves active on the coast have gliding-like fins and can fly across the sky with the help of waves. It is good at controlling water flow for high-speed impact, and has a lively personality.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Taskmaster"
            D.Description = "Goblin Taskmaster is known for one thing: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007113-feff65ca-aedf-4434-b701-590d600d1a0b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7114
        -- Old: Thunderfish
        -- Old description: An electric fish with a bullet-like body, it swims extremely fast, and its electric fins can release high-voltage current. It is a strong fighter in underwater battles and often stuns its opponents with electric waves.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dream Fighter"
            D.Description = "No one forgets Dream Fighter when the next spark knows where to land."
            D.TexturePath = dir .. "images/cards/007114-aec06bc9-553c-4e01-8b43-a4eeaa511b4d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7115
        -- Old: Fire Tailed Beast
        -- Old description: A flame-type dragon beast with a continuously burning tail. It lives in volcanic areas. When it moves, it will leave a trail of fire marks on the ground. It can clear out enemies with its tail of fire.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pardic Swordsmith"
            D.Description = "The trail of Pardic Swordsmith says it clearly: a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007115-44ac622c-db04-41bf-817e-4698843e6346.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7116
        -- Old: Fire Tiger
        -- Old description: A small tiger spirit with a fiery mane. Although it is small in size, it has an extremely stubborn personality. It is good at close combat and often scares away enemies with heat waves.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Bogardan Firefiend"
            D.Description = "Bogardan Firefiend leaves this sign: The past borrows a body."
            D.TexturePath = dir .. "images/cards/007116-80ff9650-d25f-4c6b-b96e-794b50af3f14.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7117
        -- Old: Fire Winged Dragon
        -- Old description: A flying dragon spirit surrounded by flames, its back and tail are burning. It is good at diving in flames in the air. It is one of the rulers of the fire attribute.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Carrion Feeder"
            D.Description = "Trainers whisper of Carrion Feeder: the grave forgot to hold it."
            D.TexturePath = dir .. "images/cards/007117-88042031-64af-4f84-85d5-95992b43aa6c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7118
        -- Old: Spirit Squirrel
        -- Old description: A small spiritual beast that is common in the forest. The leaves on its head can sense weather changes, and its tail stores seed energy. It is the closest partner to nature in the grass system.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gustcloak Runner"
            D.Description = "Gustcloak Runner leaves this sign: The hunt begins in silence."
            D.TexturePath = dir .. "images/cards/007118-eb227f65-9189-41ed-94a0-2aa21cad26f5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7119
        -- Old: Flamehorn Beast
        -- Old description: A fire-based beast that lives in lava fields, with eternal flames burning on its horns. It is good at charging and spitting lava, and its attacks are both fast and destructive.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Goblin Patrol"
            D.Description = "The trail of Goblin Patrol says it clearly: old weight gives it purpose."
            D.TexturePath = dir .. "images/cards/007119-d0fcd8d3-f159-49a1-8dd9-582ae4a0adc3.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7120
        -- Old: Lava Fang
        -- Old description: A small fire-type dragon with scorching rock fangs hidden in the corner of its mouth. It has a powerful bite and the ability to melt rocks. It is a flame hunter in the cave.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rogue Kavu"
            D.Description = "Rogue Kavu is known for one thing: smoke follows every step."
            D.TexturePath = dir .. "images/cards/007120-61e1a445-129d-4bb9-a8b0-3f55e3e0bc58.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7201
        -- Old: Green Leaf Essence
        -- Old description: A plant elf whose whole body is wrapped in young leaves, it can absorb sunlight and quickly restore its physical strength. It moves lightly and is a healer deep in the forest.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Broodhatch Nantuko"
            D.Description = "Where Broodhatch Nantuko goes, small bodies carry endless hunger."
            D.TexturePath = dir .. "images/cards/007201-38315ba3-57a0-4aa0-b1bc-4b1fcdd763d4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7202
        -- Old: Winged Thunderworm
        -- Old description: An insect spirit that can fly with electricity, its wings vibrate like thunder, has excellent maneuverability and lightning attacks, and is a lightning-quick hunter.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thalakos Dreamsower"
            D.Description = "Trainers whisper of Thalakos Dreamsower: one word tilts the battle."
            D.TexturePath = dir .. "images/cards/007202-d725cdc0-3a85-4722-bb13-40c336f511b6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7203
        -- Old: Flower Fairy
        -- Old description: A fairy-type elf born among flowers, with an elegant figurine and the ability to heal pollen and hypnotize the language of flowers, she is a gentle guardian of nature.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crypt Rats"
            D.Description = "Where Crypt Rats goes, a shadow learns its name."
            D.TexturePath = dir .. "images/cards/007203-f9b2f697-01cc-4610-b4aa-cae83b38647a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7204
        -- Old: Flower Wing Spirit
        -- Old description: An agile elf that often flies in the sea of flowers. Its wings are as light as petals. It is good at confusing enemies and moving quickly. It is a representative of speed and charm.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spiny Starfish"
            D.Description = "Spiny Starfish leaves this sign: The water flashes, then stills."
            D.TexturePath = dir .. "images/cards/007204-c4242dda-6078-481d-a068-e7b10c873b89.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7205
        -- Old: Hua Yunling
        -- Old description: A flower elf who is born with fragrance. Her wings are as translucent as crystal. She can influence the emotions of others with the fragrance of flowers. She is the messenger of the melody of flowers.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Vodalian Hypnotist"
            D.Description = "No one forgets Vodalian Hypnotist when a ripple becomes a warning."
            D.TexturePath = dir .. "images/cards/007205-721fd877-0a28-4002-8b47-058bac4ac44d.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7206
        -- Old: Blue Flame Spirit
        -- Old description: A fire elf clad in blue flames with a cold personality. He is good at controlling high-temperature green flames. He is an expert in long-range firepower combat with precise shots.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hyperion Blacksmith"
            D.Description = "Where Hyperion Blacksmith goes, heat gathers around its name."
            D.TexturePath = dir .. "images/cards/007206-44d499a9-fe7c-4a1a-9eb3-a7fd9f85ae08.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7207
        -- Old: Blue Bat Beast
        -- Old description: A rare bat beast that lives in the Cold Crystal Cave. It has an ice crystal core on its chest. It can release cold air to freeze enemies and fly at high speeds with its wings.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Soulcatcher"
            D.Description = "Soulcatcher leaves this sign: A bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/007207-14d24d2f-699b-46d8-9353-45e6a67f99d2.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7208
        -- Old: Teng Yueling
        -- Old description: A small dragon-shaped elf covered in vines, active among the tree canopies. He moves quickly and is good at entangling enemies and resonating with nature in a fighting style.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Mulch"
            D.Description = "Trainers whisper of Wall of Mulch: it does not chase. It does not need to."
            D.TexturePath = dir .. "images/cards/007208-8b3b4448-50f0-4996-94a1-db9ce356d925.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7209
        -- Old: Mushroom Spirit
        -- Old description: Mushroom elves who look cute but have cunning personalities can secrete spores to disturb enemies. They often disguise themselves with cute appearances and are little traps in the forest.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Elves of Deep Shadow"
            D.Description = "No one forgets Elves of Deep Shadow when the road bends under its weight."
            D.TexturePath = dir .. "images/cards/007209-f395278e-6d74-4f35-af9d-21bad7b19763.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7210
        -- Old: Papa crab
        -- Old description: A naive amphibious elf with a hard back that can resist attacks. It moves slowly but has amazing defense. It likes to stay in warm streams.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Silver Erne"
            D.Description = "Trainers whisper of Silver Erne: it reads the wind first."
            D.TexturePath = dir .. "images/cards/007210-685076cc-098c-4f98-918c-0ad825eda10f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7211
        -- Old: Flash Bubble Fox
        -- Old description: A little fox spirit full of electricity. Its tail stores electricity. It has a lively personality. It can control thunder and lightning to carry out quick attacks. It is a lightning-quick explorer.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Thunder Wall"
            D.Description = "No one forgets Thunder Wall when the path ends here."
            D.TexturePath = dir .. "images/cards/007211-4fc5d510-c4f7-4a09-bf86-83c3fa3f8928.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7212
        -- Old: Amphibious Stone Spirit
        -- Old description: Ice elves with crystal energy in their bodies live deep in mines. They are good at creating shields and reflecting energy, and are reliable partners for exploring the underground.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wonder"
            D.Description = "Wonder leaves this sign: Winter keeps close company."
            D.TexturePath = dir .. "images/cards/007212-44670666-9028-4b4a-a5af-a3bf35fc6a21.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7213
        -- Old: Flash Fox
        -- Old description: A vibrant fox elf, the flames on its tail and back will beat as it runs. Outgoing and curious, he is good at disrupting enemies with his flickering movements and is one of the most dexterous attackers in the fire system.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Warbreak Trumpeter"
            D.Description = "Where Warbreak Trumpeter goes, a red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007213-fc942957-1067-428c-8ee1-01f9e260efe1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7214
        -- Old: Deer Leaf Beast
        -- Old description: The grass-type deer lives deep in the forest. Its horn-like branch buds can sense the changes of the seasons, and the leaves on its surface can release healing power. It has a calm and quiet personality and is one of the spiritual beasts that protects the balance of the forest.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nimble Mongoose"
            D.Description = "No one forgets Nimble Mongoose when old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/007214-99e5ecf5-a662-4df0-a6ba-9177c62b6503.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7301
        -- Old: Prokaryotic sequence·Qimi
        -- Old description: A mysterious artificial life form composed of blue and red energy flow, with the core number "01" engraved on its shoulder. Possessing extremely high data processing capabilities, he often leads actions with calmness and rationality, and also has the potential for independent evolution.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Doomsday Specter"
            D.Description = "Trainers whisper of Doomsday Specter: it steals courage before blood."
            D.TexturePath = dir .. "images/cards/007301-85206cc1-5484-40c6-b11d-b8d6fad4fc5c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7302
        -- Old: Ni Feng Girl Liyin
        -- Old description: An alien agent from the electronic space, wearing a neon armor and having malfunction signals reflected in his eyes. The fighting style is sharp and fast, and he is good at digital cutting and information penetration. He is an awakener who resists the system.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Xira Arien"
            D.Description = "Xira Arien arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/007302-21fa636b-8ce8-40b6-a4d0-3191a664bd92.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7303
        -- Old: Shadow Ember
        -- Old description: A flaming dragon born from the lava abyss, its body is as black as iron rock, and its wings are burning with eternal fire. The roar can shatter mountains and is a symbol of destruction and rebirth.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Darigaaz, the Igniter"
            D.Description = "Darigaaz, the Igniter arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/007303-54dcf5e3-4303-41a3-b54c-24a9d462ce07.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7304
        -- Old: Sugar Horse
        -- Old description: This pony spirit animal lives in the Candy Valley. It has a mane as fluffy as sugar candies and a gentle personality. It is the favorite companion of children. Sugar energy stored in the body can resolve toxins and negative states.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arrogant Wurm"
            D.Description = "Trainers whisper of Arrogant Wurm: a tunnel becomes a warning."
            D.TexturePath = dir .. "images/cards/007304-11b849c7-c91d-4c67-a357-f7d17f9b187a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7305
        -- Old: Bubble Chirp
        -- Old description: The baby shark is full of bubble energy and has a cheerful personality, always making bubbles to express his emotions. It is the first choice elf for introductory trainers of the water system.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chicken à la King"
            D.Description = "Chicken à la King is known for one thing: a bright wing cuts the sky."
            D.TexturePath = dir .. "images/cards/007305-3fcefcab-8988-47e8-89bb-9b76f14c9d8b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7306
        -- Old: Blazing Wolf Split
        -- Old description: A strong and flexible werewolf warrior, he is good at combining fire and melee combat to carry out rapid and continuous attacks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Crosis, the Purger"
            D.Description = "Crosis, the Purger arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/007306-e5f336d8-12a4-482d-8ffd-c205858c72ba.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7307
        -- Old: Frost Sky Wings
        -- Old description: The ice dragon soars above the extremely cold clouds. Its body is condensed by crystal frost, and it can freeze everything when it flaps its wings. Calm and noble, he is often called the "King of the North".
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "B.F.M. (Big Furry Monster)"
            D.Description = "Where B.F.M. (Big Furry Monster) goes, a roar becomes weather."
            D.TexturePath = dir .. "images/cards/007307-a9f9c279-e382-4feb-9575-196e7cf5d7dc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7308
        -- Old: Burning Shadow
        -- Old description: A familiar born from ashes, it likes to sleep in hot places.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Molten Hydra"
            D.Description = "Molten Hydra leaves this sign: A red spark refuses to die."
            D.TexturePath = dir .. "images/cards/007308-95234b29-9ac8-4200-b42d-9653ba51b010.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7309
        -- Old: Charming Moon Spirit
        -- Old description: A mysterious spirit that appears under the moonlight, with a calm and charming personality. Good at using moon shadow magic.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rasputin Dreamweaver"
            D.Description = "The old stories keep a place for Rasputin Dreamweaver."
            D.TexturePath = dir .. "images/cards/007309-503256f8-3aab-49d0-b78b-6502aa29ce52.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7310
        -- Old: Star Jumping Monkey
        -- Old description: An energetic monkey adventurer who always wears goggles and a backpack and dreams of exploring the universe. Possessing extremely high mobility and star energy control capabilities, he is a star player in speed-based combat.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Gorilla Shaman"
            D.Description = "The trail of Gorilla Shaman says it clearly: the trees shake first."
            D.TexturePath = dir .. "images/cards/007310-bf8b213e-31ca-4eb5-bf0b-515a0ad4fd31.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7311
        -- Old: Rock Beast
        -- Old description: An armored beast with a body that flows like lava. Its arms are heavy and powerful, and it is good at crushing rocks and enemy formations. The heart of the rock vein is always burning in his body, and he is the overlord deep in the mine.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Anavolver"
            D.Description = "Anavolver leaves this sign: Stone remembers the impact."
            D.TexturePath = dir .. "images/cards/007311-5e685a8c-fba6-495f-ac0f-1ff5456b22d0.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7312
        -- Old: Jumping Girl Korra
        -- Old description: A fighting girl whose weapons are heartbeat and rhythm, she releases explosive punches based on the rhythm. Full of energy and dexterity, he is the rhythm star who never tires in battle.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Canyon Drake"
            D.Description = "The trail of Canyon Drake says it clearly: a smaller dragon with no smaller pride."
            D.TexturePath = dir .. "images/cards/007312-22f84143-5912-43ca-a274-f26ed0dbadd0.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7313
        -- Old: Thunder Explosion Charge·Wei Ming
        -- Old description: The electric light turns into a fist, and the lightning turns into an assault!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Squee, Goblin Nabob"
            D.Description = "Trouble survives because trouble is stubborn."
            D.TexturePath = dir .. "images/cards/007313-4ba8325a-1203-4125-9111-94d9e2b1f14b.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7314
        -- Old: Pointed Crest Worm
        -- Old description: 2025 Christmas Commemorative Edition
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Fallen Angel"
            D.Description = "Fallen Angel leaves this sign: Hope descends with a blade."
            D.TexturePath = dir .. "images/cards/007314-612ecb2c-e732-40cc-9e92-d18b80a26c4c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7315
        -- Old: Gingerbread Frosting
        -- Old description: can use magic to create cookies!
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Wall of Kelp"
            D.Description = "Where Wall of Kelp goes, green life grows teeth."
            D.TexturePath = dir .. "images/cards/007315-52ff5051-e24b-4453-aaae-ed4f2bf213ab.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7316
        -- Old: Xue Lingling
        -- Old description: With such a big kitchen knife, he must be a chef.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Zhao Zilong, Tiger General"
            D.Description = "Zhao Zilong, Tiger General walks in with history close behind."
            D.TexturePath = dir .. "images/cards/007316-2d16cf1d-a7c3-4038-a648-299c1bedae99.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7317
        -- Old: Haima Star
        -- Old description: Many children like the stars that shine brightly on the bottom of the sea.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Argothian Enchantress"
            D.Description = "Argothian Enchantress leaves this sign: Deep currents keep its secret."
            D.TexturePath = dir .. "images/cards/007317-9ababc1a-515e-4e20-8819-19d84d9b0af5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7318
        -- Old: Tuanlumon
        -- Old description: Carrying a huge ball of hair on his back, he is good at sewing wool into various things using superb textile skills.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Asmira, Holy Avenger"
            D.Description = "Asmira, Holy Avenger walks in with history close behind."
            D.TexturePath = dir .. "images/cards/007318-a7d64600-84fc-42a5-a6a6-b26f98fac0a4.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7319
        -- Old: Zandalar Dragon
        -- Old description: The god worshiped in the annual Zandalari festival is said to be able to protect the health of animals and children.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ichorid"
            D.Description = "Ichorid leaves this sign: Fear gives it room to breathe."
            D.TexturePath = dir .. "images/cards/007319-97431dca-54ca-47ef-ab00-943140e8e758.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7401
        -- Old: Bubble Fin Beast
        -- Old description: The Bubblefin is a soft-bodied, jellyfish-like, slippery creature with a purple-blue body, a peculiar snail-shaped "horn" and an exaggerated single-eyed expression. Despite its funny appearance, Bubblefin is actually very intelligent and full of emotions, often using exaggerated movements to attract the attention of its companions.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Waterspout Djinn"
            D.Description = "Where Waterspout Djinn goes, ancient power answers badly."
            D.TexturePath = dir .. "images/cards/007401-6946a75e-e9d1-4a56-86d1-dd81f7b1b125.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7402
        -- Old: Runbo Whale
        -- Old description: It looks like a combination of a whale and a seal, and often carries a green little friend in its belly. They live in warm shallow waters or coastal areas and feed on aquatic plants and plankton.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Killer Whale"
            D.Description = "The trail of Killer Whale says it clearly: a living island turns below."
            D.TexturePath = dir .. "images/cards/007402-d932f6d3-4918-4a41-836c-4eaa6cfac049.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7403
        -- Old: Genmiaoling
        -- Old description: It likes to hide in the shadows of woods, using its curly roots to imitate other plants for camouflage. When frightened, it will jump up suddenly and use its roots to jump short distances.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Deranged Hermit"
            D.Description = "Deranged Hermit is known for one thing: old roots stir beneath it."
            D.TexturePath = dir .. "images/cards/007403-bf0e94c9-61c4-4cc0-b5ce-db62bc2660ee.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7404
        -- Old: Star Attack Beast
        -- Old description: The meteor demon spirit among the celestial bodies, its tail drags a stream of stardust. The silence that can tear the night sky apart is the shadow that night watchers fear most.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Serendib Efreet"
            D.Description = "Trainers whisper of Serendib Efreet: fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/007404-019fb309-2cd1-4367-8a42-0295e9bbf552.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7405
        -- Old: Flame Shadow Demon
        -- Old description: The flame ghost wrapped in red and blue flames has a strange figurine and has extremely strong defense-breaking and suppression capabilities.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "The Wretched"
            D.Description = "Where The Wretched goes, a bargain steps out of the dark."
            D.TexturePath = dir .. "images/cards/007405-729f4543-79f3-4fe2-973f-fb2598045877.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7406
        -- Old: Illusory Law Divine Envoy·Zhimiao
        -- Old description: A musician in the ice and snow, his singing can control the movement of snowflakes.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Exalted Angel"
            D.Description = "Trainers whisper of Exalted Angel: light sharpens at its arrival."
            D.TexturePath = dir .. "images/cards/007406-c2213eac-cea4-4dfd-90c4-c1f466967e2e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7407
        -- Old: Hot-Blooded Style·Fire Sun
        -- Old description: The immovable pillar of the student union, the fist represents justice
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ball Lightning"
            D.Description = "A thunderclap that learned to charge."
            D.TexturePath = dir .. "images/cards/007407-3ede7920-e219-4e9d-bfa5-e0f562460914.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7408
        -- Old: Azlon
        -- Old description: Two fists can defeat hundreds of hands
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Anurid Brushhopper"
            D.Description = "The trail of Anurid Brushhopper says it clearly: the warning growl comes too late."
            D.TexturePath = dir .. "images/cards/007408-b09204c7-3e3d-484a-a4f7-da1b818e3884.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7409
        -- Old: Mommy Taming
        -- Old description: A mysterious character who uses bandages to wrap around enemies
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Avatar of Woe"
            D.Description = "Avatar of Woe leaves this sign: An idea grows a body."
            D.TexturePath = dir .. "images/cards/007409-0f695405-7238-48fb-9ea2-1b1613a0afda.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7410
        -- Old: Blade Scale Shark
        -- Old description: Dragons with excellent physical fitness and super adaptability
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hammerhead Shark"
            D.Description = "The trail of Hammerhead Shark says it clearly: a fin cuts through silence."
            D.TexturePath = dir .. "images/cards/007410-854627ab-38bd-4894-94d8-9ef51a57579c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7411
        -- Old: Dead Fin Whale
        -- Old description: Its heavy body and thick skin make it the most solid creature in the ocean.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Denizen of the Deep"
            D.Description = "Denizen of the Deep is known for one thing: the deep keeps this hunger."
            D.TexturePath = dir .. "images/cards/007411-95b00eca-065e-495e-947e-24eb79ffb1df.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7412
        -- Old: Pointed Crest Worm
        -- Old description: Wherever a hole can be dug, the terrain will be used to launch unexpected attacks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Venomous Dragonfly"
            D.Description = "Venomous Dragonfly is known for one thing: one wingbeat becomes a swarm."
            D.TexturePath = dir .. "images/cards/007412-479fc902-ce94-4a6b-af87-4645387a46c6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7413
        -- Old: Shimmering Lion
        -- Old description: A super creature that can control gravity and use gravity and repulsion to attack
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Pride of Lions"
            D.Description = "No one forgets Pride of Lions when it waits for the perfect moment."
            D.TexturePath = dir .. "images/cards/007413-65c3274b-3eb0-450a-88bf-fb378e6cf94a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7414
        -- Old: Yunmengyao
        -- Old description: A light goblin, it is said that it is difficult to hit it through physical attacks, because the air fluctuations caused by physical attacks will cause it to naturally dodge and avoid attacks.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rainbow Efreet"
            D.Description = "Rainbow Efreet leaves this sign: Fire bows, then lashes out."
            D.TexturePath = dir .. "images/cards/007414-1d6f03a6-3665-40e4-ae68-640913972770.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 7415
        -- Old: Millions of cats
        -- Old description: A cat that attracts treasure, especially gold.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Spectral Lynx"
            D.Description = "Spectral Lynx leaves this sign: The past borrows a body."
            D.TexturePath = dir .. "images/cards/007415-13099abe-721e-42b4-9666-9e6b5f1d75c9.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9001
        -- Old: Ah Yinzi
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Palladia-Mors"
            D.Description = "Palladia-Mors walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009001-0ea81883-7cd6-4443-9733-39d25cc64328.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9002
        -- Old: Eric
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Baron Sengir"
            D.Description = "Baron Sengir walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009002-51bdddac-02fc-493a-a0ea-689273252d7e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9003
        -- Old: Lingxue
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Akroma, Angel of Wrath"
            D.Description = "The old stories keep a place for Akroma, Angel of Wrath."
            D.TexturePath = dir .. "images/cards/009003-814245de-6105-43ef-acbf-d12d304b6331.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9004
        -- Old: KF
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Hazezon Tamar"
            D.Description = "The old stories keep a place for Hazezon Tamar."
            D.TexturePath = dir .. "images/cards/009004-17fc3a85-c6b9-4fd2-a6a2-d3210708e5ea.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9005
        -- Old: wawa
        -- Old description: Hyperactive challenger that likes to welcome a challenge
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rith, the Awakener"
            D.Description = "When Rith, the Awakener appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009005-c30be387-280d-49bd-a3d1-c1636ee931ce.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9006
        -- Old: Tobe
        -- Old description: Cool, collected, and 10 steps ahead
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Kamahl, Fist of Krosa"
            D.Description = "When Kamahl, Fist of Krosa appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009006-150d5229-b1a5-42cf-bf6a-04d246f1124f.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9007
        -- Old: EXIA
        -- Old description: the unknown traveler that will uncover secrets of the world
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Dakkon Blackblade"
            D.Description = "Dakkon Blackblade arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009007-4874388e-0227-4b89-a986-d86c14482c81.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9008
        -- Old: YIMING
        -- Old description: HaHAHa
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Arcanis the Omnipotent"
            D.Description = "Arcanis the Omnipotent walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009008-90865f52-c062-4505-a204-b4d7d4b3fc4c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9060
        -- Old: Killa
        -- Old description: A partner from Russia.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Jeska, Warrior Adept"
            D.Description = "Jeska, Warrior Adept arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009060-1cf96a59-8b7d-4a5b-adfd-17eeedd95db5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9061
        -- Old: An Jiang
        -- Old description: A sweet-looking girl.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Phage the Untouchable"
            D.Description = "Phage the Untouchable walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009061-a410b933-99d0-4383-b54b-4839a76eb6fe.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9062
        -- Old: Snow Maid
        -- Old description: This maid is very cold.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Atalya, Samite Master"
            D.Description = "When Atalya, Samite Master appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009062-90500e7a-f76d-453a-bda0-d56d3f7c7534.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9063
        -- Old: Bunny girl
        -- Old description: A pair of bunny ears is very sexy.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Treva, the Renewer"
            D.Description = "The old stories keep a place for Treva, the Renewer."
            D.TexturePath = dir .. "images/cards/009063-4ee67039-6cee-4a2d-b973-570f5060f550.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9064
        -- Old: Alice
        -- Old description: She is a European and American girl who loves adventure.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Commander Greven il-Vec"
            D.Description = "When Commander Greven il-Vec appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009064-ab0ce69f-a259-4801-9ac3-f6754040434c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9065
        -- Old: ANO
        -- Old description: A sunny and handsome boy
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ertai, the Corrupted"
            D.Description = "The old stories keep a place for Ertai, the Corrupted."
            D.TexturePath = dir .. "images/cards/009065-66b950d9-8fef-4deb-b51b-26edb90abc56.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9066
        -- Old: Longqi Princess
        -- Old description: The girl was born from the dragon's nest and accompanied the golden dragon in the deep forest. From the little black box user——kkzzzz_
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Multani, Maro-Sorcerer"
            D.Description = "Multani, Maro-Sorcerer arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009066-0d6cc98b-b376-40af-8308-198bab00b2b1.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9067
        -- Old: Fool
        -- Old description: An immature kitten, its body is bright white, with gorgeous golden lines on its body, and its eyes are like a touch of gold smeared in the ink. From the little black box——TIMI1502
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Johan"
            D.Description = "Johan arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009067-2f2f3b3e-63f3-4cab-aa95-030990157ed5.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9068
        -- Old: ANT
        -- Old description: ANT is ANO’s cousin and he looks very handsome.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Barrin, Master Wizard"
            D.Description = "The old stories keep a place for Barrin, Master Wizard."
            D.TexturePath = dir .. "images/cards/009068-ec79e35f-9e78-462d-8b71-4f044e2eff90.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9069
        -- Old: Sakura Girl
        -- Old description: A beautiful JK girl from Japan with pink hair and a light fragrance.
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Balthor the Defiled"
            D.Description = "Balthor the Defiled arrives with an old legend at its back."
            D.TexturePath = dir .. "images/cards/009069-ed4cc273-adc3-4f46-9743-134b552d1d56.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9071
        -- Old: Kaikai is here
        -- Old description: Station B UP master-KF Kaifeng
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Volrath the Fallen"
            D.Description = "The old stories keep a place for Volrath the Fallen."
            D.TexturePath = dir .. "images/cards/009071-08bdd66e-9ca1-456e-a61c-7c96cf6f7c56.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9072
        -- Old: Stewed goose in iron pot
        -- Old description: B station UP master-Lingxue stays at home
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Tsabo Tavoc"
            D.Description = "When Tsabo Tavoc appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/009072-ccbe2539-7a7c-468b-a270-7ca1bdcccb1e.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9073
        -- Old: Sakacaicai
        -- Old description: Station B UP master-Saka Caicai
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ascendant Evincar"
            D.Description = "Ascendant Evincar walks in with history close behind."
            D.TexturePath = dir .. "images/cards/009073-e5c87c93-8cf4-4d1a-9bb8-349600da55bc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 9074
        -- Old: Junior Leng Yang
        -- Old description: Station B UP master - Junior Leng Yang
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Ramses Overdark"
            D.Description = "The old stories keep a place for Ramses Overdark."
            D.TexturePath = dir .. "images/cards/009074-f079c74e-a39a-40f9-9c7e-9319c0c189c6.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100001
        -- Old: Rain God·Yi Lianjiaji
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Chromium"
            D.Description = "The old stories keep a place for Chromium."
            D.TexturePath = dir .. "images/cards/100001-e85e54f3-012b-460f-a6f9-d0242a174adc.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100002
        -- Old: Luna Aragos
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Nicol Bolas"
            D.Description = "An elder mind with plans inside plans."
            D.TexturePath = dir .. "images/cards/100002-05362cde-3b0b-4a8d-9875-675cfac52e4a.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100003
        -- Old: Fire God Lieluohuangne
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Rorix Bladewing"
            D.Description = "Rorix Bladewing walks in with history close behind."
            D.TexturePath = dir .. "images/cards/100003-7f2caba5-9f30-4b5e-833e-68c85a47ef7c.jpg"
            D.UseBigImage = true
            R:RegisterCardData(cardId, D)
        else
            missingCards = missingCards + 1
        end
    end
    do
        local cardId = 100004
        -- Old: Grass God·Made Flower Reiki
        -- Old description:
        local D = GetExistingCardData(R, cardId)
        if D then
            D.Name = "Silvos, Rogue Elemental"
            D.Description = "When Silvos, Rogue Elemental appears, even old rivals remember."
            D.TexturePath = dir .. "images/cards/100004-3e48715c-6ff7-4b0c-aa7e-a2c901215426.jpg"
            D.UseBigImage = true
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
