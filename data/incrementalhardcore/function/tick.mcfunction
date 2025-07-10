#self explanatory.
execute as @a[scores={INH.DeathDetect=1..}] run function incrementalhardcore:hearts/remove_health

#Reset the death detect for everybody, just in case :)
scoreboard players set @a INH.DeathDetect 0

#Check if anyone changed settings
execute as @a[scores={INH.SettingsMenu=1..}] run function incrementalhardcore:settings_menu/decode_manager


schedule function incrementalhardcore:tick 1