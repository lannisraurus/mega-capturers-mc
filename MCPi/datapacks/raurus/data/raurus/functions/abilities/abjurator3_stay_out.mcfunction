summon marker ~ ~ ~ {Tags:["abjuration_sphere_stay_out"]}

execute if entity @s[tag=red] as @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] facing entity @e[team=blue,distance=7..9,sort=nearest,limit=1] feet run tp @s ^ ^ ^9
execute if entity @s[tag=blue] as @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] facing entity @e[team=red,distance=7..9,sort=nearest,limit=1] feet run tp @s ^ ^ ^9

execute if entity @s[tag=red] as @e[team=blue,distance=7..9,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if entity @s[tag=blue] as @e[team=red,distance=7..9,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run tp @s ~ ~ ~

execute if entity @s[tag=red] as @e[team=blue,distance=7..9,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run spreadplayers ~ ~ 0 1 false @s
execute if entity @s[tag=blue] as @e[team=red,distance=7..9,sort=nearest,limit=1] at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run spreadplayers ~ ~ 0 1 false @s

execute at @e[type=marker,tag=abjuration_sphere_stay_out,sort=nearest,limit=1] run particle flash

kill @e[type=marker,tag=abjuration_sphere_stay_out]
