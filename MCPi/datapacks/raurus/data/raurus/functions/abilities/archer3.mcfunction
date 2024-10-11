particle wax_on ~ ~ ~ 0.5 0.5 0.5 0 5 force
particle wax_off ~ ~ ~ 0.5 0.5 0.5 0 5 force

execute if entity @s[tag=red] run particle dust 1 0 0 0.5 ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute if entity @s[tag=blue] run particle dust 0 0 1 0.5 ~ ~ ~ 0.3 0.3 0.3 0 5 force

execute if entity @s[tag=red] as @a[team=blue,limit=1,sort=nearest,distance=..4] at @s run function raurus:abilities/archer3explode
execute if entity @s[tag=blue] as @a[team=red,limit=1,sort=nearest,distance=..4] at @s run function raurus:abilities/archer3explode

execute if entity @s[tag=red] if entity @a[team=blue,limit=1,sort=nearest,distance=..4] run kill @s
execute if entity @s[tag=blue] if entity @a[team=red,limit=1,sort=nearest,distance=..4] run kill @s

execute if entity @s[nbt={inGround:1b}] run summon lightning_bolt
execute if entity @s[nbt={inGround:1b}] run kill @s
