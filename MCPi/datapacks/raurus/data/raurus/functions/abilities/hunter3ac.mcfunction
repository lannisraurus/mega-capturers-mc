particle dust 0 0 0 4 ~ ~ ~ 8 4 8 0 10 force

execute if entity @s[tag=red] run effect give @e[team=blue,distance=..16] blindness 2 0 true
execute if entity @s[tag=blue] run effect give @e[team=red,distance=..16] blindness 2 0 true

scoreboard players add @s time 1
kill @s[scores={time=150..}]
