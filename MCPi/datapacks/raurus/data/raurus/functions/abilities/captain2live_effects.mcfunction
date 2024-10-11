effect give @s invisibility 1 0 true
execute if entity @s[tag=red] run particle dust 1 0 0 1 ~ ~ ~ 0.3 0.3 0.3 0 2 force
execute if entity @s[tag=blue] run particle dust 0 0 1 1 ~ ~ ~ 0.3 0.3 0.3 0 2 force
scoreboard players set @s time2 0
playsound minecraft:block.note_block.pling ambient @a[distance=..20] ~ ~ ~ 10 2
