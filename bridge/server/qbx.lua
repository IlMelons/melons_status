if GetResourceState("qbx_core") ~= "started" then return end

QBX = exports.qbx_core

---@diagnostic disable: duplicate-set-field, lowercase-global
server = {}

function server.GetMetadata(source, name)
    return QBX:GetMetaData(source, name)
end

function server.SetStatusMetadata(source, name, value)
    QBX:SetMetaData(source, name, value)
end