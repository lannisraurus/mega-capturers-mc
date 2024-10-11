scoreboard players set @s a3_sec 4
scoreboard players set @s a3_ticks 0

playsound minecraft:entity.blaze.death ambient @a[distance=..20] ~ ~ ~ 1 0.5
playsound minecraft:entity.blaze.death ambient @a[distance=..20] ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.death ambient @a[distance=..20] ~ ~ ~ 1 1.2
playsound minecraft:entity.blaze.death ambient @a[distance=..20] ~ ~ ~ 1 1.8

particle flame ~ ~1 ~ 0 0 0 0.07 100 force

execute if entity @s[scores={counter=0}] run return run scoreboard players set @s counter 1
execute if entity @s[scores={counter=1}] run return run scoreboard players set @s counter 0
