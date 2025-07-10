# Digit 1-2 validation code   # Digit 3 ReviveHealth   # Digit 4 AllowRevives   # Digit 5 TotemEffect   # Digit 6 AllowHealing
#                             #                        #                        #                       #
# 72 - Valid code             # 2 - 2 Revive health    # 0 - FALSE              # 0 - FALSE             # 0 - FALSE
# NOT 72 - Invalid code       # 9 - 9 Revive health    # 1 - TRUE               # 1 - TRUE              # 1 - TRUE

# If this has been ran then digits 1-2 are already correct

# Get ReviveHealth
data modify storage incrementalhardcore:temp SettingsDecode.ReviveHealth set string storage incrementalhardcore:temp SettingsDecode.OriginalValue 2 3

# Get AllowRevives
data modify storage incrementalhardcore:temp SettingsDecode.AllowRevives set string storage incrementalhardcore:temp SettingsDecode.OriginalValue 3 4

# Get TotemEffect
data modify storage incrementalhardcore:temp SettingsDecode.TotemEffect set string storage incrementalhardcore:temp SettingsDecode.OriginalValue 4 5

# Get AllowHealing
data modify storage incrementalhardcore:temp SettingsDecode.AllowHealing set string storage incrementalhardcore:temp SettingsDecode.OriginalValue 5 6


# Go actually set the settings :sob:
function incrementalhardcore:settings_menu/set with storage incrementalhardcore:temp SettingsDecode