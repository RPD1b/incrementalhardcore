## Decode trigger value if you have a value over 1
execute if score @s INH.SettingsMenu matches 1.. run function incrementalhardcore:settings_menu/decode_settings

# Clear trigger value
scoreboard players set @s INH.SettingsMenu 0

# Remove the tag regaurdless
tag @s remove INH.OpenedSettingsMenu