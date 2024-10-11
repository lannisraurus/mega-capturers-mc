effect give @s minecraft:speed 1 3 true
particle smoke ~ ~ ~ 0.2 0 0.2 0 10 force
particle flame ~ ~ ~ 0.2 0 0.2 0 5 force
playsound minecraft:block.fire.extinguish ambient @a[distance=..10] ~ ~ ~ 0.1 2
scoreboard players set @s[scores={counter=430..}] counter 430
