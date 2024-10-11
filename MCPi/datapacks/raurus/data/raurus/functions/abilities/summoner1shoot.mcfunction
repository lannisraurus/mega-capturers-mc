scoreboard players set @s counter 0

execute as @s[tag=red] run summon marker ~ ~ ~ {Tags:["turret_bullet","red"]}
execute as @s[tag=blue] run summon marker ~ ~ ~ {Tags:["turret_bullet","blue"]}

execute positioned ~ ~1.5 ~ run particle enchanted_hit ^ ^ ^1 0.5 0.5 0.5 0 10 force
execute positioned ~ ~1.5 ~ run particle dust 0.2 0.3 0.7 1.5 ^ ^ ^1 0.5 0.5 0.5 0 10 force

playsound minecraft:block.amethyst_cluster.hit ambient @a[distance=..20] ~ ~ ~ 0.7 1.00
playsound minecraft:block.amethyst_cluster.hit ambient @a[distance=..20] ~ ~ ~ 0.7 1.75
playsound minecraft:block.amethyst_cluster.hit ambient @a[distance=..20] ~ ~ ~ 0.7 0.00

execute as @e[tag=turret_bullet,type=marker,sort=nearest,limit=1] at @s run tp @s @e[type=armor_stand,tag=summoner_turret_active,limit=1,sort=nearest]
execute as @e[tag=turret_bullet,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.6 ~ run tp @s ^ ^ ^1

