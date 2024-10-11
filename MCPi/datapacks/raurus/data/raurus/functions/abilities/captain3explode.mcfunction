kill @s

execute if entity @s[tag=red] as @e[team=blue,distance=..6.5] run damage @s 9 minecraft:explosion
execute if entity @s[tag=blue] as @e[team=red,distance=..6.5] run damage @s 9 minecraft:explosion

particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 4 force
playsound minecraft:entity.generic.explode ambient @a[distance=..25] ~ ~ ~ 10 0
playsound minecraft:entity.generic.explode ambient @a[distance=..25] ~ ~ ~ 10 1
playsound minecraft:entity.generic.explode ambient @a[distance=..25] ~ ~ ~ 10 0.5
playsound minecraft:entity.generic.explode ambient @a[distance=..25] ~ ~ ~ 10 0.2
