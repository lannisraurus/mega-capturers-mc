execute if entity @s[tag=ready] run function raurus:towers/leave
execute if entity @s[scores={class=1..},tag=!ready] run function raurus:towers/ready
tellraw @s[scores={class=0},tag=!ready] {"text":"> You must pick a class first.","color":"aqua"}
playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 1 2
