tag @s remove ready
tag @s remove in_game
tag @s remove spectator
execute in minecraft:overworld run tp @s 64 -51 64
team leave @s

gamemode adventure @s

tellraw @s ["",{"text":"Welcome Back to Mega Capturers, ","bold":true,"color":"#19EAFE"},{"selector":"@s","bold":true,"color":"#19EAFE"}]
# tellraw @s ["",{"text":"Download the ","color":"#19EAFE"},{"text":"REQUIRED","italic":true,"underlined":true,"color":"#19EAFE"},{"text":" resource pack here! \u0020 ","color":"#19EAFE"},{"text":"[CLICK]","bold":true,"color":"#19EAFE","clickEvent":{"action":"open_url","value":"https://drive.google.com/file/d/1s9OVEbHZnuPAi_Wff6D05Xym_j9yGvW_/view?usp=sharing"}}]
playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 0
playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2
