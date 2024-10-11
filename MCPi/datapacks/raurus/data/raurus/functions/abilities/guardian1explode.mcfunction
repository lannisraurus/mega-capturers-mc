execute as @s[tag=red] run effect give @e[limit=1,sort=nearest,team=red] instant_health 1 0 true
execute as @s[tag=blue] run effect give @e[limit=1,sort=nearest,team=blue] instant_health 1 0 true

particle flash ~ ~ ~ 0 0 0 0 1 force
particle wax_on ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
particle wax_off ~ ~ ~ 0.02 0.02 0.02 0.006 2 force

playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.80
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 3 2

kill @s
