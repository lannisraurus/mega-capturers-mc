scoreboard players set win_time counter 150
scoreboard players set red counter 0
scoreboard players set blue counter 0

execute as @a[tag=in_game] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 10 0
execute as @a[tag=in_game] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 10 1
execute as @a[tag=in_game] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 10 2

kill @e[type=!player,tag=!npc]

scoreboard players set @a a0_sec 0
scoreboard players set @a a1_sec 0
scoreboard players set @a a2_sec 0
scoreboard players set @a a3_sec 0
scoreboard players set @a counter 0
scoreboard players set @a time 0
scoreboard players set @a time2 0
scoreboard players set @a time3 0
