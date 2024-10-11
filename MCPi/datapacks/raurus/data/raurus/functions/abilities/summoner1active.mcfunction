particle dust 0.2 0.3 0.7 1 ~ ~ ~ 0 1 0 0 14 force

execute if entity @s[tag=red] run particle dust 1 0 0 1.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 2 force
execute if entity @s[tag=blue] run particle dust 0 0 1 1.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 2 force

execute unless entity @e[distance=..1,type=marker,tag=summoner_turret] run function raurus:abilities/summoner1kill

execute if entity @s[tag=red] unless entity @e[team=blue,distance=..15] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=blue] unless entity @e[team=red,distance=..15] run tp @s ~ ~ ~ ~10 ~

execute if entity @s[tag=red] if entity @a[team=red,distance=..8.5,scores={class=12}] unless entity @e[team=blue,distance=..15] run tp @s ~ ~ ~ ~30 ~
execute if entity @s[tag=blue] if entity @a[team=blue,distance=..8.5,scores={class=12}] unless entity @e[team=red,distance=..15] run tp @s ~ ~ ~ ~30 ~

execute if entity @s[tag=red] if entity @e[team=blue,distance=..15] run tp @s ~ ~ ~ facing entity @e[team=blue,sort=nearest,limit=1] feet
execute if entity @s[tag=blue] if entity @e[team=red,distance=..15] run tp @s ~ ~ ~ facing entity @e[team=red,sort=nearest,limit=1] feet

execute if entity @s[tag=red] if entity @e[team=blue,distance=..15] run scoreboard players add @s counter 1
execute if entity @s[tag=blue] if entity @e[team=red,distance=..15] run scoreboard players add @s counter 1

execute if entity @s[scores={counter=60..}] run function raurus:abilities/summoner1shoot

execute if entity @s[tag=red] run effect give @a[team=red,distance=..10.5,scores={class=12}] speed 1 0 true
execute if entity @s[tag=blue] run effect give @a[team=blue,distance=..10.5,scores={class=12}] speed 1 0 true

execute if entity @s[tag=red] run effect give @a[team=red,distance=..10.5,scores={class=12}] resistance 1 0 true
execute if entity @s[tag=blue] run effect give @a[team=blue,distance=..10.5,scores={class=12}] resistance 1 0 true
