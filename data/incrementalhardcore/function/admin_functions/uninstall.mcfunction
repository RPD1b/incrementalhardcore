# Stop ticking functions
schedule clear incrementalhardcore:tick
schedule clear incrementalhardcore:item/item_manager
schedule clear incrementalhardcore:hearts/offline_health_update_check


# Remove scoreboards
scoreboard objectives remove INH.DeathDetect
scoreboard objectives remove INH.MaxHealth
scoreboard objectives remove INH.Settings
scoreboard objectives remove INH.temp
scoreboard objectives remove INH.UpdateHealth
scoreboard objectives remove INH.SettingsMenu

# Remove data
data remove storage incrementalhardcore:temp ItemHandling
data remove storage incrementalhardcore:temp SettingsDecode
data remove storage incrementalhardcore:temp SettingsCompile
data remove storage incrementalhardcore:temp MaxHealthValue

# Disclaimer
tellraw @s ["",{"text":"IT IS NOW SAFE TO UNINSTALL THE PACK\n\n","color":"dark_green"},"Please keep in mind, if you don't uninstall the pack before the next reload the pack WILL re-install."]