execute if entity @s[tag=!skin_10_1] run return run function raurus:skins/priest

scoreboard players set @s class 10
tellraw @s {"text":"> You have selected [Bloodcurse Priestess - Support Btw]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Bloodcurse Priest"}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-572149106,-226014980,-1409548193,304499184]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1481843179,1383416097,-1536796832,-1154341276]}],SkullOwner:{Id:[I;366263051,1411990450,-2027829490,1498233910],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmZjNjkyNTA2MzdmZDIzNjgxYzBiMjA5ZWFmOGU3NjNiOGY0Y2MzNzg0MzFlMDU3NDQ3ODQzMjJkNDIxODc5In19fQ=="}]}}} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Bloodcurse Priest"}',color:3155751},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1043347539,-1217376375,-1514898578,457711221]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-447617432,-1999156475,-1210058607,-1318551695]}],Trim:{material:"minecraft:lapis",pattern:"minecraft:silence"}} 1

item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Bloodcurse Priest"}',color:3155751},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1043347539,-1217376375,-1514898578,457711221]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-447617432,-1999156475,-1210058607,-1318551695]}],Trim:{material:"minecraft:lapis",pattern:"minecraft:silence"}} 1

item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Bloodcurse Priest"}',color:3155751},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1043347539,-1217376375,-1514898578,457711221]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-447617432,-1999156475,-1210058607,-1318551695]}],Trim:{material:"minecraft:lapis",pattern:"minecraft:silence"}} 1
