scoreboard players set @s a1_sec 15
scoreboard players set @s a1_ticks 0

execute anchored eyes run particle witch ~ ~1 ~ 1 1 1 1 30 force
execute anchored eyes run particle dust 0 0 0 2 ~ ~1 ~ 1 1 1 1 15 force

playsound minecraft:entity.enderman.teleport ambient @a[distance=..15] ~ ~ ~ 10 0
playsound minecraft:entity.enderman.teleport ambient @a[distance=..15] ~ ~ ~ 10 1
playsound minecraft:entity.enderman.teleport ambient @a[distance=..15] ~ ~ ~ 10 2

tp @s[team=red] @e[team=blue,distance=..8,sort=nearest,limit=1]
tp @s[team=blue] @e[team=red,distance=..8,sort=nearest,limit=1]

execute if entity @s[team=red] as @e[team=blue,distance=..8,sort=nearest,limit=1] run damage @s 7 wither
execute if entity @s[team=blue] as @e[team=red,distance=..8,sort=nearest,limit=1] run damage @s 7 wither
