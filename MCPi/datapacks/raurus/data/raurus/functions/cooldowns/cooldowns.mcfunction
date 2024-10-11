scoreboard players add @s a0_ticks 1
scoreboard players add @s a1_ticks 1
scoreboard players add @s a2_ticks 1
scoreboard players add @s a3_ticks 1

execute if score @s a0_ticks matches 20.. run function raurus:cooldowns/a0
execute if score @s a1_ticks matches 20.. run function raurus:cooldowns/a1
execute if score @s a2_ticks matches 20.. run function raurus:cooldowns/a2
execute if score @s a3_ticks matches 20.. run function raurus:cooldowns/a3
