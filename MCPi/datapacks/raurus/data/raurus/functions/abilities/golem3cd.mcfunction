scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0
scoreboard players set @s time2 100

playsound minecraft:block.portal.trigger ambient @a[distance=..15] ~ ~ ~ 2 0.9
playsound minecraft:block.portal.trigger ambient @a[distance=..15] ~ ~ ~ 2 1.1
playsound minecraft:block.portal.trigger ambient @a[distance=..15] ~ ~ ~ 2 1.3
playsound minecraft:block.portal.trigger ambient @a[distance=..15] ~ ~ ~ 2 1.5

particle witch ~ ~ ~ 2 2 2 0 20 force
particle enchant ~ ~ ~ 2 2 2 0 20 force
