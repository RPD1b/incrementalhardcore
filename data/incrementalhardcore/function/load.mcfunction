scoreboard objectives add DeathDetect deathCount
scoreboard objectives add MaxHealth dummy
scoreboard objectives modify MaxHealth rendertype hearts
scoreboard objectives setdisplay list MaxHealth
scoreboard objectives add temp dummy
scoreboard objectives add INH.Settings dummy
scoreboard players set INH.1 temp 1
schedule function incrementalhardcore:item/item_manager 1t

scoreboard players set Version INH.Settings 2

#Set default settings
execute unless score AllowRevives INH.Settings matches 0..1 run scoreboard players set AllowRevives INH.Settings 0
execute unless score TotemEffect INH.Settings matches 0..1 run scoreboard players set TotemEffect INH.Settings 0
execute unless score AllowHealing INH.Settings matches 0..1 run scoreboard players set AllowHealing INH.Settings 1