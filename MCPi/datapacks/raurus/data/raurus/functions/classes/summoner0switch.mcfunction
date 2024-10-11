kill @e[type=interaction,tag=summoner_interaction,limit=1,sort=nearest]
scoreboard players add @s counter 1
execute if entity @s[scores={counter=2..}] run scoreboard players set @s counter 0
playsound minecraft:block.amethyst_block.break ambient @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:block.amethyst_block.break ambient @a[distance=..15] ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.break ambient @a[distance=..15] ~ ~ ~ 1 1
playsound minecraft:block.amethyst_block.break ambient @a[distance=..15] ~ ~ ~ 1 1.5
playsound minecraft:block.amethyst_block.break ambient @a[distance=..15] ~ ~ ~ 1 2
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0 35 force
