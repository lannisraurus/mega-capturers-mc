# Inventory - Uncloaked
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Rapier","color":"#A1025C","bold":true,"obfuscated":true}',Lore:['{"text":"Ability: Soothe","color":"#D65472"}','{"text":"Cooldown: 3 seconds","color":"#D65472"}','{"text":"Heal: 1 Heart","color":"#D65472"}','{"text":"------------------","color":"#D65472"}','{"text":"Heal the nearest ally by 1 heart. Maximum range is 10 blocks.","color":"#D65472"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1072,heart1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;1499484758,-203865564,-2141723435,-335912141],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;493387702,1023298177,-1978029711,-1423751435],Slot:"mainhand"}]} 1

item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Rapier","color":"#A1025C","bold":true,"obfuscated":true}',Lore:['{"text":"Ability: Flagellation","color":"#D65472"}','{"text":"Cooldown: 10 seconds","color":"#D65472"}','{"text":"Damage: 0","color":"#D65472"}','{"text":"------------------","color":"#D65472"}','{"text":"Give poison III to yourself, lasting for 10 seconds.","color":"#D65472"}','{"text":"","color":"#D65472"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1072,heart2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;2147172990,2017610214,-1288500653,160905480],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1496684883,-598716933,-1737460567,1894615205],Slot:"mainhand"}]} 1

item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Rapier","color":"#A1025C","bold":true,"obfuscated":true}',Lore:['{"text":"Ability: Mass","color":"#D65472"}','{"text":"Cooldown: 60 seconds","color":"#D65472"}','{"text":"Heal: 4 Hearts","color":"#D65472"}','{"text":"------------------","color":"#D65472"}','{"text":"Heals all allies by 4 hearts, granting them strength I for 4 seconds","color":"#D65472"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1072,heart3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-1920000553,-1178056885,-1757133075,-1221094419],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1041336406,-1464776908,-1098005091,-90942018],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#A1025C","bold":true}',Lore:['{"text":"Ability: Duality of the Heart","color":"#D65472"}','{"text":"------------------","color":"#D65472"}','{"text":"When at full health, gain speed II. When you are out of combat for 8 seconds, start slowly regenerating.","color":"#D65472"}','{"text":"When poisoned, your healing abilities also grant a 2 heart shield, lasting for 5 seconds.","color":"#D65472"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1076,clean:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-1673900732,-406696789,-2084626890,1257201255],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1714351060,-715373455,-1521802668,988800198],Slot:"mainhand"}]} 1

# Attributes
attribute @s minecraft:generic.max_health base set 30
attribute @s minecraft:generic.movement_speed base set 0.118

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{heart1:1b}}}] actionbar ["",{"text":"Ability: Soothe || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true}]
title @s[nbt={SelectedItem:{tag:{heart2:1b}}}] actionbar ["",{"text":"Ability: Flagellation || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{heart3:1b}}}] actionbar ["",{"text":"Ability: Mass || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Passive
execute if entity @s[scores={hurt_time=1..}] run scoreboard players set @s time 160
execute if entity @s[scores={time=1..}] run scoreboard players remove @s time 1
execute if entity @s[scores={time=1..}] run scoreboard players set @s time2 0
scoreboard players set @s counter 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:poison"}]}] run scoreboard players set @s counter 1
execute if entity @s[scores={time=..0}] run scoreboard players add @s time2 1
execute if entity @s[scores={time2=35..}] run function raurus:classes/heart0
execute if entity @s[scores={time=..0,health=30}] run effect give @s speed 1 1 true

# Use Abilities
tag @s[scores={right_click=1..}] add use_ability
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{heart1:1b}}},scores={a1_sec=0}] at @s run function raurus:classes/heart1
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{heart2:1b}}},scores={a2_sec=0}] at @s run function raurus:classes/heart2
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{heart3:1b}}},scores={a3_sec=0}] at @s run function raurus:classes/heart3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{heart1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Soothe"}'},Unbreakable:1b,CustomModelData:1073,HideFlags:4,Count:1b} 1
item replace entity @s[nbt={SelectedItem:{tag:{heart2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Flagellation"}'},Unbreakable:1b,CustomModelData:1074,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{heart3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Mass"}'},Unbreakable:1b,CustomModelData:1075,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Soothe"}'},Unbreakable:1b,CustomModelData:1073,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Flagellation"}'},Unbreakable:1b,CustomModelData:1074,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Mass"}'},Unbreakable:1b,CustomModelData:1075,HideFlags:4} 1
