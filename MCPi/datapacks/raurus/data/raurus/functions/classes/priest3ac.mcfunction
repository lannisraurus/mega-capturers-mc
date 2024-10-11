execute if entity @s[scores={time=1}] run effect give @s levitation 1 30 true

execute if entity @s[scores={time=10}] run effect clear @s levitation

execute if entity @s[scores={time=10..30}] run tp @s @s

execute if entity @s[scores={time=30}] run function raurus:classes/priest3activate

execute anchored eyes run particle crimson_spore ~ ~1 ~ 1 1 1 0 10 force

execute if entity @s[scores={time=30..}] run summon text_display ~ ~ ~ {text_opacity:255,brightness:{sky:15,block:15},billboard:"center",Tags:["priest3effects"],text:'{"bold":true,"color":"#FF0000","obfuscated":true,"text":"AAAA"}'}

tag @s[scores={time=30..,kill=1..}] add bloodkill

scoreboard players add @s time 1

execute if entity @s[scores={time=130..}] run function raurus:classes/priest3kill
