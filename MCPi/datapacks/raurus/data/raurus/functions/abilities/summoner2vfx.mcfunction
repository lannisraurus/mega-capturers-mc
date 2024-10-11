scoreboard players add @s time 1

execute if entity @s[scores={time=1}] run spreadplayers ~ ~ 3 5 false @s

kill @s[scores={time=10..}]
