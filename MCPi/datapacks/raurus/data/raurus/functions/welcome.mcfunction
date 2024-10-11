tag @s add welcome
execute in minecraft:overworld run tp @s 64 -51 64
clear @s
execute in minecraft:overworld run spawnpoint @s 64 -51 64
scoreboard players set @s class 0
scoreboard players set @s time 0
scoreboard players set @s time2 0
scoreboard players set @s time3 0
scoreboard players set @s archer_ult 0
scoreboard players set @s counter 0
scoreboard players set @s a0_sec 0
scoreboard players set @s a1_sec 0
scoreboard players set @s a2_sec 0
scoreboard players set @s a3_sec 0
scoreboard players set @s class 0
scoreboard players set @s wins 0

scoreboard players add players player_id 1
execute store result score @s player_id run scoreboard players get players player_id

gamemode adventure @s
