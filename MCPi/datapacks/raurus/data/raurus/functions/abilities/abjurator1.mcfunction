execute if entity @s[scores={time=1}] run scoreboard players add @s y 1550
scoreboard players add @s time 1

execute if entity @s[tag=red] unless entity @e[type=marker,tag=tower,tag=red,distance=..10] run kill @s[scores={time=70..}]
execute if entity @s[tag=blue] unless entity @e[type=marker,tag=tower,tag=blue,distance=..10] run kill @s[scores={time=70..}]
execute if entity @s[tag=red] if entity @e[type=marker,tag=tower,tag=red,distance=..10] run kill @s[scores={time=110..}]
execute if entity @s[tag=blue] if entity @e[type=marker,tag=tower,tag=blue,distance=..10] run kill @s[scores={time=110..}]

particle dust 1 1 1 0.5 ~ ~ ~ 0.05 0.05 0.05 0 20 force
particle dust 1 0 1 0.5 ~ ~ ~ 0.05 0.05 0.05 0 20 force
execute if entity @s[tag=red] run particle dust 1 0 0 0.5 ~ ~ ~ 0.05 0.05 0.05 0 20 force
execute if entity @s[tag=blue] run particle dust 0 0 1 0.5 ~ ~ ~ 0.05 0.05 0.05 0 20 force

execute if entity @s[scores={time=13..80}] run function raurus:abilities/abjurator1_homing

scoreboard players operation @s x += @s dx
scoreboard players operation @s y += @s dy
scoreboard players operation @s z += @s dz

execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s z

execute if entity @s[tag=red] positioned ~ ~-1.2 ~ if entity @e[team=blue,distance=..0.7,limit=1] run function raurus:abilities/abjurator1_explode
execute if entity @s[tag=blue] positioned ~ ~-1.2 ~ if entity @e[team=red,distance=..0.7,limit=1] run function raurus:abilities/abjurator1_explode
