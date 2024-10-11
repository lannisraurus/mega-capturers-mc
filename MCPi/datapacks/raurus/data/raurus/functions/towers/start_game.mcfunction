tag @a[tag=ready] add in_game
tp @a[team=blue,tag=in_game] 12 66 115 -135 0
tp @a[team=red,tag=in_game] 115 66 12 45 0

spawnpoint @a[team=blue,tag=in_game] 12 66 115
spawnpoint @a[team=red,tag=in_game] 115 66 12

title @a[tag=in_game] title {"text":"* START *","bold":true,"color":"#C34DF8"}

execute as @a[tag=in_game] at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s ~ ~ ~ 1 0.9

function raurus:clean_entities

kill @e[type=!player,tag=!npc]

scoreboard players set red counter 0
scoreboard players set blue counter 0

scoreboard players set @a a0_sec 0
scoreboard players set @a a1_sec 0
scoreboard players set @a a2_sec 0
scoreboard players set @a a3_sec 0
scoreboard players set @a counter 0
scoreboard players set @a time 0
scoreboard players set @a time2 0
scoreboard players set @a time3 0
