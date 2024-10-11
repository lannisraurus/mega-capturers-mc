execute if entity @s[tag=skin_10_1,tag=skin_1_1,tag=skin_1_2,tag=skin_3_1,tag=skin_3_2,tag=skin_4_1,tag=skin_6_1,tag=skin_7_1,tag=skin_8_1,tag=skin_13_1,tag=skin_2_1,tag=skin_2_2,tag=skin_14_1,tag=skin_17_1,tag=skin_6_2] run return run tellraw @s {"text":"> You already unlocked all skins. Turn off your computer, go take a walk...","color":"aqua"}
execute store result score @s roll run random value 1..16 
execute if entity @s[scores={roll=1}] run return run function raurus:skins/rolls/roll_10_1
execute if entity @s[scores={roll=2}] run return run function raurus:skins/rolls/roll_1_1
execute if entity @s[scores={roll=3}] run return run function raurus:skins/rolls/roll_1_2
execute if entity @s[scores={roll=4}] run return run function raurus:skins/rolls/roll_3_1
execute if entity @s[scores={roll=5}] run return run function raurus:skins/rolls/roll_3_2
execute if entity @s[scores={roll=6}] run return run function raurus:skins/rolls/roll_4_1
execute if entity @s[scores={roll=7}] run return run function raurus:skins/rolls/roll_6_1
execute if entity @s[scores={roll=8}] run return run function raurus:skins/rolls/roll_7_1
execute if entity @s[scores={roll=9}] run return run function raurus:skins/rolls/roll_8_1
execute if entity @s[scores={roll=10}] run return run function raurus:skins/rolls/roll_12_1
execute if entity @s[scores={roll=11}] run return run function raurus:skins/rolls/roll_13_1
execute if entity @s[scores={roll=12}] run return run function raurus:skins/rolls/roll_2_1
execute if entity @s[scores={roll=13}] run return run function raurus:skins/rolls/roll_2_2
execute if entity @s[scores={roll=14}] run return run function raurus:skins/rolls/roll_14_1
execute if entity @s[scores={roll=15}] run return run function raurus:skins/rolls/roll_17_1
execute if entity @s[scores={roll=16}] run return run function raurus:skins/rolls/roll_6_2
