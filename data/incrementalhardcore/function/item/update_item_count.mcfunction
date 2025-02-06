execute if score ItemCount INH.temp matches 0 run kill @s
execute if score ItemCount INH.temp matches 0 run return 1
$data modify entity @s Item.count set value $(UpdatedItemCount) 