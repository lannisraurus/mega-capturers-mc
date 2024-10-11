particle minecraft:totem_of_undying ~ ~ ~ 5.5 5.5 5.5 0.1 100 force
particle minecraft:flash ~ ~ ~ 5.5 5.5 5.5 0 25 force

execute if entity @s[team=red] as @e[tag=!slow_immune,team=blue,distance=..8] run effect give @s slowness 4 6 true
execute if entity @s[team=blue] as @e[tag=!slow_immune,team=red,distance=..8] run effect give @s slowness 4 6 true

effect give @s instant_health 1 0 true
effect give @s regeneration 4 2 true

effect clear @s minecraft:slowness

scoreboard players add @s counter 250

playsound minecraft:block.beacon.deactivate ambient @a[distance=..15] ~ ~ ~ 10 2

scoreboard players set @s time 0
