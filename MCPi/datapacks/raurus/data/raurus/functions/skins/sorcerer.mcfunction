scoreboard players add @s skin 1
execute if entity @s[scores={skin=1}] run return run function raurus:classes/select1
execute if entity @s[scores={skin=2}] run return run function raurus:skins/skins/sorcerer_diamond
execute if entity @s[scores={skin=3}] run return run function raurus:skins/skins/sorcerer_gold
execute if entity @s[scores={skin=4}] run return run function raurus:skins/reset
