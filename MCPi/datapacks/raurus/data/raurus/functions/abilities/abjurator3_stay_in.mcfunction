summon marker ~ ~ ~ {Tags:["abjuration_sphere_stay_in"]}

execute if entity @s[tag=red] as @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] facing entity @e[team=blue,distance=5..7,sort=nearest,limit=1] feet run tp @s ^ ^ ^5 
execute if entity @s[tag=blue] as @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] facing entity @e[team=red,distance=5..7,sort=nearest,limit=1] feet run tp @s ^ ^ ^5

execute if entity @s[tag=red] as @e[team=blue,distance=5..7,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if entity @s[tag=blue] as @e[team=red,distance=5..7,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run tp @s ~ ~ ~

execute if entity @s[tag=red] as @e[team=blue,distance=5..7,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run spreadplayers ~ ~ 0 1 false @s
execute if entity @s[tag=blue] as @e[team=red,distance=5..7,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run spreadplayers ~ ~ 0 1 false @s

execute at @e[type=marker,tag=abjuration_sphere_stay_in,sort=nearest,limit=1] run particle flash

kill @e[type=marker,tag=abjuration_sphere_stay_in]
