scoreboard players add @s time 1

particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.01 5 force
particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.01 5 force

tp @s ~ ~-1.35 ~

kill @s[scores={time=100..}]

execute if entity @s[tag=red] if entity @e[team=blue,distance=..2.5] run function raurus:abilities/summoner3explode
execute if entity @s[tag=blue] if entity @e[team=red,distance=..2.5] run function raurus:abilities/summoner3explode
execute unless block ~ ~ ~ air run function raurus:abilities/summoner3explode
