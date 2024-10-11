execute if entity @s[tag=red] run damage @e[team=blue,limit=1,sort=nearest] 4 minecraft:magic
execute if entity @s[tag=red] run scoreboard players set @e[team=blue,limit=1,sort=nearest] abjurator_1 20

execute if entity @s[tag=blue] run damage @e[team=red,limit=1,sort=nearest] 4 minecraft:magic
execute if entity @s[tag=blue] run scoreboard players set @e[team=red,limit=1,sort=nearest] abjurator_1 20

particle flash ~ ~ ~ 0 0 0 0 1 force
particle witch ~ ~ ~ 0.3 0.3 0.3 0.006 26 force

playsound minecraft:entity.allay.hurt ambient @a[distance=..20] ~ ~ ~ 2 0.10
playsound minecraft:entity.allay.hurt ambient @a[distance=..20] ~ ~ ~ 2 0.00
playsound minecraft:entity.allay.hurt ambient @a[distance=..20] ~ ~ ~ 2 0.20
playsound minecraft:entity.allay.hurt ambient @a[distance=..20] ~ ~ ~ 2 0.30

kill @s
