fx_version "cerulean"
game "gta5"
lua54 "yes"

author "IlMelons"
description "Player Status Monitor"
version "1.0.0"

shared_scripts {
    "@ox_lib/init.lua",
}

client_scripts {
    "bridge/client/*.lua",
    "client/*.lua",
}

server_scripts {
    "bridge/server/*.lua",
    "server/*.lua",
}