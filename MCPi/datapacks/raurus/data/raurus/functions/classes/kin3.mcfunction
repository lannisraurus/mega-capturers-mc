scoreboard players set @s a3_sec 30
scoreboard players set @s a3_ticks 0

playsound minecraft:entity.ender_dragon.death ambient @a[distance=..30] ~ ~ ~ 0.2 1.5
playsound minecraft:entity.ender_dragon.death ambient @a[distance=..30] ~ ~ ~ 0.2 1.6
playsound minecraft:entity.ender_dragon.death ambient @a[distance=..30] ~ ~ ~ 0.2 1.7
playsound minecraft:entity.ender_dragon.death ambient @a[distance=..30] ~ ~ ~ 0.2 1.8

particle enchant ~ ~1.5 ~ 1.7 1.7 1.7 1 200 force
particle enchanted_hit ~ ~1.5 ~ 1.7 1.7 1.7 0.2 200 force
particle flash ~ ~1 ~ 1 1 1 0 50 force

scoreboard players set @s time3 60

tp @s ~ ~2 ~

summon marker ~ ~2 ~ {Invulnerable:1b,Tags:["kin3"]}
