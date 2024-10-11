scoreboard players set @s a1_sec 5
scoreboard players set @s a1_ticks 0

effect give @s absorption 3 0 true

playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..14] ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..14] ~ ~ ~ 1 0.1
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..14] ~ ~ ~ 1 0.2
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..14] ~ ~ ~ 1 0.3

particle enchant ~ ~1.5 ~ 0.7 0.7 0.7 0.2 100 force
particle enchanted_hit ~ ~1.5 ~ 0.7 0.7 0.7 0.2 10 force

scoreboard players set @s time 60
