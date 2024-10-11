scoreboard players set @s a1_sec 10
scoreboard players set @s a1_ticks 0

execute as @s[team=red] run summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["warden_chains","red"]}
execute as @s[team=blue] run summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["warden_chains","blue"]}

playsound minecraft:entity.evoker_fangs.attack ambient @a[distance=..10] ~ ~ ~ 5 0
playsound minecraft:entity.evoker_fangs.attack ambient @a[distance=..10] ~ ~ ~ 5 0.5
playsound minecraft:entity.evoker_fangs.attack ambient @a[distance=..10] ~ ~ ~ 5 1
playsound minecraft:entity.evoker_fangs.attack ambient @a[distance=..10] ~ ~ ~ 5 1.5

execute as @e[tag=warden_chains,type=armor_stand,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=warden_chains,type=armor_stand,sort=nearest,limit=1] at @s positioned ~ ~ ~ run tp @s ~ ~ ~ ~ 0
execute as @e[tag=warden_chains,type=armor_stand,sort=nearest,limit=1] at @s positioned ~ ~ ~ run tp @s ^ ^ ^1
