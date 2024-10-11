execute if score start_time counter matches 2400 run tellraw @a[tag=ready] {"text":"> Game starting in 2 minutes.","color":"aqua"}
execute if score start_time counter matches 1800 run tellraw @a[tag=ready] {"text":"> Game starting in 1 minute and 30 seconds.","color":"aqua"}
execute if score start_time counter matches 1200 run tellraw @a[tag=ready] {"text":"> Game starting in 1 minute.","color":"aqua"}
execute if score start_time counter matches 600 run tellraw @a[tag=ready] {"text":"> Game starting in 30 seconds.","color":"aqua"}
execute if score start_time counter matches 200 run tellraw @a[tag=ready] {"text":"> Game starting in 10 seconds.","color":"aqua"}
execute if score start_time counter matches 180 run tellraw @a[tag=ready] {"text":"> Game starting in 9 seconds.","color":"aqua"}
execute if score start_time counter matches 160 run tellraw @a[tag=ready] {"text":"> Game starting in 8 seconds.","color":"aqua"}
execute if score start_time counter matches 140 run tellraw @a[tag=ready] {"text":"> Game starting in 7 seconds.","color":"aqua"}
execute if score start_time counter matches 120 run tellraw @a[tag=ready] {"text":"> Game starting in 6 seconds.","color":"aqua"}
execute if score start_time counter matches 100 run tellraw @a[tag=ready] {"text":"> Game starting in 5 seconds.","color":"aqua"}
execute if score start_time counter matches 80 run tellraw @a[tag=ready] {"text":"> Game starting in 4 seconds.","color":"aqua"}
execute if score start_time counter matches 60 run tellraw @a[tag=ready] {"text":"> Game starting in 3 seconds.","color":"aqua"}
execute if score start_time counter matches 40 run tellraw @a[tag=ready] {"text":"> Game starting in 2 seconds.","color":"aqua"}
execute if score start_time counter matches 20 run tellraw @a[tag=ready] {"text":"> Game starting in 1 seconds.","color":"aqua"}
execute if score start_time counter matches 1 run tellraw @a[tag=ready] {"text":"> START!","color":"aqua"}

execute as @a[tag=ready] at @s if score start_time counter matches 2400 run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 2
execute as @a[tag=ready] at @s if score start_time counter matches 1800 run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 2
execute as @a[tag=ready] at @s if score start_time counter matches 1200 run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 2
execute as @a[tag=ready] at @s if score start_time counter matches 600 run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 2
execute as @a[tag=ready] at @s if score start_time counter matches 1..200 run playsound minecraft:block.beacon.ambient ambient @s ~ ~ ~ 10 1

execute if score start_time counter matches 200 run function raurus:clean_entities

execute if score start_time counter matches 1 run function raurus:towers/start_game

execute if score start_time counter matches 1.. run scoreboard players remove start_time counter 1
