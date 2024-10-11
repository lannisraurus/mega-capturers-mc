tp @a[tag=in_game] 64 -51 64
spawnpoint @a[tag=in_game] 64 -51 64
team leave @a[tag=in_game]

scoreboard players set start_time counter 2400
function raurus:clean_entities
kill @e[type=!player,tag=!npc]

scoreboard players set red counter 0
scoreboard players set blue counter 0

scoreboard players set @a[tag=in_game] a0_sec 0
scoreboard players set @a[tag=in_game] a1_sec 0
scoreboard players set @a[tag=in_game] a2_sec 0
scoreboard players set @a[tag=in_game] a3_sec 0
scoreboard players set @a[tag=in_game] counter 0
scoreboard players set @a[tag=in_game] time 0
scoreboard players set @a[tag=in_game] time2 0
scoreboard players set @a[tag=in_game] time3 0

tag @a[tag=in_game] remove in_game
