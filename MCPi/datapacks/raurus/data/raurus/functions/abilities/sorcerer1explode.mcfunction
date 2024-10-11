execute as @s[tag=red] run damage @e[limit=1,sort=nearest,team=blue] 2 minecraft:magic
execute as @s[tag=blue] run damage @e[limit=1,sort=nearest,team=red] 2 minecraft:magic

particle flash ~ ~ ~ 0 0 0 0 1 force
particle soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.50
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.80
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.30
kill @s
