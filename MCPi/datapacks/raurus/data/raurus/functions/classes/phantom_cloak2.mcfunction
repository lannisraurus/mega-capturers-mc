function raurus:classes/phantom_clear

playsound minecraft:entity.phantom.ambient ambient @a[distance=..7] ~ ~ ~ 1 1
playsound minecraft:entity.phantom.ambient ambient @a[distance=..7] ~ ~ ~ 1 1.2
playsound minecraft:entity.phantom.ambient ambient @a[distance=..7] ~ ~ ~ 1 1.4
playsound minecraft:entity.phantom.ambient ambient @a[distance=..7] ~ ~ ~ 1 1.6
playsound minecraft:entity.phantom.ambient ambient @a[distance=..7] ~ ~ ~ 1 1.8
playsound minecraft:entity.phantom.ambient ambient @a[distance=..7] ~ ~ ~ 1 2

tag @s add cloaked2

particle falling_dust sand ~ ~1 ~ 0.4 0.4 0.4 0 50 force
