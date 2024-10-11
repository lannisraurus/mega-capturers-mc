tag @s remove duel_mode2
scoreboard players set @s counter 0
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 10 2
particle flash ~ ~1 ~ 0.1 0.1 0.1 0 5 force
effect clear @s health_boost
effect clear @s strength
