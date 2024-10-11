execute if entity @s[tag=!skin_3_2] run return run function raurus:skins/captain

scoreboard players set @s class 3
tellraw @s {"text":"> You have selected [Captain Slime - Red Tint]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Captain Slime"}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-384341585,-1830010725,-1265914313,1741809018]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;391746051,-303608230,-1353611650,1646844032]}],SkullOwner:{Id:[I;1166117680,832063832,-1927096391,1830118886],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTRmNTVkYWMwNGY2OTc4ZDBjOWVkYTc1Y2NiNWZiNjA4MmM2Y2I2NzczMjdmZjIyY2ZmMzVmZDBiNGViYzM3YiJ9fX0="}]}}} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Captain Slime"}',color:939814},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;643904294,1950764392,-1382771607,-371648328]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;482485277,2063421203,-1769472336,228857740]}]} 1

item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Captain Slime"}',color:1519131},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;643904294,1950764392,-1382771607,-371648328]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;482485277,2063421203,-1769472336,228857740]}]} 1

item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Captain Slime"}',color:4849664},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;643904294,1950764392,-1382771607,-371648328]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;482485277,2063421203,-1769472336,228857740]}]} 1
