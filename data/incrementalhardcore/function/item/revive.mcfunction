#Simple error check, covers both dead people, and people who have 20 hp, along with fake people, because that would cause it to error.
$execute unless score $(CustomName) INH.MaxHealth matches 0 run return fail
#2nd error check, only applies to this one because the player NEEDS to be online. (For now)
$execute unless entity $(CustomName) run return fail

#Sets their health, if all goes well.
$scoreboard players operation $(CustomName) INH.MaxHealth = ReviveHealth INH.Settings

#Teleport the player to the item, does this before health update so they don't fucking die, or whatever else might happen.
$execute at @s align xyz run tp $(CustomName) ~.5 ~ ~.5

#updates the players hearts so its more than just a score on the tab list.
$execute as $(CustomName) run function incrementalhardcore:hearts/update_health

#Funny totem effect, shouldn't break for any reason. as it happens in 1 tick, if not... God help you.
$item replace entity $(CustomName) weapon.offhand with totem_of_undying[item_model=air]
#Kill won't pop totems :(
$damage $(CustomName) 1000 generic
$execute if score TotemEffect INH.Settings matches 0 run effect clear $(CustomName)
#Juust in case...
clear @a totem_of_undying[item_model=air]

#kills a lone item, decreases the amount of items if a stack.
function incrementalhardcore:item/update_item_count with storage incrementalhardcore:temp ItemHandling