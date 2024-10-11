scoreboard players set @s a1_sec 1
scoreboard players set @s a1_ticks 18

execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["summoner_turret","red"]}
execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["summoner_turret","blue"]}

execute as @e[tag=sr1,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=sr1,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^-0.5 ^ ^0.75 ~-3 ~

playsound minecraft:entity.allay.ambient_without_item ambient @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:block.anvil.land ambient @a[distance=..15] ~ ~ ~ 0.7 0
playsound minecraft:block.anvil.land ambient @a[distance=..15] ~ ~ ~ 0.7 0.5
playsound minecraft:block.anvil.land ambient @a[distance=..15] ~ ~ ~ 0.7 0.75

scoreboard players operation @e[limit=1,sort=nearest,type=marker,tag=summoner_turret] player_id = @s player_id

execute if entity @s[scores={time=3..}] run function raurus:classes/summoner1clean
