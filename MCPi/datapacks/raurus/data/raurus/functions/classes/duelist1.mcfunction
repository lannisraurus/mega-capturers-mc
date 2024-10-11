scoreboard players set @s a1_sec 15

particle minecraft:wax_off ~ ~0.2 ~ 0.29 0.9 0.29 0 20 force
particle minecraft:wax_on ~ ~0.2 ~ 0.29 0.9 0.29 0 50 force
particle minecraft:enchant ~ ~0.2 ~ 0.29 0.9 0.29 0 10 force

playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 10 2
playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 10 1.8
playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 10 1.6
playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 10 1.5

effect give @s absorption 7 1 true
effect give @s speed 7 0 true
