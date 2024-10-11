scoreboard players add @s time 1
particle wax_on ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
tp @s ^ ^ ^1.8
kill @s[scores={time=15..}]
execute as @s[tag=red] if entity @a[distance=..2,team=red] run function raurus:abilities/guardian1explode
execute as @s[tag=blue] if entity @a[distance=..2,team=blue] run function raurus:abilities/guardian1explode
