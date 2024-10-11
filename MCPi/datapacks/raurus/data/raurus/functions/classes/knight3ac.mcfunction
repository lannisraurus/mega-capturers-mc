effect give @s speed 1 5 true

scoreboard players add @s time3 1

execute if entity @s[scores={time3=99}] run spreadplayers ~ ~ 1 1 false @s
execute if entity @s[scores={time3=100..}] run function raurus:classes/knight3explode
