scoreboard players add @s counter 1
kill @s[scores={counter=100..}]
execute if entity @s[tag=red] as @a[distance=..2,team=red] run effect give @s resistance 1 100 true
execute if entity @s[tag=blue] as @a[distance=..2,team=blue] run effect give @s resistance 1 100 true
