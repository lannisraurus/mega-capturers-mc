scoreboard players add @s skin 1
execute if entity @s[scores={skin=1}] run return run function raurus:classes/select16
execute if entity @s[scores={skin=2}] run return run function raurus:skins/reset
