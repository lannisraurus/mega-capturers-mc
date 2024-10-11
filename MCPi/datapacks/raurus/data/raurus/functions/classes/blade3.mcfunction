scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

playsound minecraft:entity.warden.hurt ambient @a[distance=..7] ~ ~ ~ 1 0
playsound minecraft:entity.warden.hurt ambient @a[distance=..7] ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.hurt ambient @a[distance=..7] ~ ~ ~ 1 1
playsound minecraft:entity.warden.hurt ambient @a[distance=..7] ~ ~ ~ 1 1.5
playsound minecraft:entity.warden.hurt ambient @a[distance=..7] ~ ~ ~ 1 2

particle dust 0.5 0 0.6 2 ~ ~1 ~ 1.5 1.5 1.5 0 400 force

execute if entity @s[team=red] as @e[team=blue,distance=..3] run damage @s 10 minecraft:wither
execute if entity @s[team=blue] as @e[team=red,distance=..3] run damage @s 10 minecraft:wither

