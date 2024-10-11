scoreboard players set @s a1_sec 15
scoreboard players set @s a1_ticks 0

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.2 30 force
execute anchored eyes run particle dust 0 0 0 3 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 2
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 1.8
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 1.6
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 1.4

scoreboard players set @s time 1
