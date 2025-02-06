#remove a full heart, as its stored in half hearts. Just in case.
scoreboard players remove @s[scores={INH.MaxHealth=2..}] INH.MaxHealth 2

#put the max health score into storage, because its a score, for easier math and display. However a score is needed for variables.
execute store result storage incrementalhardcore:temp MaxHealthValue int 1 run scoreboard players get @s INH.MaxHealth

#Use the newly converted score to set the max health variable.
function incrementalhardcore:hearts/update_health with storage incrementalhardcore:temp