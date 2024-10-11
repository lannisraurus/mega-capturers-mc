summon marker ~ ~ ~ {Tags:["abjuration_sphere_stay_out"]}

execute if entity @s[tag=red] as @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] facing entity @e[tag=blue,distance=7..9,sort=nearest,limit=1] feet run tp @s ^ ^ ^9.5
execute if entity @s[tag=blue] as @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] facing entity @e[tag=red,distance=7..9,sort=nearest,limit=1] feet run tp @s ^ ^ ^9.5

execute if entity @s[tag=red] as @e[tag=blue,distance=7..9,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if entity @s[tag=blue] as @e[tag=red,distance=7..9,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run tp @s ~ ~ ~

execute at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run particle flash

kill @e[type=marker,tag=abjuration_sphere_stay_out]

execute if entity @s[tag=red] as @e[tag=blue,distance=7..9,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=blue] as @e[tag=red,distance=7..9,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~

execute if entity @s[tag=red] as @e[tag=blue,distance=7..9,sort=nearest,limit=1] at @s run function raurus:abilities/abjurator3_stay_out_entity_xyz
execute if entity @s[tag=blue] as @e[tag=red,distance=7..9,sort=nearest,limit=1] at @s run function raurus:abilities/abjurator3_stay_out_entity_xyz

