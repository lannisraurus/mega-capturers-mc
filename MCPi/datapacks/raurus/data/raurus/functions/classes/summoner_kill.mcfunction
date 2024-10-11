scoreboard players operation kill_turrets player_id = @s player_id
execute as @e[type=marker,tag=summoner_turret] if score @s player_id = kill_turrets player_id run kill @s
