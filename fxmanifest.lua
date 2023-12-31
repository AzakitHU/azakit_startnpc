fx_version "adamant"
game "gta5"
lua54 'yes'

author 'Azakit'
description 'NPC for launching events'

client_scripts {
	"locales/*",
	'config.lua',
	'client/*',
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"locales/*",
	'config.lua',
    'server/*'
}

shared_scripts {
    '@ox_lib/init.lua',
}
