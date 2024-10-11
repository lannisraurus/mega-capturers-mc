scoreboard players set @s a2_sec 10
scoreboard players set @s a2_ticks 0

effect give @s poison 10 2 true

particle minecraft:happy_villager ~ ~0.5 ~ 0.7 0.7 0.7 0.1 30 force
particle minecraft:angry_villager ~ ~0.5 ~ 0.7 0.7 0.7 0.03 5 force
playsound minecraft:entity.warden.listening_angry ambient @a[distance=..8] ~ ~ ~ 1 2
playsound minecraft:entity.warden.listening_angry ambient @a[distance=..8] ~ ~ ~ 1 1.9
playsound minecraft:entity.warden.listening_angry ambient @a[distance=..8] ~ ~ ~ 1 1.8
playsound minecraft:entity.warden.listening_angry ambient @a[distance=..8] ~ ~ ~ 1 1.7
playsound minecraft:entity.warden.listening_angry ambient @a[distance=..8] ~ ~ ~ 1 1.6
