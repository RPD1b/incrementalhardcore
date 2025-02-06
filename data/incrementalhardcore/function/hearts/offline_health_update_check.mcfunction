execute as @a if score @s INH.UpdateHealth matches 1.. run function incrementalhardcore:hearts/offline_health_update
schedule function incrementalhardcore:hearts/offline_health_update_check 2s