execute as @a[tag=in_game,scores={deaths=1..}] run function raurus:towers/die

execute if score red counter matches 20000.. run function raurus:towers/red_win
execute if score blue counter matches 20000.. run function raurus:towers/blue_win

execute if score win_time counter matches 1.. run scoreboard players remove win_time counter 1
execute if score win_time counter matches 1 run function raurus:towers/end_game
