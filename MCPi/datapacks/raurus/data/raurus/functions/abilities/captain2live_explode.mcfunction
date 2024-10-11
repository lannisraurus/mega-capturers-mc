playsound minecraft:entity.generic.explode ambient @a[distance=..25] ~ ~ ~ 10 1.4

particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

execute if entity @s[tag=red] as @a[distance=..3.5,team=blue] run damage @s 6 explosion
execute if entity @s[tag=blue] as @a[distance=..3.5,team=red] run damage @s 6 explosion

kill @s
