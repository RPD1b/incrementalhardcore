scoreboard objectives add INH.DeathDetect deathCount
scoreboard objectives add INH.MaxHealth dummy
scoreboard objectives modify INH.MaxHealth rendertype hearts
scoreboard objectives setdisplay list INH.MaxHealth
scoreboard objectives add INH.temp dummy
scoreboard objectives add INH.Settings dummy
scoreboard players set 1 INH.temp 1
scoreboard objectives add INH.UpdateHealth dummy
schedule function incrementalhardcore:item/item_manager 1t
schedule function incrementalhardcore:hearts/offline_health_update_check 1t

#Grab old Version, to cross check that versus the current version
scoreboard players operation #VersionOld INH.temp = #Version INH.Settings
#Set the NEW Version
scoreboard players set #Version INH.Settings 3
#Check for old version marker
execute if score Version INH.Settings matches 2 run scoreboard players set #VersionOld INH.temp 2
#Less than check
execute if score #VersionOld INH.temp < #Version INH.Settings run schedule function incrementalhardcore:old_version/incompatible_version_warning 1s

#Set default settings
execute unless score ReviveHealth INH.Settings matches 2..20 run scoreboard players set ReviveHealth INH.Settings 2
execute unless score AllowRevives INH.Settings matches 0..1 run scoreboard players set AllowRevives INH.Settings 0
execute unless score TotemEffect INH.Settings matches 0..1 run scoreboard players set TotemEffect INH.Settings 0
execute unless score AllowHealing INH.Settings matches 0..1 run scoreboard players set AllowHealing INH.Settings 1

