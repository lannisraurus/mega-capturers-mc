function raurus:towers/class_games
execute as @a[team=blue,tag=in_game] run function raurus:towers/class_wins
title @a[tag=in_game] title {"text":"* Blue Team Wins! *","bold":true,"color":"blue"}
scoreboard players add @a[team=blue,tag=in_game] wins 1
scoreboard players add blue wins 1
function raurus:towers/win
