playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 1000 1
playsound minecraft:entity.lightning_bolt.thunder ambient @a ~ ~ ~ 1000 2
playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1000 2

particle minecraft:flash ~ ~ ~ 2 2 2 0 20 force

execute if entity @s[tag=red,scores={capture=200..}] run function raurus:towers/turn_blue
execute if entity @s[tag=blue,scores={capture=200..}] run function raurus:towers/turn_red
execute if entity @s[tag=!blue,tag=!red] if entity @a[distance=..3,team=red] run function raurus:towers/turn_red
execute if entity @s[tag=!blue,tag=!red] if entity @a[distance=..3,team=blue] run function raurus:towers/turn_blue
