#Variable is set in 'hardcore_death_handling' equivaliant to their MaxHealth score.
$attribute @s minecraft:max_health base set $(MaxHealthValue)

#If score is 0, they are dead. so this just sets them to spectator, so they can be "dead"
execute if score @s INH.MaxHealth matches 0 run gamemode spectator @s

#just in case their score goes above 0 for any reason, such as when they get revived.
#Do not run this on its own, unless you like dying from spectator related injuries
execute unless score @s INH.MaxHealth matches 0 run gamemode survival @s[gamemode=spectator]