scoreboard players add @s time 1

kill @s[scores={time=10..}]
execute if entity @s[tag=red] unless entity @e[team=red,distance=..3] run summon evoker_fangs ~ ~ ~ {Team:"red"}
execute if entity @s[tag=blue] unless entity @e[team=blue,distance=..3] run summon evoker_fangs ~ ~ ~ {Team:"blue"}

tp @s ^ ^ ^0.5
