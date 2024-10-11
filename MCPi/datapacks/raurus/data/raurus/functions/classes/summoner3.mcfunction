scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["summoner_artillery","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["summoner_artillery","blue"]}

execute positioned ~ ~1.5 ~ run particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.1 50 force
execute positioned ~ ~1.5 ~ run particle minecraft:flash ~ ~ ~ 1 1 1 0.1 50 force


playsound minecraft:block.beacon.activate ambient @a[distance=..25] ~ ~ ~ 0.7 0.75
playsound minecraft:block.beacon.activate ambient @a[distance=..25] ~ ~ ~ 0.7 1.25
playsound minecraft:block.beacon.activate ambient @a[distance=..25] ~ ~ ~ 0.7 1.00
