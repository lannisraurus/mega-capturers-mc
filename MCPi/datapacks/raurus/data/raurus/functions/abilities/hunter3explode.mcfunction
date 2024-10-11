kill @s
particle minecraft:warped_spore ~ ~ ~ 3 3 3 0 500 force
execute if entity @s[tag=red] run summon marker ~ ~ ~ {Tags:["eyeblight_cloud","red"]}
execute if entity @s[tag=blue] run summon marker ~ ~ ~ {Tags:["eyeblight_cloud","blue"]}
