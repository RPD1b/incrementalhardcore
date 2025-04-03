execute if score Version INH.Settings matches 2 run schedule function incrementalhardcore:at_load/old_version/version_2_warn 1s

execute unless score #PreviousVersion INH.temp matches 1.. run return fail

execute if score #PreviousVersion INH.temp < #Version INH.Settings run function incrementalhardcore:at_load/old_version/incompatible_version_fixer