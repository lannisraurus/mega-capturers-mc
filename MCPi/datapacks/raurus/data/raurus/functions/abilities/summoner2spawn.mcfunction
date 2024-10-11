execute as @s[tag=red] run summon marker ~ ~ ~ {Tags:["summoner_river_active","red"]}
execute as @s[tag=blue] run summon marker ~ ~ ~ {Tags:["summoner_river_active","blue"]}

execute as @e[type=marker,tag=summoner_river_active,sort=nearest,limit=1] run spreadplayers ~ ~ 0 1 false @s

scoreboard players set @s time2 0
