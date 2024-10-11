effect give @s slowness 1 100 true
effect give @s resistance 1 100 true
effect give @s weakness 1 100 true

execute if entity @s[scores={hurt_time=1..}] run function raurus:abilities/blade2empower

scoreboard players remove @s time2 1
execute if entity @s[scores={time2=1}] run function raurus:abilities/blade2exhaust
