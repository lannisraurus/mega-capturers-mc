scoreboard players set @s a2_sec 10
scoreboard players set @s a2_ticks 0

effect give @s slowness 1 1 true

execute anchored eyes positioned ^ ^ ^2 run particle flame ~ ~ ~ 0.6 0.6 0.6 0.1 40 force
execute anchored eyes positioned ^ ^ ^2 run particle flame ~ ~ ~ 0.8 0.8 0.8 0 30 force
execute anchored eyes positioned ^ ^ ^2 run particle smoke ~ ~ ~ 0.6 0.6 0.6 0.1 10 force
execute anchored eyes positioned ^ ^ ^2 run particle cloud ~ ~ ~ 0.6 0.6 0.6 0 5 force

playsound minecraft:entity.blaze.ambient ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.blaze.ambient ambient @a[distance=..20] ~ ~ ~ 1 0.5
playsound minecraft:entity.blaze.ambient ambient @a[distance=..20] ~ ~ ~ 1 1.5
playsound minecraft:entity.blaze.ambient ambient @a[distance=..20] ~ ~ ~ 1 1.75

execute if entity @s[team=red,scores={counter=0}] positioned ^ ^ ^2 as @a[distance=..2.5,team=blue] run damage @s 4 on_fire
execute if entity @s[team=blue,scores={counter=0}] positioned ^ ^ ^2 as @a[distance=..2.5,team=red] run damage @s 4 on_fire

execute if entity @s[team=red,scores={counter=1}] positioned ^ ^ ^2.5 as @a[distance=..3.5,team=blue] run damage @s 7 on_fire
execute if entity @s[team=blue,scores={counter=1}] positioned ^ ^ ^2.5 as @a[distance=..3.5,team=red] run damage @s 7 on_fire

execute if entity @s[scores={counter=1}] anchored eyes positioned ^ ^ ^2.5 run particle flame ~ ~ ~ 1.2 1.2 1.2 0.1 100 force
