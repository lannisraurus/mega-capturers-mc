scoreboard players set @s a1_sec 25
scoreboard players set @s a1_ticks 0
scoreboard players set @s time 120

function raurus:abilities/blade1_effects

execute if entity @s[team=red] run tp @s @e[team=blue,distance=1..10,sort=nearest,limit=1]
execute if entity @s[team=blue] run tp @s @e[team=red,distance=1..10,sort=nearest,limit=1]
