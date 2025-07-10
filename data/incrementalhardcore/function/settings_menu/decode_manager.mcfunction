## Decoding explained

#MINIMUM SIZE - 722000
#MAXIMUM SIZE 7220111

#IF less than or equal to 729111, then

# Digit 1-2 validation code   # Digit 3 ReviveHealth   # Digit 4 AllowRevives   # Digit 5 TotemEffect   # Digit 6 AllowHealing
#                             #                        #                        #                       #
# 72 - Valid code             # 2 - 2 Revive health    # 0 - FALSE              # 0 - FALSE             # 0 - FALSE
# NOT 72 - Invalid code       # 9 - 9 Revive health    # 1 - TRUE               # 1 - TRUE              # 1 - TRUE


#IF greater than 729111, then

# Digit 1-2 validation code   # Digit 3-4 ReviveHealth   # Digit 4 AllowRevives   # Digit 5 TotemEffect   # Digit 6 AllowHealing
#                             #                          #                        #                       #                       
# 72 - Valid code             # 10 - 10 Revive health    # 0 - FALSE              # 0 - FALSE             # 0 - FALSE
# NOT 72 - Invalid code       # 20 - 20 Revive health    # 1 - TRUE               # 1 - TRUE              # 1 - TRUE


# Fails if the code is outside of possible VALID values
execute unless score @s INH.SettingsMenu matches 722000..7220111 run return fail

# Store the code
execute store result storage incrementalhardcore:temp SettingsDecode.OriginalValue int 1 run scoreboard players get @s INH.SettingsMenu

# Checks for the first case
execute unless score @s INH.SettingsMenu matches 7210000.. run function incrementalhardcore:settings_menu/decode_settings/lower_end_treatment

# Checks for the second case
execute if score @s INH.SettingsMenu matches 7210000.. run function incrementalhardcore:settings_menu/decode_settings/upper_end_treatment


# Reset their score so they don't continually update the settings
scoreboard players set @s INH.SettingsMenu 0