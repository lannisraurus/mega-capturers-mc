execute if entity @s[tag=red,tag=!blue] run function raurus:towers/red
execute if entity @s[tag=blue,tag=!red] run function raurus:towers/blue
execute if entity @s[tag=!red,tag=!blue] run function raurus:towers/purple
execute if entity @s[tag=red,tag=blue] run function raurus:towers/clean

particle minecraft:enchant ~ ~1.5 ~ 2 2 2 0.05 2 normal
