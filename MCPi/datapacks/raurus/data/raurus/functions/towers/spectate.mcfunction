scoreboard players set @s class 0
tag @s remove ready
tag @s remove in_game
tag @s add spectator
tp @s ~ 100 ~
gamemode spectator @s
tellraw @s {"text":"> You are now spectating the match. To return, simply fly below the ground.","bold":true}
clear @s

team join spectator @s
