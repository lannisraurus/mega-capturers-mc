scoreboard players set @s time 0

execute if entity @s[team=red] run effect give @a[team=red,distance=..10] regeneration 3 0 true
execute if entity @s[team=blue] run effect give @a[team=blue,distance=..10] regeneration 3 0 true

particle minecraft:wax_off ~ ~0.3 ~ 0.5 1 0.5 0 15 force
