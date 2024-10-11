scoreboard players set @s time2 0
playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..20] ~ ~ ~ 1 1.55
particle enchanted_hit ~ ~0.5 ~ 0.7 0.7 0.7 0 50 force
particle flash ~ ~1 ~ 0 0 0 0 1 force
execute if entity @s[scores={deal_damage=1..}] run function raurus:abilities/kin2_proc
