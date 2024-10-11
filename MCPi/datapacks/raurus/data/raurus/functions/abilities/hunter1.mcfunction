scoreboard players add @s time 1
particle ash ~ ~ ~ 0.3 0.6 0.3 0 15 force
particle dust 0 0 0 0.8 ~ ~ ~ 0.4 0.6 0.4 0 15 force
tp @s ^ ^ ^0.18
kill @s[scores={time=140..}]
execute if entity @s[tag=red] run effect give @e[distance=..2,team=blue] wither 6 1 true
execute if entity @s[tag=blue] run effect give @e[distance=..2,team=red] wither 6 1 true
