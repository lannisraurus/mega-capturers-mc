execute if entity @s[tag=!skin_13_1] run return run function raurus:skins/duelist

scoreboard players set @s class 13
tellraw @s {"text":"> You have selected [Dawning Duelist - Paladin]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Dawning Duelist"}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;242441475,-1927330953,-1849296304,-249054215]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1765148743,-1492828057,-1699195946,1067569306]}],SkullOwner:{Id:[I;-1695044723,1123108819,-1249274408,1589985401],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGQxNDI4MDAwODk1NTk0YjExZWMyODE1MmY0NGNiNTU5OTI0MGZmYjk3ZmY4ZDdiYjM2MWQzOWEwMzE5NWZkNiJ9fX0="}]}}} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Dawning Duelist"}',color:16777215},Unbreakable:1b,HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-2109190570,1949715717,-2014777450,-1854184348]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;829034100,-1961081009,-1189493729,174355292]}],Trim:{material:"minecraft:gold",pattern:"minecraft:shaper"}} 1

item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Dawning Duelist"}',color:2772313},Unbreakable:1b,HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;535516082,-1424798916,-1235057947,980645948]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;218831202,321932475,-1939212532,1991559540]}]} 1

item replace entity @s armor.feet with golden_boots{display:{Name:'{"text":"Dawning Duelist"}'},Unbreakable:1b,HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;788393652,-635615761,-1377212435,-13809105]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1790289425,-963753183,-1484868833,-174037714]}]} 1
