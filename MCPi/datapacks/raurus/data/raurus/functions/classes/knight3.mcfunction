scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.2 30 force
execute anchored eyes run particle dust 0 0 0 3 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.blaze.ambient ambient @a[distance=..15] ~ ~ ~ 2 1
playsound minecraft:entity.blaze.ambient ambient @a[distance=..15] ~ ~ ~ 2 0.8
playsound minecraft:entity.blaze.ambient ambient @a[distance=..15] ~ ~ ~ 2 0.4
playsound minecraft:entity.blaze.ambient ambient @a[distance=..15] ~ ~ ~ 2 0.6

scoreboard players set @s time3 1

effect give @s regeneration 5 1 true

tp @s ~ 40 ~
