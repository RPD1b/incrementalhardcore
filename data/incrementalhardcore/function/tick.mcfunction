#set new hardcore players to 20 'MaxHealth' score
execute as @a[tag=hardcore,tag=!HardcoreInit] run function incrementalhardcore:hearts/hardcore_init

#self explanatory.
execute as @a[scores={DeathDetect=1..},tag=hardcore] run function incrementalhardcore:hearts/remove_health

#Reset the death detect for everybody, just in case :)
scoreboard players set @a DeathDetect 0