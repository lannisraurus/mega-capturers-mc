particle minecraft:enchant ~ ~ ~ 0 1 0 0.5 2 force
particle minecraft:witch ~ ~ ~ 0 1 0 0 1 force

scoreboard players operation portal player_id = @s player_id
execute as @a[scores={class=5,time=1}] if score @s player_id = portal player_id run function raurus:abilities/golem2tp

scoreboard players add @s time 1
kill @s[scores={time=9000}]
