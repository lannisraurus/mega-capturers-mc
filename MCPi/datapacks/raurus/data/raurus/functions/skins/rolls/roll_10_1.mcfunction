execute if entity @s[tag=skin_10_1] run return run function raurus:skins/rolls/roll

tellraw @s {"text":"> You have received a skin for Bloodcurse Priestess: [Support Btw]!","color":"aqua"}

playsound minecraft:entity.player.levelup ambient @a[distance=..15] ~ ~ ~ 5 0.7
playsound minecraft:entity.player.levelup ambient @a[distance=..15] ~ ~ ~ 5 0.65
playsound minecraft:entity.player.levelup ambient @a[distance=..15] ~ ~ ~ 5 0.75

particle minecraft:totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0.05 10 force

tag @s add skin_10_1

scoreboard players remove @s wins 10
