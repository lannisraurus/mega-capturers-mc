particle minecraft:enchant ~ ~ ~ 0.2 0.3 0.2 0.01 10 force

scoreboard players operation turret player_id = @s player_id
execute as @a[scores={class=12}] if score @s player_id = turret player_id run scoreboard players add @s time 1

scoreboard players add @s time 1
scoreboard players add @s time2 1

execute if entity @s[scores={time=..140,time2=20..}] run function raurus:abilities/summoner1sfx
execute if entity @s[scores={time=140}] run function raurus:abilities/summoner1spawn

execute if entity @s[scores={time=140..}] unless entity @e[type=armor_stand,distance=..1,tag=summoner_turret_active] run function raurus:abilities/summoner1kill

kill @s[scores={time=15000..}]
