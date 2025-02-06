execute as @a run scoreboard players operation @s INH.MaxHealth = @s MaxHealth
execute as @a run scoreboard players reset @s MaxHealth
scoreboard players reset Version INH.Settings
tellraw @s "Just in case another pack is using a scoreboard that this pack used to, This function will not delete those automatically. If you are sure nothing else uses them, you can delete them yourself. Or just leave them alone."