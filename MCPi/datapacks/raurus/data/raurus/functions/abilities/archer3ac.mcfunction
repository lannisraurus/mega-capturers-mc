scoreboard players add @s archer_ult 1

particle end_rod ~ ~ ~ 1 1 1 0 1 force

effect give @s[scores={archer_ult=0..25}] slowness 1 100 true

effect give @s[scores={archer_ult=20}] glowing 60 0 true

execute if entity @s[scores={archer_ult=20..21}] run summon lightning_bolt

scoreboard players set @s[scores={archer_ult=30..}] archer_ult 0


