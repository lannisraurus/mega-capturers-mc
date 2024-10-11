data merge entity @s {pickup:0b}
scoreboard players add @s time2 1
execute if entity @s[scores={time2=50..}] at @s run function raurus:arrow_kill
