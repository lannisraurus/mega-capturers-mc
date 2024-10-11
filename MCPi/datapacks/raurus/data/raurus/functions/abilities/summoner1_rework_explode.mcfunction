execute as @s[tag=red] run damage @e[limit=1,sort=nearest,team=blue] 2 minecraft:magic
execute as @s[tag=blue] run damage @e[limit=1,sort=nearest,team=red] 2 minecraft:magic

particle flash ~ ~ ~ 0 0 0 0 1 force
particle enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.006 25 force

playsound minecraft:block.amethyst_block.break ambient @a[distance=..20] ~ ~ ~ 1 0
playsound minecraft:block.amethyst_block.break ambient @a[distance=..20] ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.break ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:block.amethyst_block.break ambient @a[distance=..20] ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.break ambient @a[distance=..20] ~ ~ ~ 1 1.75

scoreboard players add @s counter 1

execute positioned ~ ~1 ~ run tp @s ^ ^ ^2

scoreboard players set @s time 15
