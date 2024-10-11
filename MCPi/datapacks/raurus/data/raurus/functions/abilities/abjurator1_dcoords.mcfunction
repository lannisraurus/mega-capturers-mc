execute align xyz positioned 0 0 0 store result score @s dx run data get entity @s Pos[0] 1000
execute align xyz positioned 0 0 0 store result score @s dy run data get entity @s Pos[1] 1000
execute align xyz positioned 0 0 0 store result score @s dz run data get entity @s Pos[2] 1000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

