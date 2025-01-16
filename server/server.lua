local Status = lib.load("data.status")

function InitPlayerStatus(source)
    local playerStatus = Player(source).state
    for _, status in pairs(Status) do
        local metadata = server.GetMetadata(source, status.name)
        playerStatus:set(status.name, metadata or status.min, true)
    end
end

function UpdatePlayerStatus(source, name, value)
    lib.math.clamp(value, 0, 100)
    local playerStatus = Player(source).state
    playerStatus[name] = value

    server.SetStatusMetadata(source, name, value)
end