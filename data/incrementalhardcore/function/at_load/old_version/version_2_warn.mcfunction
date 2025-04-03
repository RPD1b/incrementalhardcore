tellraw @a ["",{"text":\
"Warning! Incompatible version detected.","color":"red"},"\n\n\
You are using internal version ",{"score":{"name":"#Version","objective":"INH.Settings"}},", however it seems you have data from internal version 2.\n\
If you have already migrated your data, simply ignore this message.\n\
If you haven't migrated your data, please check the modrinth page for instructions on how to do so.\n\
Not migrating your data, means your data pack will not work until you do so\
."]

scoreboard players reset Version INH.Settings
