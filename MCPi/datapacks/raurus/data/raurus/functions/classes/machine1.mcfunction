scoreboard players set @s a1_sec 20
scoreboard players set @s a1_ticks 0

effect give @s speed 3 4 true

scoreboard players set @s counter 1000
particle flame ~ ~ ~ 0.6 1 0.6 0.2 10 force
particle flash ~ ~1 ~ 0.3 0.3 0.3 0 5 force
particle smoke ~ ~ ~ 0.6 1 0.6 0.05 10 force

playsound minecraft:entity.generic.explode ambient @a[distance=..10] ~ ~ ~ 0.5 2
playsound minecraft:entity.generic.explode ambient @a[distance=..10] ~ ~ ~ 0.5 1.8
playsound minecraft:entity.generic.explode ambient @a[distance=..10] ~ ~ ~ 0.5 1.6
