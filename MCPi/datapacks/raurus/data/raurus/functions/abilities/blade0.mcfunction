execute if entity @s[team=red] run tp @s @e[team=red,distance=1..,limit=1,sort=nearest]
execute if entity @s[team=blue] run tp @s @e[team=blue,distance=1..,limit=1,sort=nearest]
scoreboard players set @s counter 0
