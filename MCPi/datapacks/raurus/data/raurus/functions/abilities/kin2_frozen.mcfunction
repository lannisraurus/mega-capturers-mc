execute at @e[type=armor_stand,tag=kin_freeze,limit=1,sort=nearest] run tp @s ~ ~ ~
effect give @s slowness 1 10 true
effect give @s resistance 1 100 true
effect give @s weakness 1 10 true

particle enchant ~ ~0.5 ~ 0.6 0.6 0.6 1 5 force

tag @s remove can_use
