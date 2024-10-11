scoreboard players add @s time 1
particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 0 10 force
particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 1 force
particle minecraft:warped_spore ~ ~ ~ 0 0 0 0 1 force
tp @s ^ ^ ^0.37
kill @s[scores={time=80..}]
execute as @s[tag=red] if entity @e[distance=..2.6,team=blue] run function raurus:abilities/sorcerer2explode
execute as @s[tag=blue] if entity @e[distance=..2.6,team=red] run function raurus:abilities/sorcerer2explode
