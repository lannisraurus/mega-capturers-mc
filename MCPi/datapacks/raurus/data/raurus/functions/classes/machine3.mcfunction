scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

particle minecraft:totem_of_undying ~ ~ ~ 1.5 1.5 1.5 0 25 force
scoreboard players set @s time2 200

playsound minecraft:block.brewing_stand.brew ambient @a[distance=..10] ~ ~ ~ 1 1
playsound minecraft:block.brewing_stand.brew ambient @a[distance=..10] ~ ~ ~ 1 0.8
playsound minecraft:block.brewing_stand.brew ambient @a[distance=..10] ~ ~ ~ 1 1.2
