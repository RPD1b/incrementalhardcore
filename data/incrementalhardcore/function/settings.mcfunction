#Header
tellraw @s ["-----Incremental Hardcore Settings-----","\n"]

## AllowHealing ----------
#Display for if AllowRevies is true or not, takes 2 checks since I wanted a True/False not a 1/0
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
tellraw @s ["INTERNAL VERSION NUMBER: ",{"score":{"name":"Version","objective":"INH.Settings"}},"\n","------------------------------------"]




# ## TEMPLATE ----------
# #True
# execute if score TEMPLATE INH.Settings matches 1 run tellraw @s [{"text":"TEMPLATE: ","hoverEvent":{"action":"show_text",contents":["TEXT HERE","\nDefault: ",{"text":"DEFAULT HERE","color": "COLOR HERE"}]}},{"text":"True","color": "dark_green"}]
# #False
# execute if score TEMPLATE INH.Settings matches 0 run tellraw @s [{"text":"TEMPLATE: ","hoverEvent":{"action":"show_text",contents":["TEXT HERE","\nDefault: ",{"text":"DEFAULT HERE","color": "COLOR HERE"}]}},{"text":"False","color": "dark_red"}]
# #Backup in case it is unset, somehow.
# execute unless score TEMPLATE INH.Settings matches 0..1 run tellraw @s [{"text":"TEMPLATE: ","hoverEvent":{"action":"show_text","contents":["TEXT HERE","\nDefault: ",{"text":"DEFAULT HERE","color": "COLOR HERE"}]}},{"text":"UNSET","color": "dark_gray"}]

# #Buttons that allow you to toggle it between true and false. Runs a function with the value so it can automatically re-open.
# tellraw @s [{"text":"True ","color":"green","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'TEMPLATE',Value:1}"}},{"text":" False","color":"red","clickEvent":{"action":"run_command","value":"/function incrementalhardcore:settings_menu/set_value {Setting:'TEMPLATE',Value:0}"}},"\n"]
# #---------

