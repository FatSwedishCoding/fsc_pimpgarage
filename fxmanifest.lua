fx_version 'adamant'
game 'gta5'


description 'ESX_VisualGarage'

version '1.0.0'

client_scripts {
    "config.lua",
	'en.lua',
    "client/main.lua"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
	'en.lua',
    "config.lua",
    "main.lua"
}