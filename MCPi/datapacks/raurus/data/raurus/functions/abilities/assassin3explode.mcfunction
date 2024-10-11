scoreboard players set @s counter 0

execute anchored eyes run particle dust 0 0 0 2 ~ ~1 ~ 2 2 2 10 35 force
execute anchored eyes run particle witch ~ ~1 ~ 2 2 2 10 35 force
execute anchored eyes run particle flash ~ ~1 ~ 2 2 2 10 35 force

playsound minecraft:block.beacon.deactivate ambient @a[distance=..15] ~ ~ ~ 100 0
playsound minecraft:block.beacon.deactivate ambient @a[distance=..15] ~ ~ ~ 100 0.1
playsound minecraft:block.beacon.deactivate ambient @a[distance=..15] ~ ~ ~ 100 0.2
playsound minecraft:block.beacon.deactivate ambient @a[distance=..15] ~ ~ ~ 100 0.3
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 1 0.2
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 1 0.4

execute if entity @s[team=red] as @e[team=blue,distance=..4] run damage @s 10 wither
execute if entity @s[team=blue] as @e[team=red,distance=..4] run damage @s 10 wither
execute if entity @s[team=red] as @e[tag=blue,distance=..4] run damage @s 10 wither
execute if entity @s[team=blue] as @e[tag=red,distance=..4] run damage @s 10 wither
