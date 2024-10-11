scoreboard players add @s time 1
particle enchanted_hit ~ ~ ~ 0.02 0.02 0.02 0.001 1 force
tp @s ^ ^ ^1.5
kill @s[scores={time=12..}]

execute as @s[tag=red] positioned ~ ~-1 ~ as @e[distance=..1.4,team=blue] run damage @s 0.375 magic
execute as @s[tag=blue] positioned ~ ~-1 ~ as @e[distance=..1.4,team=red] run damage @s 0.375 magic
