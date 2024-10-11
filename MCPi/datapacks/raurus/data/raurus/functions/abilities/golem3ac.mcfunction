particle minecraft:witch ~ ~ ~ 4 4 4 0 5 force

tp @s @e[type=marker,tag=tower,limit=1,sort=nearest]

scoreboard players operation spacetime_rip player_id = @s player_id
execute as @a[scores={class=5,time2=1}] if score @s player_id = spacetime_rip player_id run function raurus:abilities/golem3tp

scoreboard players add @s time 1
kill @s[scores={time=160..}]
