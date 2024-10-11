function raurus:towers/class_games
execute as @a[team=red,tag=in_game] run function raurus:towers/class_wins
title @a[tag=in_game] title {"text":"* Red Team Wins! *","bold":true,"color":"red"}
scoreboard players add @a[team=red,tag=in_game] wins 1
scoreboard players add red wins 1
function raurus:towers/win
