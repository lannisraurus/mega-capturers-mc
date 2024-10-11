scoreboard players set @s a2_sec 10
scoreboard players set @s a2_ticks 0

tag @e[type=arrow,limit=1,sort=nearest] add necrotic_ride
execute as @s run ride @s mount @e[type=arrow,limit=1,sort=nearest]

effect give @s speed 2 0 true
