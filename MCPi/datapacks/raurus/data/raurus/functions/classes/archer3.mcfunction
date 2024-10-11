scoreboard players set @s a3_sec 45
scoreboard players set @s a3_ticks 0

playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 1 0.4
playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 1 0.5
playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 1 0.6
playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 1 0.7

particle poof ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle wax_on ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle enchant ~ ~ ~ 0.5 0.5 0.5 0.1 10 force

execute if entity @s[team=red] as @e[type=arrow,limit=1,sort=nearest] run data merge entity @s {PierceLevel:10b,Tags:["archer3","red"]}
execute if entity @s[team=blue] as @e[type=arrow,limit=1,sort=nearest] run data merge entity @s {PierceLevel:10b,Tags:["archer3","blue"]}
