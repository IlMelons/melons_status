if GetResourceState("qb-core") ~= "started" then return end

local QBCore = exports["qb-core"]:GetCoreObject()

function GetPlayer(source)
    return QBCore.Functions.GetPlayer(source)
end

---@diagnostic disable: duplicate-set-field, lowercase-global
server = {}

function server.GetMetadata(source, name)
    local Player = GetPlayer(source)
    return Player.PlayerData.metadata[name]
end

function server.SetStatusMetadata(source, name, value)
    local Player = GetPlayer(source)
    Player.Functions.SetMetaData(name, value)
end