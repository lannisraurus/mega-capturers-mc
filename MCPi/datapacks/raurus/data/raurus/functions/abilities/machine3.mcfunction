scoreboard players remove @s time2 1

particle dust 0 1 0 2 ~ ~ ~ 5 0 5 0 10 force

execute if entity @s[team=red] as @e[team=blue,distance=..5] run damage @s 0.1 wither
execute if entity @s[team=blue] as @e[team=red,distance=..5] run damage @s 0.1 wither
