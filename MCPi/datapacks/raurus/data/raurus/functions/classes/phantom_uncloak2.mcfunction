function raurus:classes/phantom_armour

playsound minecraft:entity.phantom.hurt ambient @a[distance=..7] ~ ~ ~ 1 0.5
playsound minecraft:entity.phantom.hurt ambient @a[distance=..7] ~ ~ ~ 1 0.7
playsound minecraft:entity.phantom.hurt ambient @a[distance=..7] ~ ~ ~ 1 0.8
playsound minecraft:entity.phantom.hurt ambient @a[distance=..7] ~ ~ ~ 1 0.9
playsound minecraft:entity.phantom.hurt ambient @a[distance=..7] ~ ~ ~ 1 0.4

tag @s remove cloaked2

effect clear @s invisibility

particle falling_dust sand ~ ~1 ~ 0.4 0.4 0.4 0 50 force
