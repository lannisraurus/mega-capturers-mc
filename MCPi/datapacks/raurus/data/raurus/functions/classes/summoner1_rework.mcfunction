scoreboard players set @s a2_sec 1
scoreboard players set @s a2_ticks 0

execute as @s[team=red,scores={counter=..2}] run summon marker ~ ~ ~ {Tags:["living_mana","red"]}
execute as @s[team=blue,scores={counter=..2}] run summon marker ~ ~ ~ {Tags:["living_mana","blue"]}

execute positioned ~ ~1.3 ~ run particle enchanted_hit ^ ^ ^2 0.5 0.5 0.5 0 50 force
playsound minecraft:block.note_block.chime ambient @a[distance=..20] ~ ~ ~ 2 0
playsound minecraft:block.note_block.chime ambient @a[distance=..20] ~ ~ ~ 2 0.5
playsound minecraft:block.note_block.chime ambient @a[distance=..20] ~ ~ ~ 2 1
playsound minecraft:block.note_block.chime ambient @a[distance=..20] ~ ~ ~ 2 0.75

execute as @e[tag=living_mana,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=living_mana,type=marker,sort=nearest,limit=1] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

