scoreboard players add @s time 1

execute if entity @s[tag=red] unless entity @e[type=marker,tag=tower,tag=red,distance=..10] run kill @s[scores={time=300..}]
execute if entity @s[tag=blue] unless entity @e[type=marker,tag=tower,tag=blue,distance=..10] run kill @s[scores={time=300..}]
execute if entity @s[tag=red] if entity @e[type=marker,tag=tower,tag=red,distance=..10] run kill @s[scores={time=400..}]
execute if entity @s[tag=blue] if entity @e[type=marker,tag=tower,tag=blue,distance=..10] run kill @s[scores={time=400..}]

summon marker ~ ~ ~ {Tags:["abjuration_sphere_aux"]}

execute as @e[type=marker,tag=abjuration_sphere_aux,sort=nearest,limit=1,tag=!tped] run tp @s @e[type=marker,tag=abjuration_sphere,sort=nearest,limit=1]
execute as @e[type=marker,tag=abjuration_sphere_aux,sort=nearest,limit=1,tag=!tped] run tp @s ~ ~ ~ ~ -90

tp @s ~ ~ ~ ~8 ~

execute if entity @s[tag=red] run particle dust 1 0 0 1 ~ ~ ~ 3 3 3 0 20 force
execute if entity @s[tag=blue] run particle dust 0 0 1 1 ~ ~ ~ 3 3 3 0 20 force

execute if entity @s[tag=red] if entity @e[team=blue,distance=5..7] run function raurus:abilities/abjurator3_stay_in
execute if entity @s[tag=blue] if entity @e[team=red,distance=5..7] run function raurus:abilities/abjurator3_stay_in
execute if entity @s[tag=red] if entity @e[team=blue,distance=7..9] run function raurus:abilities/abjurator3_stay_out
execute if entity @s[tag=blue] if entity @e[team=red,distance=7..9] run function raurus:abilities/abjurator3_stay_out

execute if entity @s[tag=red] if entity @e[tag=!tower,tag=blue,distance=5..7] run function raurus:abilities/abjurator3_stay_in_entity
execute if entity @s[tag=blue] if entity @e[tag=!tower,tag=red,distance=5..7] run function raurus:abilities/abjurator3_stay_in_entity
execute if entity @s[tag=red] if entity @e[tag=!tower,tag=blue,distance=7..9] run function raurus:abilities/abjurator3_stay_out_entity
execute if entity @s[tag=blue] if entity @e[tag=!tower,tag=red,distance=7..9] run function raurus:abilities/abjurator3_stay_out_entity

execute if entity @s[tag=red] as @e[tag=blue,distance=4..10,sort=nearest,limit=1,type=arrow] at @s store result entity @s Motion[1] double 1 run scoreboard players get xyz_arrow counter
execute if entity @s[tag=blue] as @e[tag=red,distance=4..10,sort=nearest,limit=1,type=arrow] at @s store result entity @s Motion[1] double 1 run scoreboard players get xyz_arrow counter

execute if entity @s[tag=red] as @e[tag=blue,distance=4..10,sort=nearest,limit=1,type=fireball] at @s store result entity @s Motion[1] double 1 run scoreboard players get xyz_arrow counter
execute if entity @s[tag=blue] as @e[tag=red,distance=4..10,sort=nearest,limit=1,type=fireball] at @s store result entity @s Motion[1] double 1 run scoreboard players get xyz_arrow counter
