scoreboard players set @s a2_sec 10
scoreboard players set @s a2_ticks 0

playsound minecraft:block.respawn_anchor.set_spawn ambient @a[distance=..20] ~ ~ ~ 10 1
playsound minecraft:block.respawn_anchor.set_spawn ambient @a[distance=..20] ~ ~ ~ 10 1.2
playsound minecraft:block.respawn_anchor.set_spawn ambient @a[distance=..20] ~ ~ ~ 10 1.4
playsound minecraft:block.respawn_anchor.set_spawn ambient @a[distance=..20] ~ ~ ~ 10 1.6

particle poof ~ ~ ~ 0.5 0.5 0.5 0 10 force
particle enchant ~ ~ ~ 0.5 0.5 0.5 0.1 10 force

execute if entity @s[team=red] as @e[type=arrow,limit=1,sort=nearest] run data merge entity @s {PierceLevel:10b,Color:16777215,Tags:["archer2","red"],SoundEvent:"entity.creeper.primed"}
execute if entity @s[team=blue] as @e[type=arrow,limit=1,sort=nearest] run data merge entity @s {PierceLevel:10b,Color:16777215,Tags:["archer2","blue"],SoundEvent:"entity.creeper.primed"}
