#set new players to 20 'MaxHealth' score
execute as @a[tag=!INH.HardcoreInit] run function incrementalhardcore:hearts/hardcore_init

#self explanatory.
execute as @a[scores={INH.DeathDetect=1..}] run function incrementalhardcore:hearts/remove_health

#Reset the death detect for everybody, just in case :)
scoreboard players set @a INH.DeathDetect 0
