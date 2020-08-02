fx_version 'adamant'
game 'gta5'


description 'fsc_pimpgarage'

version '1.0.0'

client_scripts {
    "config.lua",
	'en.lua',
    "client.lua"
}

server_scripts {
    "@mysql-async/lib/MySQL.lua",
	'en.lua',
    "config.lua",
    "main.lua"
}