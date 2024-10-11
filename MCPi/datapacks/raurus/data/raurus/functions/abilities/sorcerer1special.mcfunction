scoreboard players add @s time 1
particle witch ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
tp @s ^ ^ ^1.3
kill @s[scores={time=17..}]
execute as @s[tag=red] positioned ~ ~-1 ~ if entity @e[distance=..1.1,team=blue] run function raurus:abilities/sorcerer1explodespecial
execute as @s[tag=blue] positioned ~ ~-1 ~ if entity @e[distance=..1.1,team=red] run function raurus:abilities/sorcerer1explodespecial
