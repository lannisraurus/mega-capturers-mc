scoreboard players set @s a1_sec 6
scoreboard players set @s a1_ticks 0

execute anchored eyes run particle item_slime ~ ~1 ~ .5 .5 .5 0 30 force

playsound minecraft:entity.slime.hurt_small ambient @a[distance=..3] ~ ~ ~ 10 0
playsound minecraft:entity.slime.hurt_small ambient @a[distance=..3] ~ ~ ~ 10 1
playsound minecraft:entity.slime.hurt_small ambient @a[distance=..3] ~ ~ ~ 10 2

execute if entity @s[team=red] run summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["slime_landmine","red"]}
execute if entity @s[team=blue] run summon armor_stand ~ ~ ~ {Marker:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["slime_landmine","blue"]}
