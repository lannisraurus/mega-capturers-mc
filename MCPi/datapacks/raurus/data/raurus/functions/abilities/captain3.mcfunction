scoreboard players add @s time 1

execute if entity @s[scores={time=0..10}] if block ~ ~ ~ air run tp @s ^ ^0.5 ^0.46
execute if entity @s[scores={time=5..10}] if block ~ ~ ~ air run tp @s ^ ^0.25 ^0.46
execute if entity @s[scores={time=10..15}] if block ~ ~ ~ air run tp @s ^ ^-0.25 ^0.46
execute if entity @s[scores={time=15..20}] if block ~ ~ ~ air run tp @s ^ ^-0.5 ^0.46
execute if entity @s[scores={time=20..}] if block ~ ~ ~ air run tp @s ~ ~-0.5 ~

particle campfire_signal_smoke ~ ~ ~ 0 0 0 0 1 normal
particle smoke ~ ~ ~ 0 0 0 0 1 normal
execute if entity @s[scores={time=20..}] run particle explosion ~ ~ ~ 0 0 0 0 1 force

execute if entity @s[tag=red] run tp @s @e[team=blue,distance=..5,sort=nearest,limit=1]
execute if entity @s[tag=blue] run tp @s @e[team=red,distance=..5,sort=nearest,limit=1]

execute if entity @s[scores={time=80..}] run function raurus:abilities/captain3explode
