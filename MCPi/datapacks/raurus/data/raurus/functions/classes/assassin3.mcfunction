scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

execute anchored eyes run particle witch ~ ~1 ~ 1 1 1 1 30 force
execute anchored eyes run particle dust 0 0 0 2 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 1 1
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 1 2
playsound minecraft:block.beacon.activate ambient @a[distance=..15] ~ ~ ~ 1 0

scoreboard players set @s counter 1
