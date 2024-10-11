tag @s add duel_mode2
scoreboard players set @s counter 0
playsound minecraft:block.beacon.activate ambient @a[distance=..20] ~ ~ ~ 10 2
particle flash ~ ~1 ~ 0.1 0.1 0.1 0 5 force
effect give @s minecraft:instant_health 1 2 true
