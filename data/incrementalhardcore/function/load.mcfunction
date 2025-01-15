scoreboard objectives add DeathDetect deathCount
scoreboard objectives add MaxHealth dummy
scoreboard objectives modify MaxHealth rendertype hearts
scoreboard objectives setdisplay list MaxHealth
scoreboard objectives add temp dummy
scoreboard players set INH:1 temp 1
schedule function incrementalhardcore:item/item_manager 1t