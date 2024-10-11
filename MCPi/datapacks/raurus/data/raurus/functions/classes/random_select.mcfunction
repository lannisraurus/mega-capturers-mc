clear @s



scoreboard players set @s class 11
tellraw @s {"text":"> You have selected a random class. Your class will be revealed when you join the match!","color":"aqua"}
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 100 2
item replace entity @s armor.head with player_head{display:{Name:'{"text":"???","bold":true}'},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}}} 1
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"???","bold":true}',color:6184542},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-854371445,1948797962,-1201693385,-53096845]}]} 1
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"???","bold":true}',color:6184542},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-854371445,1948797962,-1201693385,-53096845]}]} 1
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"???","bold":true}',color:6184542},HideFlags:255,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-854371445,1948797962,-1201693385,-53096845]}]} 1

tag @s remove random_select
