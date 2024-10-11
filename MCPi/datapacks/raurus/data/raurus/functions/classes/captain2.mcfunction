scoreboard players set @s a2_sec 20
scoreboard players set @s a2_ticks 0

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["tactical_missile","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["tactical_missile","blue"]}

execute positioned ~ ~1.5 ~ run particle item_slime ^ ^ ^2 1 1 1 0 30 force
playsound minecraft:entity.slime.attack ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
playsound minecraft:entity.slime.attack ambient @a[distance=..10] ~ ~ ~ 0.7 1.75
playsound minecraft:entity.slime.attack ambient @a[distance=..10] ~ ~ ~ 0.7 1.00

execute as @e[tag=tactical_missile,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=tactical_missile,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1
