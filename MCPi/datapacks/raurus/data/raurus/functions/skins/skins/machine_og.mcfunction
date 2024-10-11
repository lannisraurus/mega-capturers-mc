execute if entity @s[tag=!skin_4_1] run return run function raurus:skins/machine

scoreboard players set @s class 4
tellraw @s {"text":"> You have selected [Biomechanical Machine - Legacy Skin]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

item replace entity @s armor.head with observer{display:{Name:'{"text":"Biomechanical Machine"}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1856683651,-1634776379,-1829933204,1738461562]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-187349009,333398424,-1399023338,-1027342046]}]} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Biomechanical Machine"}',color:8421504},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1646528385,321537303,-1610993739,-1567461713]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1868644292,-1553186716,-1117767984,616869614]}]} 1

item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Biomechanical Machine"}',color:8421504},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1646528385,321537303,-1610993739,-1567461713]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1868644292,-1553186716,-1117767984,616869614]}]} 1

item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Biomechanical Machine"}',color:8421504},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1646528385,321537303,-1610993739,-1567461713]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1868644292,-1553186716,-1117767984,616869614]}]} 1
