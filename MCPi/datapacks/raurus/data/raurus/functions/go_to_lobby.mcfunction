execute in minecraft:overworld run tp @s 64 -51 64
execute in minecraft:overworld run spawnpoint @s 64 -51 64

scoreboard players set @s a0_sec 0
scoreboard players set @s a1_sec 0
scoreboard players set @s a2_sec 0
scoreboard players set @s a3_sec 0
scoreboard players set @s counter 0
scoreboard players set @s time 0
scoreboard players set @s time2 0
scoreboard players set @s time3 0

team leave @s[tag=!ready]
