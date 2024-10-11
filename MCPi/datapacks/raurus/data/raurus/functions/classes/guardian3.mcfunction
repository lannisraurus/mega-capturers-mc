scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

playsound minecraft:block.beacon.power_select ambient @a[distance=..10] ~ ~ ~ 2 1.3
playsound minecraft:block.beacon.power_select ambient @a[distance=..10] ~ ~ ~ 2 1.5
playsound minecraft:block.beacon.power_select ambient @a[distance=..10] ~ ~ ~ 2 1.8

execute as @s[team=red] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["healing_totem","red"]}
execute as @s[team=blue] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["healing_totem","blue"]}

scoreboard players set @e[type=armor_stand,tag=healing_totem,limit=1,sort=nearest] time2 98
