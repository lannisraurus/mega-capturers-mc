scoreboard players set @s time 0
scoreboard players set @s counter 0

particle flash ~ ~ ~ 0 0 0 0 1 force
particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0 5 force

playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..15] ~ ~ ~ 5 2
playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..15] ~ ~ ~ 5 1
playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..15] ~ ~ ~ 5 0
playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..15] ~ ~ ~ 5 1.5
playsound minecraft:block.amethyst_block.resonate ambient @a[distance=..15] ~ ~ ~ 5 0.5

execute if entity @s[tag=red] run tp @s ~ ~ ~ facing entity @e[team=blue,sort=nearest,distance=..12,limit=1] eyes
execute if entity @s[tag=blue] run tp @s ~ ~ ~ facing entity @e[team=red,sort=nearest,distance=..12,limit=1] eyes
