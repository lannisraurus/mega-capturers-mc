scoreboard players add @s time 1
particle minecraft:item_slime ~ ~ ~ 0.2 0.2 0.2 0 1 force
particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0 1 force
tp @s ^ ^ ^1.5
execute if entity @s[scores={time=15..}] run return run function raurus:abilities/captain2explode
execute unless block ~ ~ ~ air run return run function raurus:abilities/captain2explode
execute as @s[tag=red] if entity @e[distance=..3.6,team=blue] run return run function raurus:abilities/captain2explode
execute as @s[tag=blue] if entity @e[distance=..3.6,team=red] run return run function raurus:abilities/captain2explode
