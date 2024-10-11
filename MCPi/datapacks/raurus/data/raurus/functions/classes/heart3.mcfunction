scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 2
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 1
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 0.85
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 1.5
playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 0.7

playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1000 1
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1000 1.2
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1000 1.4
playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1000 0.8

execute if entity @s[scores={counter=1}] run playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 2
execute if entity @s[scores={counter=1}] run playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 1.9
execute if entity @s[scores={counter=1}] run playsound minecraft:block.bell.resonate ambient @a ~ ~ ~ 1000 1.8
execute if entity @s[scores={counter=1}] run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1000 2
execute if entity @s[scores={counter=1}] run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1000 2

execute if entity @s[team=red] run effect give @a[team=red,distance=0..] instant_health 1 1 true
execute if entity @s[team=blue] run effect give @a[team=blue,distance=0..] instant_health 1 1 true

execute if entity @s[team=red] run effect give @a[team=red,distance=0..] strength 5 0 true
execute if entity @s[team=blue] run effect give @a[team=blue,distance=0..] strength 5 0 true

execute if entity @s[team=red,scores={counter=1}] run effect give @a[team=red,distance=0..] absorption 5 0 true
execute if entity @s[team=blue,scores={counter=1}] run effect give @a[team=blue,distance=0..] absorption 5 0 true

execute if entity @s[team=red] at @a[team=red] run particle heart ~ ~ ~ 3 3 3 0 50 force
execute if entity @s[team=blue] at @a[team=blue] run particle heart ~ ~ ~ 3 3 3 0 50 force
