scoreboard players set @s a3_sec 60
scoreboard players set @s a3_ticks 0

execute as @s[team=red] run summon marker ^ ^ ^ {Tags:["magic_storm","red"]}
execute as @s[team=blue] run summon marker ^ ^ ^ {Tags:["magic_storm","blue"]}

execute as @e[tag=magic_storm,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=magic_storm,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1.6

particle enchant ^ ^ ^7 2 2 2 0.5 50 normal

playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 0.7 1.75
playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
playsound minecraft:block.beacon.power_select ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
playsound minecraft:block.beacon.power_select ambient @a[distance=..10] ~ ~ ~ 0.7 0.50
