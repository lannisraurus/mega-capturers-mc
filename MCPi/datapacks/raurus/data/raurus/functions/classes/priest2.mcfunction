scoreboard players set @s a2_sec 5
scoreboard players set @s a2_ticks 0

execute anchored eyes run particle crimson_spore ~ ~1 ~ 1 1 1 1 30 force
execute anchored eyes run particle heart ~ ~1 ~ 4 2 4 1 30 force
execute anchored eyes run particle dust 1 0 0 0.6 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.wither.hurt ambient @a[distance=..15] ~ ~ ~ 100 0
playsound minecraft:entity.wither.hurt ambient @a[distance=..15] ~ ~ ~ 100 0.5
playsound minecraft:entity.wither.hurt ambient @a[distance=..15] ~ ~ ~ 100 1
playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=..15] ~ ~ ~ 100 2

damage @s 4 wither

execute if entity @s[team=red] run effect give @a[team=red,distance=1..8] instant_health 1 1 true
execute if entity @s[team=blue] run effect give @a[team=blue,distance=1..8] instant_health 1 1 true

execute if entity @s[team=red] run effect give @a[team=red,distance=1..8] regeneration 4 1 true
execute if entity @s[team=blue] run effect give @a[team=blue,distance=1..8] regeneration 4 1 true
