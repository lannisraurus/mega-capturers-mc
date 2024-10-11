execute as @e[type=marker,tag=mana_dart] at @s run function raurus:abilities/sorcerer1
execute as @e[type=marker,tag=mana_dart2] at @s run function raurus:abilities/sorcerer1special
execute as @e[type=marker,tag=soul_orb] at @s run function raurus:abilities/sorcerer2
execute as @e[type=marker,tag=magic_storm] at @s run function raurus:abilities/sorcerer3

execute as @e[type=husk,tag=shadow_clone] at @s run function raurus:abilities/assassin2

execute as @e[type=armor_stand,tag=slime_landmine] at @s run function raurus:abilities/captain1
execute as @e[type=marker,tag=tactical_missile] at @s run function raurus:abilities/captain2
execute as @e[type=slime,tag=slime_live_bomb] at @s run function raurus:abilities/captain2live
execute as @e[type=marker,tag=slime_bomb] at @s run function raurus:abilities/captain3

execute as @e[type=armor_stand,tag=warden_chains] at @s run function raurus:abilities/golem1
execute as @e[type=armor_stand,tag=warden_chains_2] at @s run function raurus:abilities/golem1exploded
execute as @e[type=armor_stand,tag=golem_portal] at @s run function raurus:abilities/golem2
execute as @e[type=marker,tag=spacetime_rip] at @s run function raurus:abilities/golem3
execute as @e[type=marker,tag=spacetime_rip_tp] at @s run function raurus:abilities/golem3ac

execute as @e[type=marker,tag=golden_tear] at @s run function raurus:abilities/guardian1
execute as @e[type=armor_stand,tag=healing_totem] at @s run function raurus:abilities/guardian3

execute as @e[type=arrow,tag=archer1arrow] at @s run function raurus:abilities/archer1
execute as @e[type=arrow,tag=archer2] at @s run function raurus:abilities/archer2
execute as @e[type=arrow,tag=archer3] at @s run function raurus:abilities/archer3
execute as @a[scores={archer_ult=1..}] at @s run function raurus:abilities/archer3ac

execute as @e[type=arrow,tag=hunter_arrow] at @s run function raurus:abilities/hunter0
execute as @e[type=marker,tag=wither_wave] at @s run function raurus:abilities/hunter1
execute as @e[type=arrow,tag=necrotic_ride] at @s run function raurus:abilities/hunter2
execute as @e[type=arrow,tag=eyeblight] at @s run function raurus:abilities/hunter3
execute as @e[type=marker,tag=eyeblight_cloud] at @s run function raurus:abilities/hunter3ac

execute as @e[type=text_display,tag=priest3effects] at @s run function raurus:abilities/priest3

# execute as @e[type=interaction,tag=summoner_interaction] at @s run function raurus:abilities/summoner0
# execute as @e[type=marker,tag=summoner_ray] at @s run function raurus:abilities/summoner0ray
execute as @e[type=marker,tag=summoner_turret] at @s run function raurus:abilities/summoner1
execute as @e[type=armor_stand,tag=summoner_turret_active] at @s run function raurus:abilities/summoner1active
execute as @e[type=interaction,tag=summoner_turret_health] at @s run function raurus:abilities/summoner1health
execute as @e[type=marker,tag=turret_bullet] at @s run function raurus:abilities/summoner1bullet
execute as @e[type=marker,tag=summoner_river] at @s run function raurus:abilities/summoner2
execute as @e[type=marker,tag=summoner_river_active] at @s run function raurus:abilities/summoner2active
execute as @e[type=text_display,tag=summoner_river_effects] at @s run function raurus:abilities/summoner2vfx
execute as @e[type=marker,tag=summoner_artillery] at @s run function raurus:abilities/summoner3
execute as @e[type=marker,tag=summoner3bullet] at @s run function raurus:abilities/summoner3bullet
execute as @e[type=marker,tag=living_mana] at @s run function raurus:abilities/summoner1_rework

execute as @e[type=marker,tag=phantom_cloud] at @s run function raurus:abilities/phantom3

kill @e[type=marker,tag=fireball_marker]
execute as @e[type=fireball,tag=fireball] at @s run function raurus:abilities/warlock1_fireball
execute as @e[type=fireball,tag=fireball2] at @s run function raurus:abilities/warlock1

execute as @e[type=armor_stand,tag=kin_freeze] run function raurus:abilities/kin2_stand
execute as @e[type=marker,tag=kin3] run function raurus:abilities/kin3_stand

execute as @e[type=marker,tag=disrupting_weave] at @s run function raurus:abilities/abjurator1
execute as @a[scores={abjurator_1=1..}] at @s run function raurus:abilities/abjurator1_effects
execute as @e[type=marker,tag=antimana_circle] at @s run function raurus:abilities/abjurator2
execute as @e[type=marker,tag=abjuration_sphere] at @s run function raurus:abilities/abjurator3
execute as @e[type=marker,tag=abjuration_sphere_aux] at @s run function raurus:abilities/abjurator3_aux

