scoreboard players add @s time 1
particle enchant ~ ~ ~ 0.3 0.3 0.3 0 10 force
tp @s ^ ^ ^5
kill @s[scores={time=40..}]

execute if entity @e[type=marker,tag=tower,distance=..4] run function raurus:abilities/golem3find 
