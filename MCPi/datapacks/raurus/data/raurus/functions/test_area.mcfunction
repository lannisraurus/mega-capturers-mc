#scoreboard players add moving_target_1 time 1
#scoreboard players add moving_target_2 time 1
#scoreboard players add moving_target_3 time 1

execute if score moving_target_1 time matches 100.. positioned 104 65 0 run function raurus:misc/spawn_villager_1
execute if score moving_target_2 time matches 100.. positioned 115 65 0 run function raurus:misc/spawn_villager_2
execute if score moving_target_3 time matches 100.. positioned 126 65 0 run function raurus:misc/spawn_villager_3

execute as @e[type=villager,tag=moving_target] at @s run function raurus:misc/moving_target

