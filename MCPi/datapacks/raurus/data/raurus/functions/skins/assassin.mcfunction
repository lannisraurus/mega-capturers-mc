scoreboard players add @s skin 1
execute if entity @s[scores={skin=1}] run return run function raurus:classes/select2
execute if entity @s[scores={skin=2}] run return run function raurus:skins/skins/assassin_hood
execute if entity @s[scores={skin=3}] run return run function raurus:skins/skins/assassin_pig
execute if entity @s[scores={skin=4}] run return run function raurus:skins/reset
