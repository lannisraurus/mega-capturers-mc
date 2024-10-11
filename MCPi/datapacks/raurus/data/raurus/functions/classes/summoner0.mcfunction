execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["summoner_ray","red","sr1"]}
execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["summoner_ray","blue","sr1"]}

execute if entity @s[team=red] run summon marker ~ ~ ~ {Tags:["summoner_ray","red","sr2"]}
execute if entity @s[team=blue] run summon marker ~ ~ ~ {Tags:["summoner_ray","blue","sr2"]}

execute as @e[tag=sr1,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=sr1,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^-0.5 ^ ^0.75 ~-3 ~

execute as @e[tag=sr2,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=sr2,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^-0.5 ^ ^ ~-3 ~

playsound minecraft:entity.allay.ambient_without_item ambient @a[distance=..15] ~ ~ ~ 0.5 2
