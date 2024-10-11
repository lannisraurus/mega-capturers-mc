scoreboard players add @s time 1
kill @s[scores={time=1200..}]

execute if entity @s[tag=red] run particle dust 1 0 0 0.75 ~ ~ ~ 0.1 0.15 0.1 0 5 force
execute if entity @s[tag=blue] run particle dust 0 0 1 0.75 ~ ~ ~ 0.1 0.15 0.1 0 5 force

execute if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

execute if entity @s[tag=red] if entity @e[team=blue,distance=..1.5] run function raurus:abilities/captain1explode
execute if entity @s[tag=blue] if entity @e[team=red,distance=..1.5] run function raurus:abilities/captain1explode

execute if entity @s[tag=red] if entity @e[tag=blue,distance=..0.5] run function raurus:abilities/captain1explode
execute if entity @s[tag=blue] if entity @e[tag=red,distance=..0.5] run function raurus:abilities/captain1explode
