kill @e[tag=golem_portal,limit=1,sort=nearest]

playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 0
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 1
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 2

tp @s ~ ~ ~

particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 30 force
particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 1 30 force

playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 0
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 1
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..14] ~ ~ ~ 1 2
