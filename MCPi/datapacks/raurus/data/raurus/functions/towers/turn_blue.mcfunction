tag @s remove red
tag @s add blue
scoreboard players set @s capture 0
scoreboard players set @s time2 98
execute unless dimension minecraft:the_nether run scoreboard players add blue counter 100

effect give @a[team=blue,distance=..8] instant_health 1 1 true
