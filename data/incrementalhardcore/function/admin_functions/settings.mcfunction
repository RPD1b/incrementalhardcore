## SETTINGS STORING
#Grabbing all of the settings and storing them, so the custom dialog will have the correct state
execute store result storage incrementalhardcore:temp SettingsCompile.AllowHealing byte 1 run scoreboard players get AllowHealing INH.Settings

execute store result storage incrementalhardcore:temp SettingsCompile.AllowRevives byte 1 run scoreboard players get AllowRevives INH.Settings

execute store result storage incrementalhardcore:temp SettingsCompile.TotemEffect byte 1 run scoreboard players get TotemEffect INH.Settings

execute store result storage incrementalhardcore:temp SettingsCompile.ReviveHealth int 1 run scoreboard players get ReviveHealth INH.Settings

## Get ready for decoding
scoreboard players enable @s INH.SettingsMenu

## Calling dialog
function incrementalhardcore:settings_menu/dialog with storage incrementalhardcore:temp SettingsCompile
