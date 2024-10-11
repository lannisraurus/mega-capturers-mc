particle minecraft:smoke ~ ~0.5 ~ 0.8 0.8 0.8 0 50 force
playsound minecraft:block.fire.extinguish ambient @a[distance=..15] ~ ~ ~ 10 0

effect clear @s resistance
effect clear @s slowness
effect clear @s weakness
effect give @s mining_fatigue 2 6 true
effect give @s slowness 2 0 true
