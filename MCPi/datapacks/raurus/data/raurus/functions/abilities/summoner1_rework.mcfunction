scoreboard players add @s time 1
scoreboard players set @s[scores={time=1}] counter 0
particle dust 0.6 0.7 1 0.85 ~ ~ ~ 0.05 0.05 0.05 0 2 force
particle enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.05 2 force
execute if entity @s[scores={time=..20}] run tp @s ^ ^ ^1.1

execute if entity @s[tag=red] positioned ~ ~-1 ~ if entity @e[team=blue,distance=..1.1] run function raurus:abilities/summoner1_rework_explode
execute if entity @s[tag=blue] positioned ~ ~-1 ~ if entity @e[team=red,distance=..1.1] run function raurus:abilities/summoner1_rework_explode

execute if entity @s[scores={time=14..,counter=..0}] run kill @s
execute if entity @s[scores={time=30..,counter=1..}] run function raurus:abilities/summoner1_rework_retarget
