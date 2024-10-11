scoreboard players add @s time 1

particle falling_dust sand ~ ~ ~ 3.5 3.5 3.5 0 40 force

execute if entity @s[tag=red] run scoreboard players set @a[distance=..7,team=red,scores={class=14}] time 2
execute if entity @s[tag=blue] run scoreboard players set @a[distance=..7,team=blue,scores={class=14}] time 2

execute if entity @s[scores={time=70..}] run function raurus:abilities/phantom3kill
