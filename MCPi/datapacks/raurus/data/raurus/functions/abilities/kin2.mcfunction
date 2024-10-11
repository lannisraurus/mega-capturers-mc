scoreboard players set @s a2_sec 15
scoreboard players set @s a2_ticks 0
scoreboard players remove @s time2 1
execute if entity @s[scores={deal_damage=1..}] run function raurus:abilities/kin2_end
particle enchanted_hit ~ ~0.5 ~ 0.7 0.7 0.7 0 2 force
