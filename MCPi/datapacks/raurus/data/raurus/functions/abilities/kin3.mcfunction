execute at @e[type=marker,tag=kin3,limit=1,sort=nearest] run tp @s ~ ~ ~

particle enchant ~ ~ ~ 8 8 8 1 100 force
particle enchanted_hit ~ ~ ~ 6 6 6 1 50 force

effect give @s weakness 1 100 true
effect give @s resistance 1 100 true
effect give @s levitation 1 255 true

scoreboard players remove @s time3 1

execute if entity @s[team=red] as @a[team=blue,distance=..10] run damage @s 1 minecraft:out_of_world
execute if entity @s[team=blue] as @a[team=red,distance=..10] run damage @s 1 minecraft:out_of_world

execute if entity @s[scores={time3=..1}] run effect clear @s levitation
execute if entity @s[scores={time3=..1}] run effect clear @s resistance
execute if entity @s[scores={time3=..1}] run effect clear @s weakness

scoreboard players add @s counter 1
