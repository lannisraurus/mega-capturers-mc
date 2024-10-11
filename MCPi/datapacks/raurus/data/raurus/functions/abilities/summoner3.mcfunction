scoreboard players add @s time 1

tp @s ~ ~ ~ ~17 ~

particle enchanted_hit ~ ~1.5 ~ 0.3 0.6 0.3 0 5 force
particle enchant ~ ~1.5 ~ 0.3 0.6 0.3 0.1 5 force
particle end_rod ~ ~1.5 ~ 0 1.4 0 0 2 force

execute if entity @s[tag=red] run particle dust 1 0 0 1.6 ~ ~1.5 ~ 0.8 0.8 0.8 0 4 force
execute if entity @s[tag=blue] run particle dust 0 0 1 1.6 ~ ~1.5 ~ 0.8 0.8 0.8 0 4 force

particle end_rod ^ ^1.5 ^2 0 0.4 0 0 5 force
particle enchanted_hit ^ ^0.2 ^2 0.1 0.5 0.1 0 8 force
particle enchanted_hit ^ ^0.2 ^-2 0.1 0.5 0.1 0 8 force

kill @s[scores={time=300..}]

execute if entity @s[tag=red] if entity @e[team=blue,distance=..30] run scoreboard players add @s time2 1
execute if entity @s[tag=blue] if entity @e[team=red,distance=..30] run scoreboard players add @s time2 1

execute if entity @s[scores={time2=40..}] run function raurus:abilities/summoner3shoot
