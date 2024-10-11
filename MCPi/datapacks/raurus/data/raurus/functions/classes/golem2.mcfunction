scoreboard players set @s a2_sec 1
scoreboard players set @s a2_ticks 0
scoreboard players set @s counter 1

execute as @s[team=red] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["golem_portal"]}
execute as @s[team=blue] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["golem_portal"]}

playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 5 0
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 5 0.5
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 5 1
playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 5 1.5

scoreboard players operation @e[limit=1,sort=nearest,type=armor_stand,tag=golem_portal] player_id = @s player_id
