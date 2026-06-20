local M = {
    id          = "GenMTGInventoryDump",
    name        = "GenMTG Inventory Dump",
    version     = "0.2.0",
    author      = "Codex",
    description = "Dumps registered card data for planning GenMTG.",
}

local function log(message)
    if MOD and MOD.Logger then
        MOD.Logger.LogScreen("[GenMTGInventoryDump] " .. tostring(message), 5, 1, 1, 0, 1)
    end
end

local function safe(call, fallback)
    local ok, value = pcall(call)
    if ok then return value end
    return fallback
end

local function safe_results(call)
    local results = { pcall(call) }
    local ok = table.remove(results, 1)
    if ok then return results end
    return {}
end

local function as_string(value)
    if value == nil then return "" end
    return tostring(value)
end

local function tsv_escape(value)
    local s = as_string(value)
    s = s:gsub("\r", "\\r"):gsub("\n", "\\n"):gsub("\t", " ")
    return s
end

local function field(data, name)
    return safe(function() return data[name] end, nil)
end

local function looks_like_card(data, id)
    if data == nil then return false end
    if type(data) == "boolean" then return false end
    local card_id = field(data, "CardID")
    local name = field(data, "Name")
    local texture = field(data, "TexturePath")
    if card_id ~= nil and tonumber(tostring(card_id)) == id then return true end
    if name ~= nil and tostring(name) ~= "" then return true end
    if texture ~= nil and tostring(texture) ~= "" then return true end
    return false
end

local function get_card(registry, id)
    local out_data = safe(function()
        return UE.FCardDataAll()
    end, nil)

    if out_data ~= nil then
        local returned = safe_results(function()
            if registry.GetCardData then
                return registry:GetCardData(id, out_data)
            end
            return nil
        end)
        if looks_like_card(out_data, id) then
            return out_data
        end
        for _, value in ipairs(returned) do
            if looks_like_card(value, id) then
                return value
            end
        end
    end

    local returned = safe_results(function()
        if registry.GetCardData then
            return registry:GetCardData(id)
        end
        return nil
    end)
    for _, value in ipairs(returned) do
        if looks_like_card(value, id) then
            return value
        end
    end

    return nil
end

local function get_card_name(registry, id)
    return safe(function()
        if registry.GetCardDataName then
            return registry:GetCardDataName(id)
        end
        return nil
    end, nil)
end

local function add_id(ids, seen, id)
    id = tonumber(tostring(id))
    if not id or seen[id] then return end
    seen[id] = true
    ids[#ids + 1] = id
end

local function collect_ids_from_registry(registry)
    local ids = {}
    local seen = {}
    local raw = safe(function()
        if registry.GetCardDataAllID then
            return registry:GetCardDataAllID()
        end
        return nil
    end, nil)

    if raw ~= nil then
        safe(function()
            for _, value in pairs(raw) do add_id(ids, seen, value) end
        end, nil)
        safe(function()
            local count = #raw
            for i = 1, count do add_id(ids, seen, raw[i]) end
        end, nil)
        safe(function()
            local count = raw:Num()
            for i = 0, count - 1 do add_id(ids, seen, raw:Get(i)) end
        end, nil)
    end

    return ids, seen
end

local function scan_known_ranges(registry, ids, seen)
    local ranges = {
        {1000, 9999},
        {9000, 9999},
        {100000, 100200},
        {1300000, 1302000},
    }

    for _, range in ipairs(ranges) do
        for id = range[1], range[2] do
            if not seen[id] then
                local data = get_card(registry, id)
                local name = get_card_name(registry, id)
                if looks_like_card(data, id) or (name ~= nil and tostring(name) ~= "") then
                    add_id(ids, seen, id)
                end
            end
        end
    end
end

local function element_summary(data)
    local elements = field(data, "CardElementFaction")
    if elements == nil then return "" end

    local collected = {}
    safe(function()
        for _, value in pairs(elements) do collected[#collected + 1] = tostring(value) end
    end, nil)
    safe(function()
        for i = 1, #elements do collected[#collected + 1] = tostring(elements[i]) end
    end, nil)
    safe(function()
        local count = elements:Num()
        for i = 0, count - 1 do collected[#collected + 1] = tostring(elements:Get(i)) end
    end, nil)

    if #collected > 0 then
        return table.concat(collected, "|")
    end
    return tostring(elements)
end

local function dump_inventory()
    local registry = UE.UCardFunction.GetCardRegistryWS(MOD.GAA.WorldUtils:GetCurrentWorld())
    if not registry then
        log("Cannot find UCardRegistryWorldSubsystem")
        return
    end

    local ids, seen = collect_ids_from_registry(registry)
    scan_known_ranges(registry, ids, seen)
    table.sort(ids)

    local lines = {}
    lines[#lines + 1] = table.concat({
        "CardID",
        "Name",
        "Description",
        "Gen",
        "Rarity",
        "Elements",
        "BaseAttack",
        "BaseHealth",
        "CardValueMulti",
        "UseBigImage",
        "TexturePath",
        "TexturePath2",
        "TexturePath3",
        "TexturePath4",
        "TexturePath5",
        "TexturePath6",
        "RegistryName",
        "Raw",
    }, "\t")

    for _, id in ipairs(ids) do
        local data = get_card(registry, id)
        local registry_name = get_card_name(registry, id)
        if data ~= nil or registry_name ~= nil then
            lines[#lines + 1] = table.concat({
                tsv_escape(field(data, "CardID") or id),
                tsv_escape(field(data, "Name") or registry_name),
                tsv_escape(field(data, "Description")),
                tsv_escape(field(data, "Gen")),
                tsv_escape(field(data, "Rarity")),
                tsv_escape(element_summary(data)),
                tsv_escape(field(data, "BaseAttack")),
                tsv_escape(field(data, "BaseHealth")),
                tsv_escape(field(data, "CardValueMulti")),
                tsv_escape(field(data, "UseBigImage")),
                tsv_escape(field(data, "TexturePath")),
                tsv_escape(field(data, "TexturePath2")),
                tsv_escape(field(data, "TexturePath3")),
                tsv_escape(field(data, "TexturePath4")),
                tsv_escape(field(data, "TexturePath5")),
                tsv_escape(field(data, "TexturePath6")),
                tsv_escape(registry_name),
                tsv_escape(data),
            }, "\t")
        end
    end

    local output = table.concat(lines, "\n")
    local path = dir .. "card_inventory_dump.tsv"
    local ok = safe(function()
        local file = io.open(path, "w")
        if not file then return false end
        file:write(output)
        file:close()
        return true
    end, false)

    if ok then
        log(("Wrote %d cards to %s"):format(#lines - 1, path))
    else
        log(("File write failed; found %d cards. Check Lua file permissions."):format(#lines - 1))
        for i = 1, math.min(#lines, 20) do
            log(lines[i])
        end
    end
end

function M.OnInit()
    log("loading")
    if MOD and MOD.GAA and MOD.GAA.TimerManager then
        MOD.GAA.TimerManager:AddTimer(2, M, function() dump_inventory() end)
    else
        dump_inventory()
    end
end

return M
