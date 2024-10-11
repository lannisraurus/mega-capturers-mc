scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

tag @e[type=arrow,limit=1,sort=nearest] add eyeblight
execute if entity @s[team=red] run tag @e[type=arrow,limit=1,sort=nearest] add red
execute if entity @s[team=blue] run tag @e[type=arrow,limit=1,sort=nearest] add blue

playsound minecraft:entity.wither.spawn ambient @a[distance=..15] ~ ~ ~ 1 1
playsound minecraft:entity.wither.spawn ambient @a[distance=..15] ~ ~ ~ 1 1.2
playsound minecraft:entity.wither.spawn ambient @a[distance=..15] ~ ~ ~ 1 1.4
