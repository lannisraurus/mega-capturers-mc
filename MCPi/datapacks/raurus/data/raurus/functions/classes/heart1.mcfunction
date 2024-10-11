scoreboard players set @s a1_sec 3
scoreboard players set @s a1_ticks 0

execute if entity @s[team=red] as @a[distance=1..10,limit=1,team=red] run effect give @s minecraft:regeneration 1 3 true
execute if entity @s[team=red] as @a[distance=1..10,limit=1,team=red] at @s run particle heart ~ ~0.5 ~ 0.4 0.4 0.4 0 5 force
execute if entity @s[team=red] as @a[distance=1..10,limit=1,team=red] at @s run playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 2

execute if entity @s[team=blue] as @a[distance=1..10,limit=1,team=blue] run effect give @s minecraft:regeneration 1 3 true
execute if entity @s[team=blue] as @a[distance=1..10,limit=1,team=blue] at @s run particle heart ~ ~0.5 ~ 0.4 0.4 0.4 0 5 force
execute if entity @s[team=blue] as @a[distance=1..10,limit=1,team=blue] at @s run playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 2

particle minecraft:angry_villager ~ ~0.5 ~ 0.7 0.7 0.7 0 8 force
playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 2
playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 1.8
playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 1.6
playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 1.4
playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 1.2
playsound minecraft:entity.warden.heartbeat ambient @a[distance=..6] ~ ~ ~ 100 1

execute if entity @s[scores={counter=1}] run playsound minecraft:block.beacon.power_select ambient @a[distance=..6] ~ ~ ~ 10 1.35

execute if entity @s[team=red,scores={counter=1}] as @a[distance=1..10,limit=1,team=red] run effect give @s minecraft:absorption 5 0 true
execute if entity @s[team=red,scores={counter=1}] as @a[distance=1..10,limit=1,team=red] at @s run playsound minecraft:block.beacon.power_select ambient @a[distance=..6] ~ ~ ~ 10 1.35

execute if entity @s[team=blue,scores={counter=1}] as @a[distance=1..10,limit=1,team=blue] run effect give @s minecraft:absorption 5 0 true
execute if entity @s[team=blue,scores={counter=1}] as @a[distance=1..10,limit=1,team=blue] at @s run playsound minecraft:block.beacon.power_select ambient @a[distance=..6] ~ ~ ~ 10 1.35

