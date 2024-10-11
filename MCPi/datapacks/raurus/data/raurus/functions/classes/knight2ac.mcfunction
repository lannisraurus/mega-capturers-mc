effect give @s slowness 1 2 true

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.01 2 force

scoreboard players add @s time2 1

execute if entity @s[scores={time2=35..}] run function raurus:classes/knight2explode
