scoreboard players set @s INH.UpdateHealth 0
execute store result storage incrementalhardcore:temp MaxHealthValue int 1 run scoreboard players get @s INH.MaxHealth
execute as @s run function incrementalhardcore:hearts/update_health with storage incrementalhardcore:temp