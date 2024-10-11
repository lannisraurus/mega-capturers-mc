scoreboard players add @s time 1
scoreboard players add @s time2 1

particle enchanted_hit ~ ~ ~ 3 3 3 0.006 25 force

tp @s ^ ^ ^3

kill @s[scores={time=20..}]

execute if entity @s[scores={time2=2..}] run function raurus:abilities/summoner2spawn

