kill @s
scoreboard players set @s time 0
tag @s remove bloodkill
execute anchored eyes run particle crimson_spore ~ ~1 ~ 0 0 0 0 100 force
playsound minecraft:entity.wither.death ambient @a[distance=..30] ~ ~ ~ 10 1
playsound minecraft:entity.wither.death ambient @a[distance=..30] ~ ~ ~ 10 0.8
playsound minecraft:entity.wither.death ambient @a[distance=..30] ~ ~ ~ 10 1.2
playsound minecraft:entity.wither.death ambient @a[distance=..30] ~ ~ ~ 10 0.6
