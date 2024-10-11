scoreboard players set @s a1_sec 0
particle flash ~ ~1 ~ 0 0 0 0 1 force

playsound minecraft:item.trident.return ambient @a[distance=..5] ~ ~ ~ 2 0.8
playsound minecraft:item.trident.return ambient @a[distance=..5] ~ ~ ~ 2 0.7
playsound minecraft:item.trident.return ambient @a[distance=..5] ~ ~ ~ 2 0.65

scoreboard players set @s time 0
