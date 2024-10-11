scoreboard players set @s a1_sec 3
scoreboard players set @s a1_ticks 0

playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=..16] ~ ~ ~ 10 1
playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=..16] ~ ~ ~ 10 1.3
playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=..16] ~ ~ ~ 10 1.6

particle poof ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle enchant ~ ~ ~ 0.5 0.5 0.5 0.1 10 force

execute as @e[type=arrow,limit=1,sort=nearest] run tag @s add archer1arrow
