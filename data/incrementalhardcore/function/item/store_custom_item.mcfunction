#Clear in case the ingot doesn't have a custom name
data remove storage incrementalhardcore:temp CustomName
#store name as a string and remove the 1st and last letter
data modify storage incrementalhardcore:temp CustomName set string entity @s Item.components.minecraft:custom_name 1 -1
#store item count, in case the player throws multiple down.

#grabbing the item count and removing by 1, can't do multiplier because it could end up letting you go over limits that certain items might have.
#grab item count and put in score
execute store result score ItemCount INH.temp run data get entity @s Item.count
#remove the score in itemcount by 1
scoreboard players operation ItemCount INH.temp -= 1 INH.temp
#put the score into storage, because you can have only 1 macro source. :sob:
execute store result storage incrementalhardcore:temp UpdatedItemCount int 1 run scoreboard players get ItemCount INH.temp

#Checks the type of item, because there are different types of items.
execute if score AllowHealing INH.Settings matches 1 if items entity @s hotbar.0 #incrementalhardcore:healing_item run function incrementalhardcore:item/increase_health with storage incrementalhardcore:temp
execute if score AllowRevives INH.Settings matches 1 if items entity @s hotbar.0 #incrementalhardcore:revive_item run function incrementalhardcore:item/revive with storage incrementalhardcore:temp

