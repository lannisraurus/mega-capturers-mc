scoreboard players set @s a1_sec 1
scoreboard players set @s a1_ticks 0
scoreboard players add @s counter 1

execute as @s[team=red,scores={counter=..2}] run summon marker ~ ~ ~ {Tags:["mana_dart","red"]}
execute as @s[team=blue,scores={counter=..2}] run summon marker ~ ~ ~ {Tags:["mana_dart","blue"]}

execute as @s[team=red,scores={counter=3}] run summon marker ~ ~ ~ {Tags:["mana_dart2","red"]}
execute as @s[team=blue,scores={counter=3}] run summon marker ~ ~ ~ {Tags:["mana_dart2","blue"]}

scoreboard players set @s[scores={counter=3..}] counter 0

execute positioned ~ ~0.7 ~ run particle soul_fire_flame ^ ^ ^2 0.5 0.5 0.5 0.06 10 force
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 2.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.50
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.50

execute as @e[tag=mana_dart,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=mana_dart,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @e[tag=mana_dart2,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=mana_dart2,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1
