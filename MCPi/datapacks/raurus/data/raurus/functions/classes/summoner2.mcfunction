scoreboard players set @s a2_sec 20
scoreboard players set @s a2_ticks 0

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["summoner_river","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["summoner_river","blue"]}

execute positioned ~ ~1.5 ~ run particle minecraft:enchanted_hit ^ ^ ^2 1 1 1 0.1 15 force

playsound minecraft:block.beacon.activate ambient @a[distance=..15] ~ ~ ~ 0.7 2.00
playsound minecraft:block.beacon.activate ambient @a[distance=..15] ~ ~ ~ 0.7 1.75
playsound minecraft:block.beacon.activate ambient @a[distance=..15] ~ ~ ~ 0.7 1.00

execute as @e[tag=summoner_river,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=summoner_river,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ~ ~ ~ ~ 0
