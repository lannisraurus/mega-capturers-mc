scoreboard players set @s a2_sec 15
scoreboard players set @s a2_ticks 0

playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1.1
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1.2
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1.3

particle enchant ~ ~1.5 ~ 0.7 0.7 0.7 0.2 10 force
particle enchanted_hit ~ ~1.5 ~ 0.7 0.7 0.7 0.2 100 force
particle flash ~ ~1 ~ 0 0 0 0 1 force

scoreboard players set @s time2 60
