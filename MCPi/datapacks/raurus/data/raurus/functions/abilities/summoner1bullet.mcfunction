scoreboard players add @s time 1
particle enchanted_hit ~ ~ ~ 0. 0. 0. 0. 4 force
particle dust 0.5 0.6 1 0.76 ~ ~ ~ 0.1 0.1 0.1 0.006 10 force
tp @s ^ ^ ^1.3
kill @s[scores={time=12..}]
execute as @s[tag=red] positioned ~ ~-1 ~ if entity @e[distance=..1.1,team=blue] run function raurus:abilities/summoner1explode
execute as @s[tag=blue] positioned ~ ~-1 ~ if entity @e[distance=..1.1,team=red] run function raurus:abilities/summoner1explode

