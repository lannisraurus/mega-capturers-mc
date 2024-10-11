scoreboard players add @s time 1
kill @s[scores={time=140..}]

execute if entity @s[tag=moving_target_1] run tp @s ~ ~ ~0.35
execute if entity @s[tag=moving_target_2] run tp @s ~ ~ ~0.4
execute if entity @s[tag=moving_target_3] run tp @s ~ ~ ~0.45
