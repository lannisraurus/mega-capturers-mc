execute if entity @s[scores={kin_2=90..}] run return run function raurus:abilities/kin2_end_effects
scoreboard players add @s kin_2 1
execute if entity @s[scores={kin_2=30}] run function raurus:abilities/kin2_freeze
execute if entity @s[scores={kin_2=30..}] run function raurus:abilities/kin2_frozen

particle enchanted_hit ~ ~0.5 ~ 0.6 0.6 0.6 0 2 force

execute if entity @s[scores={death=1..}] run scoreboard players set @s kin_2 0
