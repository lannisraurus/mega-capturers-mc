scoreboard players add @s time 1

execute if block ~ ~ ~ air run tp @s[scores={time=0..60}] ^ ^ ^0.1

kill @s[scores={time=300..}]

particle minecraft:witch ~ ~ ~ 2 1 2 0.5 10 normal
particle minecraft:enchant ~ ~ ~ 2 1 2 0.1 5 normal
execute if entity @s[tag=red] run particle dust 1 0 0 2 ~ ~ ~ 2 1 2 0.1 5 normal
execute if entity @s[tag=blue] run particle dust 0 0 1 2 ~ ~ ~ 2 1 2 0.1 5 normal

execute if entity @s[tag=red] as @e[team=blue,distance=..4] run damage @s 1.4 minecraft:magic
execute if entity @s[tag=blue] as @e[team=red,distance=..4] run damage @s 1.4 minecraft:magic
execute if entity @s[tag=red] as @e[tag=!slow_immune,team=blue,distance=..4] run effect give @s slowness 1 2 true
execute if entity @s[tag=blue] as @e[tag=!slow_immune,team=red,distance=..4] run effect give @s slowness 1 2 true
