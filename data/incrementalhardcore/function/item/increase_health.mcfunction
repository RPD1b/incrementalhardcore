#Simple error check, covers both dead people, and people who have 20 hp, along with fake people, because that would cause it to error.
$execute unless score $(CustomName) MaxHealth matches 2..18 run return fail

#adds the score if all goes well.
$scoreboard players add $(CustomName) MaxHealth 2

#updates the players hearts so its more than just a score on the tab list.
$execute store result storage incrementalhardcore:temp MaxHealthValue int 1 run scoreboard players get $(CustomName) MaxHealth
$execute as $(CustomName) run function incrementalhardcore:hearts/update_health with storage incrementalhardcore:temp

#eye and ear candy
particle minecraft:ash ~ ~.4 ~ 0.1 0.1 0.1 0.1 50 normal
playsound minecraft:entity.firework_rocket.twinkle_far neutral @a ~ ~ ~ 1 1.5


#kills a lone item, decreases the amount of items if a stack.
function incrementalhardcore:item/update_item_count with storage incrementalhardcore:temp