scoreboard players add @s time 1

execute if entity @s[tag=red] unless entity @e[type=marker,tag=tower,tag=red,distance=..10] run kill @s[scores={time=300..}]
execute if entity @s[tag=blue] unless entity @e[type=marker,tag=tower,tag=blue,distance=..10] run kill @s[scores={time=300..}]
execute if entity @s[tag=red] if entity @e[type=marker,tag=tower,tag=red,distance=..10] run kill @s[scores={time=400..}]
execute if entity @s[tag=blue] if entity @e[type=marker,tag=tower,tag=blue,distance=..10] run kill @s[scores={time=400..}]

tp @s ~ ~ ~ ~3.5 ~

execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^1 0 0.1 0 0 3 force
execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^-1 0 0.1 0 0 3 force

execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^4 0 0.1 0 0 3 force
execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^-4 0 0.1 0 0 3 force

execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^8 0 0.1 0 0 3 force
execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^-8 0 0.1 0 0 3 force

execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^10 0 0.1 0 0 3 force
execute positioned ~ ~0.5 ~ run particle end_rod ^ ^ ^-10 0 0.1 0 0 3 force

execute if entity @s[tag=red] run particle dust 1 0 0 1 ~ ~0.3 ~ 3.5 0 3.5 0 20 force
execute if entity @s[tag=blue] run particle dust 0 0 1 1 ~ ~0.3 ~ 3.5 0 3.5 0 20 force
