summon marker ~ ~ ~ {Tags:["abjuration_sphere_stay_in"]}

execute if entity @s[tag=red] as @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] facing entity @e[tag=blue,distance=5..7,sort=nearest,limit=1] feet run tp @s ^ ^ ^4.5 
execute if entity @s[tag=blue] as @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] facing entity @e[tag=red,distance=5..7,sort=nearest,limit=1] feet run tp @s ^ ^ ^4.5

execute if entity @s[tag=red] as @e[tag=blue,distance=5..7,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if entity @s[tag=blue] as @e[tag=red,distance=5..7,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run tp @s ~ ~ ~

execute at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run particle flash

kill @e[type=marker,tag=abjuration_sphere_stay_in]

execute if entity @s[tag=red] as @e[tag=blue,distance=5..7,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~
execute if entity @s[tag=blue] as @e[tag=red,distance=5..7,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~180 ~

execute if entity @s[tag=red] as @e[tag=blue,distance=5..7,sort=nearest,limit=1] at @s run function raurus:abilities/abjurator3_stay_in_entity_xyz
execute if entity @s[tag=blue] as @e[tag=red,distance=5..7,sort=nearest,limit=1] at @s run function raurus:abilities/abjurator3_stay_in_entity_xyz

