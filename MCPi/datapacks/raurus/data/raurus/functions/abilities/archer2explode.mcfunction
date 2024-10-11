particle cloud ~ ~ ~ 4 2 4 0 50 force
particle flash ~ ~ ~ 3 2 3 0 50 force
particle enchant ~ ~ ~ 4 2 4 0 50 force

playsound minecraft:block.beacon.deactivate ambient @a[distance=..25] ~ ~ ~ 2 0
playsound minecraft:block.beacon.deactivate ambient @a[distance=..25] ~ ~ ~ 2 0.1
playsound minecraft:block.beacon.deactivate ambient @a[distance=..25] ~ ~ ~ 2 0.2
playsound minecraft:block.beacon.deactivate ambient @a[distance=..25] ~ ~ ~ 2 0.3
playsound minecraft:block.beacon.deactivate ambient @a[distance=..25] ~ ~ ~ 2 0.4
playsound minecraft:block.beacon.deactivate ambient @a[distance=..25] ~ ~ ~ 2 0.5

execute if entity @s[tag=red] as @e[team=blue,distance=..7] run damage @s 8 minecraft:outside_border
execute if entity @s[tag=blue] as @e[team=red,distance=..7] run damage @s 8 minecraft:outside_border

kill @s
