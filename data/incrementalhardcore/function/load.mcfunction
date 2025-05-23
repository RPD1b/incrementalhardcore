# Create scoreboards
scoreboard objectives add INH.DeathDetect deathCount
scoreboard objectives add INH.MaxHealth dummy
scoreboard objectives add INH.temp dummy
scoreboard objectives add INH.Settings dummy
scoreboard objectives add INH.UpdateHealth dummy

# Modify scoreboards
scoreboard objectives modify INH.MaxHealth rendertype hearts
scoreboard objectives setdisplay list INH.MaxHealth

# Create math score
scoreboard players set is_1.21.5 INH.temp 0
scoreboard players set 1 INH.temp 1


## Imcompatibility handling
scoreboard players operation #PreviousVersion INH.temp = #Version INH.Settings

scoreboard players set #Version INH.Settings 3

function incrementalhardcore:at_load/version_checker



## Set default settings
# ReviveHealth (Default 2)
execute unless score ReviveHealth INH.Settings matches 2..20 run scoreboard players set ReviveHealth INH.Settings 2
# AllowRevives (Default FALSE)
execute unless score AllowRevives INH.Settings matches 0..1 run scoreboard players set AllowRevives INH.Settings 0
# TotemEffect (Defualt FALSE)
execute unless score TotemEffect INH.Settings matches 0..1 run scoreboard players set TotemEffect INH.Settings 0
# AllowHealing (Default TRUE)
execute unless score AllowHealing INH.Settings matches 0..1 run scoreboard players set AllowHealing INH.Settings 1

# Schedule managers
schedule function incrementalhardcore:tick 1t
schedule function incrementalhardcore:item/item_manager 1t
schedule function incrementalhardcore:hearts/offline_health_update_check 1t

# 1.21.5 detector
function incrementalhardcore:at_load/1.21.5_check
