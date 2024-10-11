scoreboard players set @s a1_sec 1
scoreboard players set @s a1_ticks 0

particle dust 0.75 0 1 0.65 ~ ~0.5 ~ 0.3 0.3 0.3 0 100 force
execute anchored eyes run particle dust 1 1 1 0.65 ^ ^ ^1.5 0.1 0.1 0.1 1 50 force
execute anchored eyes run particle dust 0.75 0 1 0.5 ^ ^ ^1.5 0.3 0.3 0.3 1 50 force

playsound minecraft:entity.allay.item_given ambient @a[distance=..20] ~ ~ ~ 2 0.10
playsound minecraft:entity.allay.item_given ambient @a[distance=..20] ~ ~ ~ 2 0.20
playsound minecraft:entity.allay.item_given ambient @a[distance=..20] ~ ~ ~ 2 0.30
playsound minecraft:entity.allay.item_given ambient @a[distance=..20] ~ ~ ~ 2 0.40
playsound minecraft:entity.allay.item_given ambient @a[distance=..20] ~ ~ ~ 2 0.50

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["disrupting_weave","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["disrupting_weave","blue"]}

execute as @e[tag=disrupting_weave,type=marker,sort=nearest,limit=1] at @s run function raurus:abilities/abjurator1_coords 

execute as @e[tag=disrupting_weave,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=disrupting_weave,type=marker,sort=nearest,limit=1] at @s run tp @s ^ ^ ^0.33

execute as @e[tag=disrupting_weave,type=marker,sort=nearest,limit=1] at @s run function raurus:abilities/abjurator1_dcoords
