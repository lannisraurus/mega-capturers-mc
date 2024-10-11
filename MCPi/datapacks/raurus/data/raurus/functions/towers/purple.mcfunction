setblock ~ ~-1 ~ minecraft:purple_stained_glass
fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 purple_concrete replace red_concrete
fill ~3 ~-1 ~3 ~-3 ~-1 ~-3 purple_concrete replace blue_concrete

execute as @a[team=blue,distance=..3] unless entity @a[team=red,distance=..3] run scoreboard players add @e[type=marker,limit=1,sort=nearest,tag=tower] capture 1
execute as @a[team=red,distance=..3] unless entity @a[team=blue,distance=..3] run scoreboard players add @e[type=marker,limit=1,sort=nearest,tag=tower] capture 1
execute unless entity @a[distance=..3] if entity @s[scores={capture=1..}] run scoreboard players remove @s capture 4

execute as @s run function raurus:towers/effects
execute as @s[scores={capture=180..}] run function raurus:towers/capture

execute if entity @s[scores={capture=1..}] run particle dust 1 0 1 10 ~ ~20 ~ 2 2 2 0 10 force
