scoreboard players set @s class 5
tellraw @s {"text":"> You have selected [Silver Golem]","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Silver Golem"}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;541986029,-1106490938,-1411132770,-1916819722]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1910860757,-166247915,-2020601035,-965188292]}],SkullOwner:{Id:[I;-1946500748,-812367735,-1164814450,934586348],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFkZDYyOGNkYzhlOGQ1NmIxMmJmYmVlYTMzNzg2MGYwZjYwY2MyMTY4YzlmMWJlYmJlNGRmY2RmNmZkMmE0NiJ9fX0="}]}}} 1
item replace entity @s armor.chest with iron_chestplate{display:{Name:'{"text":"Silver Golem"}'},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-46912200,-1802745356,-1623334409,310374515]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-952974946,-1760935207,-1125472935,-86527062]}],Trim:{material:"minecraft:iron",pattern:"minecraft:ward"}} 1
item replace entity @s armor.legs with iron_leggings{display:{Name:'{"text":"Silver Golem"}'},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-46912200,-1802745356,-1623334409,310374515]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-952974946,-1760935207,-1125472935,-86527062]}],Trim:{material:"minecraft:iron",pattern:"minecraft:ward"}} 1
item replace entity @s armor.feet with iron_boots{display:{Name:'{"text":"Silver Golem"}'},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-46912200,-1802745356,-1623334409,310374515]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-952974946,-1760935207,-1125472935,-86527062]}],Trim:{material:"minecraft:iron",pattern:"minecraft:ward"}} 1
