playsound entity.creeper.primed ambient @a[distance=..25] ~ ~ ~ 100 0.5

execute if entity @s[tag=red] run summon slime ~ ~ ~ {Team:"red",Size:0,Motion:[0.2,0.5,0.2],Tags:["slime_live_bomb","red"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:20000000,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:100}]}
execute if entity @s[tag=red] run summon slime ~ ~ ~ {Team:"red",Size:0,Motion:[-0.17,0.5,0.07],Tags:["slime_live_bomb","red"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:20000000,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:100}]}
execute if entity @s[tag=red] run summon slime ~ ~ ~ {Team:"red",Size:0,Motion:[0.15,0.5,-0.15],Tags:["slime_live_bomb","red"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:20000000,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:100}]}

execute if entity @s[tag=blue] run summon slime ~ ~ ~ {Team:"blue",Size:0,Motion:[0.2,0.5,0.2],Tags:["slime_live_bomb","blue"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:20000000,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:100}]}
execute if entity @s[tag=blue] run summon slime ~ ~ ~ {Team:"blue",Size:0,Motion:[-0.17,0.5,0.07],Tags:["slime_live_bomb","blue"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:20000000,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:100}]}
execute if entity @s[tag=blue] run summon slime ~ ~ ~ {Team:"blue",Size:0,Motion:[0.15,0.5,-0.15],Tags:["slime_live_bomb","blue"],active_effects:[{id:"minecraft:resistance",amplifier:4,duration:20000000,show_particles:0b}],attributes:[{id:"minecraft:generic.max_health",base:100}]}

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

scoreboard players set @e[type=slime,tag=slime_live_bomb,sort=random,limit=1,distance=..1] time -4
scoreboard players set @e[type=slime,tag=slime_live_bomb,sort=random,limit=1,distance=..1] time 0
scoreboard players set @e[type=slime,tag=slime_live_bomb,sort=random,limit=1,distance=..1] time 4

kill @s
