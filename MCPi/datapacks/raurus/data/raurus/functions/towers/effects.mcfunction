execute if score @s capture matches 1..50 run playsound minecraft:block.beacon.ambient ambient @a[distance=..9] ~ ~ ~ 10 0
execute if score @s capture matches 50..100 run playsound minecraft:block.beacon.ambient ambient @a[distance=..9] ~ ~ ~ 10 1
execute if score @s capture matches 100..150 run playsound minecraft:block.beacon.ambient ambient @a[distance=..9] ~ ~ ~ 10 1.5
execute if score @s capture matches 150.. run playsound minecraft:block.beacon.ambient ambient @a[distance=..9] ~ ~ ~ 10 2

execute if entity @s[tag=red] unless entity @e[team=blue,distance=..8] run scoreboard players add @s time2 1
execute if entity @s[tag=blue] unless entity @e[team=red,distance=..8] run scoreboard players add @s time2 1

execute if entity @s[scores={time2=100..}] run function raurus:towers/heal
