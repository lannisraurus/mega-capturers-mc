scoreboard players set @s a2_sec 10
scoreboard players set @s a2_ticks 0

playsound minecraft:entity.phantom.death ambient @a[distance=..7] ~ ~ ~ 10 0
playsound minecraft:entity.phantom.death ambient @a[distance=..7] ~ ~ ~ 10 1
playsound minecraft:entity.phantom.death ambient @a[distance=..7] ~ ~ ~ 10 2
playsound minecraft:entity.phantom.death ambient @a[distance=..7] ~ ~ ~ 10 1.5

effect give @s speed 1 4 true

particle minecraft:dust_color_transition 1 1 1 1 1 1 0 ~ ~1 ~ 0.5 0.5 0.5 0.1 150 force
