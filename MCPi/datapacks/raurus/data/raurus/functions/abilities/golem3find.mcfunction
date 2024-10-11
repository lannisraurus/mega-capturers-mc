summon marker ~ ~ ~ {Tags:["spacetime_rip_tp"]}
scoreboard players operation @e[limit=1,sort=nearest,type=marker,tag=spacetime_rip_tp] player_id = @s player_id
scoreboard players operation spacetime_rip player_id = @s player_id

particle flash ~ ~1 ~ 2 2 2 0 10 force
particle enchant ~ ~1 ~ 3 3 3 0.5 100 force

execute as @a[scores={class=5}] at @s if score @s player_id = spacetime_rip player_id run function raurus:abilities/golem3cd

kill @s
