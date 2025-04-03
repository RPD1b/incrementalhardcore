#Header
tellraw @s ["-----Incremental Hardcore Settings-----","\n"]

## AllowHealing ----------
#True
execute if score AllowHealing INH.Settings matches 1 run tellraw @s [{"text":"Allow Healing: ","hoverEvent":{"action":"show_text","contents":["Whether or not you can regain max health using netherite ingots","\nDefault: ",{"text":"TRUE","color": "dark_green"}]}},{"text":"True","color": "dark_green"}]
#False
execute if score AllowHealing INH.Settings matches 0 run tellraw @s [{"text":"Allow Healing: ","hoverEvent":{"action":"show_text","contents":["Whether or not you can regain max health using netherite ingots","\nDefault: ",{"text":"TRUE","color": "dark_green"}]}},{"text":"False","color": "dark_red"}]
#Backup in case it is unset, somehow.
execute unless score AllowHealing INH.Settings matches 0..1 run tellraw @s [{"text":"Allow Healing: ","hoverEvent":{"action":"show_text","contents":["Whether or not you can regain max health using netherite ingots","\nDefault: ",{"text":"TRUE","color": "dark_green"}]}},{"text":"UNSET","color": "dark_gray"}]

#Buttons that allow you to toggle it between true and false. Runs a function with the value so it can automatically re-open.
tellraw @s [{"text":"True ","color":"green","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'AllowHealing',Value:1}"}},{"text":" False","color":"red","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'AllowHealing',Value:0}"}},"\n"]
#---------

## AllowRevives ----------
#Display for if AllowRevies is true or not, takes 2 checks since I wanted a True/False not a 1/0
#True
execute if score AllowRevives INH.Settings matches 1 run tellraw @s [{"text":"Allow Revives: ","hoverEvent":{"action":"show_text","contents":["Whether or not you can revive players using a totem of undying","\nDefault: ",{"text":"FALSE","color": "dark_red"}]}},{"text":"True","color": "dark_green"}]
#False
execute if score AllowRevives INH.Settings matches 0 run tellraw @s [{"text":"Allow Revives: ","hoverEvent":{"action":"show_text","contents":["Whether or not you can revive players using a totem of undying","\nDefault: ",{"text":"FALSE","color": "dark_red"}]}},{"text":"False","color": "dark_red"}]
#Backup in case it is unset, somehow.
execute unless score AllowRevives INH.Settings matches 0..1 run tellraw @s [{"text":"Allow Revives: ","hoverEvent":{"action":"show_text","contents":["Whether or not you can revive players using a totem of undying","\nDefault: ",{"text":"FALSE","color": "dark_red"}]}},{"text":"UNSET","color": "dark_gray"}]

#Buttons that allow you to toggle it between true and false. Runs a function with the value so it can automatically re-open.
tellraw @s [{"text":"True ","color":"green","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'AllowRevives',Value:1}"}},{"text":" False","color":"red","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'AllowRevives',Value:0}"}},"\n"]
#---------

## ReviveHealth ----------
#Set
execute if score ReviveHealth INH.Settings matches 1..20 run tellraw @s [{"text":"Revive Health: ","hoverEvent":{"action":"show_text","contents":["The number of half-hearts a revived player will spawn with","\nDefault: ",{"text":"2","color": "blue"},"\nAccepts Values: ",{"text":"1-20","color":"blue"}]}},{"score":{"name":"ReviveHealth","objective":"INH.Settings"},"color":"#0010e6"}]
#Backup in case it is unset, somehow.
execute unless score ReviveHealth INH.Settings matches 1..20 run tellraw @s [{"text":"Revive Health: ","hoverEvent":{"action":"show_text","contents":["The number of half-hearts a revived player will spawn with","\nDefault: ",{"text":"2","color": "blue"},"\nAccepts Values: ",{"text":"1-20","color":"blue"}]}},{"score":{"name":"ReviveHealth","objective":"INH.Settings"},"color":"#0010e6"},{"text":"\nWARNING, UNSUPPORTED HEALTH VALUE! (IT MAY GET BUGGY)\n","color":"red"}]

#Value toggle buttons
tellraw @s [{"text":"2 ","color":"blue","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'ReviveHealth',Value:2}"}},{"text":" 4 ","color":"blue","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'ReviveHealth',Value:4}"}},{"text":" 6 ","color":"blue","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'ReviveHealth',Value:6}"}}, {"text":" Custom","color":"blue","clickEvent":{"action":"suggest_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'ReviveHealth',Value:?}"}},"\n"]
#---------

## TotemEffect ----------
#True
execute if score TotemEffect INH.Settings matches 1 run tellraw @s [{"text":"Totem Effect: ","hoverEvent":{"action":"show_text","contents":["Whether or not you get the totem of undying potion effects on revival","\nDefault: ",{"text":"FALSE","color": "dark_red"}]}},{"text":"True","color": "dark_green"}]
#False
execute if score TotemEffect INH.Settings matches 0 run tellraw @s [{"text":"Totem Effect: ","hoverEvent":{"action":"show_text","contents":["Whether or not you get the totem of undying potion effects on revival","\nDefault: ",{"text":"FALSE","color": "dark_red"}]}},{"text":"False","color": "dark_red"}]
#Backup in case it is unset, somehow.
execute unless score TotemEffect INH.Settings matches 0..1 run tellraw @s [{"text":"Totem Effect: ","hoverEvent":{"action":"show_text","contents":["Whether or not you get the totem of undying potion effects on revival","\nDefault: ",{"text":"FALSE","color": "dark_red"}]}},{"text":"UNSET","color": "dark_gray"}]

#Buttons that allow you to toggle it between true and false. Runs a function with the value so it can automatically re-open.
tellraw @s [{"text":"True ","color":"green","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'TotemEffect',Value:1}"}},{"text":" False","color":"red","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'TotemEffect',Value:0}"}},"\n"]
#---------

#Footer
tellraw @s ["COMPATIBILITY VERSION NUMBER: ",{"score":{"name":"#Version","objective":"INH.Settings"}},"\n","------------------------------------"]
