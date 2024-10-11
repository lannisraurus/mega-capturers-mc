scoreboard players set min time -2147483647
scoreboard players operation turret_clean player_id = @s player_id

execute as @e[tag=summoner_turret] if score @s player_id = turret_clean player_id run scoreboard players operation min time > @s time
execute as @e[tag=summoner_turret] if score @s player_id = turret_clean player_id run scoreboard players operation @s counter = @s time
execute as @e[tag=summoner_turret] if score @s player_id = turret_clean player_id run scoreboard players operation @s counter -= min time
execute as @e[tag=summoner_turret] if score @s player_id = turret_clean player_id run kill @s[scores={counter=0}]
