scoreboard players add @s time 1
execute if entity @s[scores={time=0..}] run scoreboard players operation @s time2 += @s time

effect clear @s invisibility

execute if entity @s[scores={time=60..}] run function raurus:abilities/captain2live_explode
execute if entity @s[scores={time2=75..}] run function raurus:abilities/captain2live_effects


