particle cloud ~ ~ ~ 0 0 0 0 1 force
particle enchant ~ ~ ~ 0.5 0.5 0.5 0 15 force

execute if entity @s[tag=red] run particle dust 1 0 0 0.5 ~ ~ ~ 0.3 0.3 0.3 0 5 force
execute if entity @s[tag=blue] run particle dust 0 0 1 0.5 ~ ~ ~ 0.3 0.3 0.3 0 5 force

execute if entity @s[nbt={inGround:1b}] run scoreboard players add @s time 1

execute if entity @s[scores={time=30..}] run function raurus:abilities/archer2explode
