scoreboard players add @s time 1
scoreboard players add @s time2 1

execute if entity @s[scores={time=50..}] run function raurus:abilities/golem1explode
kill @s[scores={time=50..}]

execute if entity @s[tag=red,scores={time2=1}] unless entity @e[team=red,distance=..3] run summon evoker_fangs ~ ~ ~ {Team:"red"}
execute if entity @s[tag=blue,scores={time2=1}] unless entity @e[team=blue,distance=..3] run summon evoker_fangs ~ ~ ~ {Team:"blue"}

execute if entity @s[tag=red,scores={time2=2}] positioned ^ ^ ^0.5 unless entity @e[team=red,distance=..3] run summon evoker_fangs ~ ~ ~ {Team:"red"}
execute if entity @s[tag=blue,scores={time2=2}] positioned ^ ^ ^0.5 unless entity @e[team=blue,distance=..3] run summon evoker_fangs ~ ~ ~ {Team:"blue"}

execute if entity @s[tag=red] if entity @e[team=blue,distance=..2] run function raurus:abilities/golem1explode
execute if entity @s[tag=blue] if entity @e[team=red,distance=..2] run function raurus:abilities/golem1explode

execute if entity @s[scores={time2=1}] if block ~ ~-0.1 ~ air run tp @s ~ ~-0.5 ~
execute if entity @s[scores={time2=1}] unless block ~ ~-0.1 ~ air run tp @s ~ ~0.8 ~
execute if entity @s[scores={time2=2}] run tp @s ^ ^ ^1

scoreboard players set @s[scores={time2=3..}] time2 0
