#remove a full heart, as its stored in half hearts. Just in case.
scoreboard players remove @s[scores={INH.MaxHealth=2..}] INH.MaxHealth 2

#Update health
function incrementalhardcore:hearts/update_health