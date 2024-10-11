kill @s

particle flash ~ ~1 ~ 0.5 0.5 0.5 0 10 force
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0 10 force

playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 1.75
playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 1.5
playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 1.25

execute if entity @s[tag=red] as @e[team=blue,distance=..3.5] run damage @s 6 magic
execute if entity @s[tag=blue] as @e[team=red,distance=..3.5] run damage @s 6 magic
