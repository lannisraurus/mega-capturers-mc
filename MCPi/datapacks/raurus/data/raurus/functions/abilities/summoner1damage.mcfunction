scoreboard players add @s counter 1

particle crit ~ ~1 ~ 0.5 1 0.5 0 20 force
playsound minecraft:block.amethyst_cluster.break ambient @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:block.amethyst_cluster.break ambient @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:block.amethyst_cluster.break ambient @a[distance=..20] ~ ~ ~ 1 0

execute if entity @s[scores={counter=12..}] run kill @e[type=marker,tag=summoner_turret,distance=..1,sort=nearest,limit=1]
data merge entity @s {attack:{player:[I;0,0,0,0]}}
