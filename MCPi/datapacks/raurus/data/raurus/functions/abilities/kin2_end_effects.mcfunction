scoreboard players set @s kin_2 0
particle flash ~ ~1 ~ 0 0 0 0 1 force
effect clear @s resistance
effect clear @s slowness
playsound minecraft:entity.wither.break_block ambient @a[distance=..10] ~ ~ ~ 0.5 0.7
