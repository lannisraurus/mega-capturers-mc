execute as @s[tag=red] if entity @a[team=red,distance=..8.5,scores={class=12}] run damage @e[limit=1,sort=nearest,team=blue] 6.25 minecraft:magic
execute as @s[tag=blue] if entity @a[team=blue,distance=..8.5,scores={class=12}] run damage @e[limit=1,sort=nearest,team=red] 6.25 minecraft:magic

execute as @s[tag=red] unless entity @a[team=red,distance=..8.5,scores={class=12}] run damage @e[limit=1,sort=nearest,team=blue] 5 minecraft:magic
execute as @s[tag=blue] unless entity @a[team=blue,distance=..8.5,scores={class=12}] run damage @e[limit=1,sort=nearest,team=red] 5 minecraft:magic

particle flash ~ ~ ~ 0 0 0 0 1 force
particle enchanted_hit ~ ~ ~ 0.02 0.02 0.02 0.006 10 force

playsound minecraft:block.amethyst_block.break ambient @a[distance=..10] ~ ~ ~ 1 0.50
playsound minecraft:block.amethyst_block.break ambient @a[distance=..10] ~ ~ ~ 1 0.80

kill @s
