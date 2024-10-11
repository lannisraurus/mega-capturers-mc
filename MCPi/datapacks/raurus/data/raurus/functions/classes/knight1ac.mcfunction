execute if entity @s[scores={time=1}] run effect give @s speed 1 8 true

execute if entity @s[scores={time=5}] run effect give @s levitation 1 30 true

execute if entity @s[scores={time=10}] run effect clear @s levitation

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0 10 force
execute anchored eyes run particle dust 0 0 0 3 ~ ~1 ~ 1 1 1 0 5 force

scoreboard players add @s time 1

execute if entity @s[scores={time=6..,fall=1..}] run function raurus:classes/knight1explode

execute if entity @s[scores={time=80..}] run scoreboard players set @s time 0
