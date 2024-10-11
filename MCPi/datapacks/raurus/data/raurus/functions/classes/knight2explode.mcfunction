scoreboard players set @s time2 0

effect clear @s slowness

effect give @s speed 5 1 true
effect give @s resistance 5 0 true
effect give @s regeneration 3 2 true

execute if entity @s[team=red] run effect give @e[team=blue,distance=..5.5] weakness 3 0 true
execute if entity @s[team=blue] run effect give @e[team=red,distance=..5.5] weakness 3 0 true

playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 1
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 1
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 2 1

execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.8 30 force
execute anchored eyes run particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0.8 30 force
execute anchored eyes run particle minecraft:warped_spore ~ ~1 ~ 1 1 1 0.8 30 force
