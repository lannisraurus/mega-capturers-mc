scoreboard players set @s a1_sec 4
scoreboard players set @s a1_ticks 0

execute as @s[team=red] run summon marker ~ ~ ~ {Tags:["golden_tear","red"]}
execute as @s[team=blue] run summon marker ~ ~ ~ {Tags:["golden_tear","blue"]}

execute positioned ~ ~1.4 ~ run particle wax_off ^ ^ ^2 0.5 0.5 0.5 0.06 10 force

playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 3 2.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 2.00

execute anchored eyes as @e[tag=golden_tear,type=marker,sort=nearest,limit=1] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=golden_tear,type=marker,sort=nearest,limit=1] at @s run tp @s ^ ^1.4 ^2.5
