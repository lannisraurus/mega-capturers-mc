scoreboard players set @s a1_sec 10
scoreboard players set @s a1_ticks 0

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["wither_wave","red","ww1"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["wither_wave","blue","ww1"]}

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["wither_wave","red","ww2"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["wither_wave","blue","ww2"]}

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["wither_wave","red","ww3"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["wither_wave","blue","ww3"]}

execute anchored eyes as @e[tag=wither_wave,type=marker,sort=nearest,limit=3] at @s run tp @s @a[limit=1,sort=nearest]

execute anchored eyes as @e[tag=ww1,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1
execute anchored eyes as @e[tag=ww2,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^1.5 ^ ^1
execute anchored eyes as @e[tag=ww3,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^-1.5 ^ ^1

playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 1 0.5
playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 1 0.9
