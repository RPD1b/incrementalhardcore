#self explanatory.
execute as @a[scores={INH.DeathDetect=1..}] run function incrementalhardcore:hearts/remove_health

#Reset the death detect for everybody, just in case :)
scoreboard players set @a INH.DeathDetect 0

schedule function incrementalhardcore:tick 1