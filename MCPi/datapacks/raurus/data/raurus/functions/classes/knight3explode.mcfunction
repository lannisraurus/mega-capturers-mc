scoreboard players set @s time3 0

playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..15] ~ ~ ~ 2 1
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..15] ~ ~ ~ 2 1
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 2 0.5
playsound minecraft:entity.ghast.hurt ambient @a[distance=..15] ~ ~ ~ 2 1

execute anchored eyes run particle minecraft:dust 0 0 0 2 ~ ~1 ~ 1 1 1 0.8 30 force
execute anchored eyes run particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.8 30 force
execute anchored eyes run particle minecraft:soul_fire_flame ~ ~1 ~ 1 1 1 0.8 30 force
execute anchored eyes run particle minecraft:warped_spore ~ ~1 ~ 1 1 1 0.8 30 force

execute if entity @s[team=red] as @a[team=blue,distance=..5,limit=1,sort=nearest] run damage @s 5 magic
execute if entity @s[team=blue] as @a[team=red,distance=..5,limit=1,sort=nearest] run damage @s 5 magic
