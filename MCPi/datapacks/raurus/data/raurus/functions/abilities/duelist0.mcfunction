effect give @s minecraft:health_boost 1 3 true
particle wax_on ^ ^2.5 ^ 0 0 0 0 1 force
particle wax_on ^-0.7 ^2 ^ 0 0 0 0 1 force
particle wax_on ^0.7 ^2 ^ 0 0 0 0 1 force
particle wax_on ^-1.4 ^1.5 ^ 0 0 0 0 1 force
particle wax_on ^1.4 ^1.5 ^ 0 0 0 0 1 force

execute if entity @s[scores={deal_damage=1..}] run scoreboard players add @s counter 1
execute if entity @s[scores={counter=4..}] run effect give @s strength 1 100 true
execute if entity @s[scores={counter=5..}] run scoreboard players set @s counter 0
