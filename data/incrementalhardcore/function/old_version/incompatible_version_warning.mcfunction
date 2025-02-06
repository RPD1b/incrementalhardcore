tellraw @a ["",{"text":"WARNING! INCOMPATIBILITY DETECTED WITH PREVIOUS VERSION.\n"},\
{"text":"Attempting to fix automatically. If that fails, use the "},{"text":"Modrinth Page","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/incrementalhardcore"}},{"text":" for more information.\n\n"},\
{"text":"NEW VERSION: "},{"score":{"name":"#Version","objective":"INH.Settings"}},{"text":" OLD VERSION: "},{"score":{"name":"#VersionOld","objective":"INH.Settings"}}]

#Now. I WOULD normally try and actually write something to fix it automatically here, but the issue is I changed the scoreboard
#which means that the player needs to be online to actually transfer their score, so they're just going to have to manually
#run the data convert function.