execute if entity @s[team=red,scores={time2=..0}] as @e[team=blue,distance=..3,scores={take_damage=1..}] run effect give @s poison 5 0 true
execute if entity @s[team=blue,scores={time2=..0}] as @e[team=red,distance=..3,scores={take_damage=1..}] run effect give @s poison 5 0 true
execute if entity @s[team=red,scores={time2=1..}] as @e[team=blue,distance=..3,scores={take_damage=1..}] run effect give @s wither 9 0 true
execute if entity @s[team=blue,scores={time2=1..}] as @e[team=red,distance=..3,scores={take_damage=1..}] run effect give @s wither 9 0 true
particle minecraft:sculk_charge_pop ~ ~ ~ 0.4 0.4 0.4 0 3 force
