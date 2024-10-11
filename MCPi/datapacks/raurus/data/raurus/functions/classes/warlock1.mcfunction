scoreboard players set @s a1_sec 10
scoreboard players set @s a1_ticks 0

execute rotated as @s anchored eyes positioned 0 0 0 align xyz run summon marker ^ ^ ^1 {Tags:["fireball_marker"]}
execute if entity @s[team=blue,scores={counter=0..1}] run summon fireball ~ ~1.5 ~ {Tags:["fireball","blue"]}
execute if entity @s[team=red,scores={counter=0..1}] run summon fireball ~ ~1.5 ~ {Tags:["fireball","red"]}

execute if entity @s[team=blue,scores={counter=1}] positioned ~ ~1.5 ~ run summon fireball ^ ^ ^3 {Tags:["fireball","blue"]}
execute if entity @s[team=red,scores={counter=1}] positioned ~ ~1.5 ~ run summon fireball ^ ^ ^3 {Tags:["fireball","red"]}

execute if entity @s[team=blue,scores={counter=1}] positioned ~ ~1.5 ~ run summon fireball ^ ^ ^6 {Tags:["fireball","blue"]}
execute if entity @s[team=red,scores={counter=1}] positioned ~ ~1.5 ~ run summon fireball ^ ^ ^6 {Tags:["fireball","red"]}

execute positioned ~ ~1.5 ~ as @e[distance=..15,type=fireball,tag=fireball] positioned 0 0 0 store result score @s time run data get entity @e[tag=fireball_marker,limit=1] Pos[0] 1000
execute positioned ~ ~1.5 ~ as @e[distance=..15,type=fireball,tag=fireball] positioned 0 0 0 store result score @s time2 run data get entity @e[tag=fireball_marker,limit=1] Pos[1] 1000
execute positioned ~ ~1.5 ~ as @e[distance=..15,type=fireball,tag=fireball] positioned 0 0 0 store result score @s time3 run data get entity @e[tag=fireball_marker,limit=1] Pos[2] 1000

execute as @e[type=fireball,tag=fireball] store result entity @s Motion[0] double 0.0017 run scoreboard players get @s time
execute as @e[type=fireball,tag=fireball] store result entity @s Motion[1] double 0.0017 run scoreboard players get @s time2
execute as @e[type=fireball,tag=fireball] store result entity @s Motion[2] double 0.0017 run scoreboard players get @s time3

execute positioned ~ ~1.5 ~ run particle flame ^ ^ ^1.5 0.4 0.4 0.4 0.1 20 force
execute positioned ~ ~1.5 ~ run particle smoke ^ ^ ^1.5 0.4 0.4 0.4 0.05 5 force

playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 1.8
playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 1.6
playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 1.4
playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 1 0.8
