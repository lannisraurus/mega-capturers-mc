scoreboard players set @s a1_sec 5
scoreboard players set @s a1_ticks 0
scoreboard players remove @s time 1
execute if entity @s[scores={deal_damage=1..}] run function raurus:abilities/kin1_end
particle enchant ~ ~0.5 ~ 0.7 0.7 0.7 0 2 force
