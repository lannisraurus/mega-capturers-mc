scoreboard players set @s a2_sec 35
scoreboard players set @s a2_ticks 0

playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..20] ~ ~ ~ 4 0.65
playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..20] ~ ~ ~ 6 0.6
playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..20] ~ ~ ~ 8 0.55
playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..20] ~ ~ ~ 10 0.5

particle witch ~ ~0.5 ~ 2 2 2 0 100 force

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["antimana_circle","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["antimana_circle","blue"]}
