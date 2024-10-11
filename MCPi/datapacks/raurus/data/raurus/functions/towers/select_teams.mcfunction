execute if entity @s[team=!red,team=!blue] if score red_players counter <= blue_players counter run team join red @s
execute if entity @s[team=!red,team=!blue] if score red_players counter > blue_players counter run team join blue @s
