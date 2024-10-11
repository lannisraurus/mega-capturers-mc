scoreboard players add @s time 5
execute if entity @s[tag=red] unless entity @e[type=marker,tag=tower,tag=red,distance=..3] run scoreboard players add @s time 5
execute if entity @s[tag=blue] unless entity @e[type=marker,tag=tower,tag=blue,distance=..3] run scoreboard players add @s time 5

kill @s[scores={time=1000..}]

tp @s ~ ~ ~ ~15 ~

execute if entity @s[tag=red] if entity @e[type=marker,tag=tower,tag=red,distance=..6] run function raurus:abilities/guardian3special
execute if entity @s[tag=blue] if entity @e[type=marker,tag=tower,tag=blue,distance=..6] run function raurus:abilities/guardian3special

particle wax_on ^ ^0.1 ^1 0.02 0.02 0.02 0 5 force
particle wax_on ^ ^0.1 ^2 0.02 0.02 0.02 0 5 force
particle wax_on ^ ^0.1 ^3 0.02 0.02 0.02 0 5 force
particle wax_on ^ ^0.1 ^4 0.02 0.02 0.02 0 5 force

scoreboard players add @s time2 1
execute if entity @s[scores={time2=20..}] run function raurus:abilities/guardian3heal
