execute if entity @s[tag=!skin_14_1] run return run function raurus:skins/phantom

scoreboard players set @s class 14
tellraw @s {"text":"> You have selected [Arid Phantom - Knight of the Desert]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

function raurus:classes/phantom_armour
