scoreboard players set @s a1_sec 10
scoreboard players set @s a1_ticks 0

execute anchored eyes run particle crimson_spore ~ ~1 ~ 1 1 1 1 30 force
execute anchored eyes run particle dust 1 0 0 0.6 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.wither.hurt ambient @a[distance=..15] ~ ~ ~ 100 2
playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=..15] ~ ~ ~ 100 1.8
playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=..15] ~ ~ ~ 100 1.6
playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=..15] ~ ~ ~ 100 1.5

execute if entity @s[team=red] as @e[team=blue,distance=..8,sort=nearest,limit=1] at @s run function raurus:classes/priest1explode
execute if entity @s[team=blue] as @e[team=red,distance=..8,sort=nearest,limit=1] at @s run function raurus:classes/priest1explode

execute if entity @s[team=red] if entity @e[team=blue,distance=..8,sort=nearest,limit=1] run effect give @s instant_health 1 0 true
execute if entity @s[team=blue] if entity @e[team=red,distance=..8,sort=nearest,limit=1] run effect give @s instant_health 1 0 true
