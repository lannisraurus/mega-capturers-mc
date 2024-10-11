scoreboard players set @s a3_sec 50
scoreboard players set @s a3_ticks 0

execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["phantom_cloud","red"]}
execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["phantom_cloud","blue"]}

playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 1 1.9
playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 1 1.8
playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 1 1.7
playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 1 1.6
playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..16] ~ ~ ~ 1 1.5
