tag @s remove blue
tag @s add red
scoreboard players set @s capture 0
scoreboard players set @s time2 98
execute unless dimension minecraft:the_nether run scoreboard players add red counter 100

effect give @a[team=red,distance=..8] instant_health 1 1 true
