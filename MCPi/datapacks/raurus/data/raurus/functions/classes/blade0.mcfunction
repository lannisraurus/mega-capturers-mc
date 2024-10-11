particle enchant ~ ~1 ~ 0.3 0.3 0.3 0.3 10 force
effect give @s weakness 1 100 true
execute if entity @s[scores={counter=50..}] run function raurus:abilities/blade0
