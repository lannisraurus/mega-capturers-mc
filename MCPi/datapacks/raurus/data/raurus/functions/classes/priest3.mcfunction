scoreboard players set @s a3_sec 100
scoreboard players set @s a3_ticks 0

execute anchored eyes run particle crimson_spore ~ ~1 ~ 0 0 0 1 30 force
execute anchored eyes run particle dust 1 0 0 0.6 ~ ~1 ~ 0.3 0.3 0.3 1 15 force

playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..30] ~ ~ ~ 10 0.5
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..30] ~ ~ ~ 10 0.6
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..30] ~ ~ ~ 10 0.7
playsound minecraft:entity.elder_guardian.curse ambient @a[distance=..30] ~ ~ ~ 10 0.8

scoreboard players set @s time 1

effect give @s resistance 2 100 true

effect give @s slowness 2 100 true
