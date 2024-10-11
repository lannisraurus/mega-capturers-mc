execute if entity @s[tag=red] as @e[team=blue,distance=..4] run damage @s 8 minecraft:magic
execute if entity @s[tag=blue] as @e[team=red,distance=..4] run damage @s 8 minecraft:magic

particle flash ~ ~ ~ 0.1 0.1 0.1 0 10 force
particle glow ~ ~ ~ 0.2 0.2 0.2 0.01 20 force
playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 0.50
playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 0.00
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 0.80
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 1.20

kill @s
