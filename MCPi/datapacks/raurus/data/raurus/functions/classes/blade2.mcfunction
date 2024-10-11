scoreboard players set @s a2_sec 15
scoreboard players set @s a2_ticks 0
scoreboard players set @s time2 10

particle dust 0.5 .0 0.6 0.5 ~1 ~2 ~ 0 0 0.5 0 50 force
particle dust 0.5 .0 0.6 0.5 ~-1 ~2 ~ 0 0 0.5 0 50 force
particle dust 0.5 .0 0.6 0.5 ~ ~2 ~1 0.5 0 0 0 50 force
particle dust 0.5 .0 0.6 0.5 ~ ~2 ~-1 0.5 0 0 0 50 force

particle dust 0.5 .0 0.6 0.5 ~1 ~1.15 ~ 0 0 0.5 0 50 force
particle dust 0.5 .0 0.6 0.5 ~-1 ~1.15 ~ 0 0 0.5 0 50 force
particle dust 0.5 .0 0.6 0.5 ~ ~1.15 ~1 0.5 0 0 0 50 force
particle dust 0.5 .0 0.6 0.5 ~ ~1.15 ~-1 0.5 0 0 0 50 force

particle dust 0.5 .0 0.6 0.5 ~1 ~0.3 ~ 0 0 0.5 0 50 force
particle dust 0.5 .0 0.6 0.5 ~-1 ~0.3 ~ 0 0 0.5 0 50 force
particle dust 0.5 .0 0.6 0.5 ~ ~0.3 ~1 0.5 0 0 0 50 force
particle dust 0.5 .0 0.6 0.5 ~ ~0.3 ~-1 0.5 0 0 0 50 force

playsound minecraft:entity.player.attack.sweep ambient @a[distance=..20] ~ ~ ~ 10 1.1
playsound minecraft:entity.player.attack.sweep ambient @a[distance=..20] ~ ~ ~ 10 1.3
