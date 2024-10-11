scoreboard players set @s a3_sec 2
scoreboard players set @s a3_ticks 0

summon marker ~ ~ ~ {Tags:["spacetime_rip"]}

execute as @e[tag=spacetime_rip,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=spacetime_rip,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1
execute as @e[tag=spacetime_rip,type=marker,sort=nearest,limit=1] at @s run tp @s ~ 67 ~ ~ 0

scoreboard players operation @e[limit=1,sort=nearest,type=marker,tag=spacetime_rip] player_id = @s player_id

playsound minecraft:block.enchantment_table.use ambient @a[distance=..5] ~ ~ ~ 2 1
playsound minecraft:block.enchantment_table.use ambient @a[distance=..5] ~ ~ ~ 2 0
playsound minecraft:block.enchantment_table.use ambient @a[distance=..5] ~ ~ ~ 2 0.5
playsound minecraft:block.enchantment_table.use ambient @a[distance=..5] ~ ~ ~ 2 1.5
playsound minecraft:block.enchantment_table.use ambient @a[distance=..5] ~ ~ ~ 2 2
