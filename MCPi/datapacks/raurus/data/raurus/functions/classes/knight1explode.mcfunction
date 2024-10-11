scoreboard players set @s time 0

playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 0
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 1
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 1.5
playsound minecraft:entity.wither.break_block ambient @a[distance=..15] ~ ~ ~ 2 0

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.5 80 force
execute anchored eyes run particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0.5 80 force
execute anchored eyes run particle minecraft:warped_spore ~ ~1 ~ 1 1 1 0.5 80 force

execute if entity @s[team=red] as @e[team=blue,distance=..6.5] run damage @s 4 minecraft:fly_into_wall
execute if entity @s[team=blue] as @e[team=red,distance=..6.5] run damage @s 4 minecraft:fly_into_wall

effect give @s speed 2 1 true
