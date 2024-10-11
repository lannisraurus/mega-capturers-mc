scoreboard players add @s time 1
particle soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
tp @s ^ ^ ^1.3
kill @s[scores={time=14..}]
execute as @s[tag=red] positioned ~ ~-1 ~ if entity @e[distance=..1.1,team=blue] run function raurus:abilities/sorcerer1explode
execute as @s[tag=blue] positioned ~ ~-1 ~ if entity @e[distance=..1.1,team=red] run function raurus:abilities/sorcerer1explode
