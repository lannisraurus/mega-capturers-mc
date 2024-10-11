scoreboard players set @s a2_sec 30
scoreboard players set @s a2_ticks 0

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.2 30 force
execute anchored eyes run particle dust 0 0 0 3 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 0
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 0.2
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 0.4
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 0.6

scoreboard players set @s time2 1
