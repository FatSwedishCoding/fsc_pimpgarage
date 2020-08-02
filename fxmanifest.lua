fx_version 'adamant'
game 'gta5'


description 'ESX_VisualGarage'

version '1.0.0'

client_scripts {
    "config.lua",
	'locales/en.lua',
    "client/main.lua"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
	'locales/en.lua',
    "config.lua",
    "server/main.lua"
}