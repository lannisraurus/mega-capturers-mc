scoreboard players set @s time2 0
effect clear @s slowness
effect clear @s weakness
effect clear @s resistance

playsound minecraft:block.beacon.power_select ambient @a[distance=..20] ~ ~ ~ 10 1.7
playsound minecraft:block.beacon.power_select ambient @a[distance=..20] ~ ~ ~ 10 1.65
playsound minecraft:entity.arrow.hit_player ambient @a[distance=..20] ~ ~ ~ 10 1

particle flash ~ ~0.5 ~ 0.3 0.3 0.3 0 10 force
particle wax_on ~ ~0.5 ~ 1. 1. 1. 0 60 force

execute if entity @s[team=red] as @a[distance=..3,team=blue] run damage @s 4 minecraft:generic
execute if entity @s[team=blue] as @a[distance=..3,team=red] run damage @s 4 minecraft:generic
