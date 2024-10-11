particle minecraft:cloud ~ ~1 ~ 0.7 0.7 0.7 0.1 20 force
particle minecraft:flash ~ ~1 ~ 0.7 0.7 0.7 0.1 10 force
particle minecraft:enchanted_hit ~ ~1 ~ 0.7 0.7 0.7 0.1 20 force

playsound minecraft:block.anvil.place ambient @a[distance=..20] ~ ~ ~ 0.5 2
playsound minecraft:block.anvil.place ambient @a[distance=..20] ~ ~ ~ 0.5 1.5
playsound minecraft:block.anvil.place ambient @a[distance=..20] ~ ~ ~ 0.5 1
playsound minecraft:block.anvil.place ambient @a[distance=..20] ~ ~ ~ 0.5 0.5

execute if entity @s[tag=red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Health:40f,Tags:["summoner_turret_active","red"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-756503698,288048865,-1781426164,-23831455],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzVhYTgzMzJiYmVjNGE5NThmZWEyYmU2NGI4ZjE2ODJmNWQ4MjQ3NDUxYWEyYjc1NjllZGQwNDk4NDM3ZDcwNiJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute if entity @s[tag=blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Health:40f,Tags:["summoner_turret_active","blue"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-756503698,288048865,-1781426164,-23831455],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzVhYTgzMzJiYmVjNGE5NThmZWEyYmU2NGI4ZjE2ODJmNWQ4MjQ3NDUxYWEyYjc1NjllZGQwNDk4NDM3ZDcwNiJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}

execute if entity @s[tag=red] run summon interaction ~ ~ ~ {NoGravity:1b,Silent:1b,width:1f,height:2.3f,Tags:["summoner_turret_health","red"]}
execute if entity @s[tag=blue] run summon interaction ~ ~ ~ {NoGravity:1b,Silent:1b,width:1f,height:2.3f,Tags:["summoner_turret_health","blue"]}
