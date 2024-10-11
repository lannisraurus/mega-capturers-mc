scoreboard players set @s time2 0

particle end_rod ~ ~1.5 ~ 1.4 1.4 1.4 0.1 20 force
particle flash ~ ~1.5 ~ 1.4 1.4 1.4 0.1 5 force

playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..40] ~ ~ ~ 10 1
playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..40] ~ ~ ~ 10 1
playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..40] ~ ~ ~ 10 2
playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..40] ~ ~ ~ 10 0

execute if entity @s[tag=red] at @e[team=blue,sort=nearest,limit=1] positioned ~ ~20 ~ run summon marker ~ ~ ~ {Tags:["summoner3bullet","red"]}
execute if entity @s[tag=blue] at @e[team=red,sort=nearest,limit=1] positioned ~ ~20 ~ run summon marker ~ ~ ~ {Tags:["summoner3bullet","blue"]}
