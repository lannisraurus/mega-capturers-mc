execute if entity @s[tag=red] at @e[team=blue,limit=1,sort=nearest,distance=..20] run summon marker ~ ~1.2 ~ {Tags:["disrupting_weave_aux"]}
execute if entity @s[tag=blue] at @e[team=red,limit=1,sort=nearest,distance=..20] run summon marker ~ ~1.2 ~ {Tags:["disrupting_weave_aux"]}

execute as @e[type=marker,tag=disrupting_weave_aux,limit=1,sort=nearest] run function raurus:abilities/abjurator1_coords

scoreboard players operation @s dx *= xyz_frict_mult counter
scoreboard players operation @s dy *= xyz_frict_mult counter
scoreboard players operation @s dz *= xyz_frict_mult counter

scoreboard players operation @s dx /= xyz_frict_div counter
scoreboard players operation @s dy /= xyz_frict_div counter
scoreboard players operation @s dz /= xyz_frict_div counter

execute if entity @e[type=marker,tag=disrupting_weave_aux,limit=1,sort=nearest] run function raurus:abilities/abjurator1_aux

kill @e[type=marker,tag=disrupting_weave_aux]
