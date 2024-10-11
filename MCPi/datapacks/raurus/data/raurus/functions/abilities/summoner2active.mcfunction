scoreboard players add @s time 1
kill @s[scores={time=140..}]
execute if entity @s[tag=red] run particle dust 1 0 0 1 ~ ~ ~ 3 0 3 0 5 force
execute if entity @s[tag=blue] run particle dust 0 0 1 1 ~ ~ ~ 3 0 3 0 5 force
particle enchant ~ ~2 ~ 3 2 3 0 1 force

execute if entity @s[tag=red] run effect give @e[team=red,distance=..5] speed 1 0 true
execute if entity @s[tag=blue] run effect give @e[team=blue,distance=..5] speed 1 0 true

execute if entity @s[tag=blue] unless block ~ -64 ~ air run summon text_display ~ ~ ~ {billboard:"center",Tags:["summoner_river_effects"],text:'{"text":"A","color":"#003CFF","obfuscated":true}'}
execute if entity @s[tag=red] unless block ~ -64 ~ air run summon text_display ~ ~ ~ {billboard:"center",Tags:["summoner_river_effects"],text:'{"text":"A","color":"#FF0000","obfuscated":true}'}
