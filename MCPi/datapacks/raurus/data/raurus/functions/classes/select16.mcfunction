scoreboard players set @s class 16
tellraw @s {"text":"> You have selected [Corrupting Heart]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Corrupting Heart"}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;933920755,-1350415647,-1748683860,-2120021292],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBhNzU3OGMyOGI0MTE0YzU5Y2Y3MTE1NzVjMTkyNjZlZDI0M2EzNTczN2RmMTE1ODE2ZDc0YWJkYzkzYzA5NSJ9fX0="}]}}} 1

item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Corrupting Heart"}',color:14876672},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:netherite",pattern:"minecraft:rib"},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1826537283,1074349591,-1231631249,-1977753301]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;779049177,1120749681,-1315301075,793610634]}]} 1

item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Corrupting Heart"}',color:16772589},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1826537283,1074349591,-1231631249,-1977753301]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;779049177,1120749681,-1315301075,793610634]}]} 1

item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Corrupting Heart"}',color:985096},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1826537283,1074349591,-1231631249,-1977753301]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;779049177,1120749681,-1315301075,793610634]}]} 1

