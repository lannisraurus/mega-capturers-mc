scoreboard players set @s a2_sec 30
scoreboard players set @s a2_ticks 0
scoreboard players set @s counter 0

scoreboard players set @s time 80

playsound minecraft:block.portal.trigger ambient @a[distance=..12] ~ ~ ~ 1 1.3
playsound minecraft:block.portal.trigger ambient @a[distance=..12] ~ ~ ~ 1 1.5

playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 0
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 1
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 2

particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 30 force
particle minecraft:witch ~ ~ ~1 0.5 0.5 0.5 1 30 force
