scoreboard players set @s a2_sec 7
scoreboard players set @s a2_ticks 0

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["soul_orb","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["soul_orb","blue"]}

execute positioned ~ ~1.5 ~ run particle minecraft:sonic_boom ^ ^ ^2 0 0 0 0 2 force
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 1.75
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 1.00

execute as @e[tag=soul_orb,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_orb,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1
