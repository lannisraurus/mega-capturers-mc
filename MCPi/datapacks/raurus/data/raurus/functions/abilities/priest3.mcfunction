scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run spreadplayers ~ ~ 0 4 false @s
execute if entity @s[scores={time=2}] run tp @s ~ ~1.5 ~
kill @s[scores={time=18..}]
