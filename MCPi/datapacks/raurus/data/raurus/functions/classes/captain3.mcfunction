scoreboard players set @s a3_sec 50
scoreboard players set @s a3_ticks 0

execute as @s[team=red] run summon marker ^ ^ ^ {Tags:["slime_bomb","red"]}
execute as @s[team=blue] run summon marker ^ ^ ^ {Tags:["slime_bomb","blue"]}

execute as @e[tag=slime_bomb,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=slime_bomb,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1 ~ 0

particle large_smoke ^ ^ ^ 2 2 2 0 50 normal

playsound minecraft:entity.creeper.primed ambient @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:entity.creeper.primed ambient @a[distance=..15] ~ ~ ~ 1 0.2
playsound minecraft:entity.creeper.primed ambient @a[distance=..15] ~ ~ ~ 1 0.4

