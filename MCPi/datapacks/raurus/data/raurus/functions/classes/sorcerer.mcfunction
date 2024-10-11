# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Bluegem Staff","color":"#007CC4","bold":true}',Lore:['{"text":"Ability: Mana Dart","color":"#33F1FF"}','{"text":"Cooldown: 1 second","color":"#33F1FF"}','{"text":"Damage: 1 Heart","color":"#33F1FF"}','{"text":"------------------","color":"#33F1FF"}','{"text":"Shoot a pellet of magic energy in a straight line.","color":"#33F1FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1000,sorcerer1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;-772367853,-1191228189,-1697898978,940194694],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1873056737,-243184821,-1360332876,1367599057],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Bluegem Staff","color":"#007CC4","bold":true}',Lore:['{"text":"Ability: Soul Orb","color":"#33F1FF"}','{"text":"Cooldown: 7 seconds","color":"#33F1FF"}','{"text":"Damage: 4 Hearts (AoE)","color":"#33F1FF"}','{"text":"------------------","color":"#33F1FF"}','{"text":"Shoot a slow moving orb that explodes on contact.","color":"#33F1FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1000,sorcerer2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;-45635724,-545832545,-1236427486,1737257722],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;505462229,-1935457945,-1194241835,2104761107],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Bluegem Staff","color":"#007CC4","bold":true}',Lore:['{"text":"Ability: Magic Storm","color":"#33F1FF"}','{"text":"Cooldown: 60 seconds","color":"#33F1FF"}','{"text":"Damage: ~3 Hearts per second","color":"#33F1FF"}','{"text":"Duration: 15 seconds","color":"#33F1FF"}','{"text":"------------------","color":"#33F1FF"}','{"text":"Spawn a cloud of magical energy that slows and damages targets in the area.","color":"#33F1FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1000,sorcerer3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2.5,Operation:0,UUID:[I;-786577352,-1355395338,-1836697941,1163417266],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2140141981,1181042551,-1163896399,-571780259],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#007CC4","bold":true}',Lore:['{"text":"Passive: Purple Magic","color":"#33F1FF"}','{"text":"----------------------","color":"#33F1FF"}','{"text":"Every third use of mana dart is empowered, dealing double damage.","color":"#33F1FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1004,clean:1b} 1
# Attributes
attribute @s minecraft:generic.max_health base set 24
attribute @s minecraft:generic.movement_speed base set 0.115

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{sorcerer1:1b}}}] actionbar ["",{"text":"Ability: Mana Dart || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{sorcerer2:1b}}}] actionbar ["",{"text":"Ability: Soul Orb || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{sorcerer3:1b}}}] actionbar ["",{"text":"Ability: Magic Storm || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{sorcerer1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/sorcerer1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{sorcerer2:1b}}},scores={a2_sec=0,right_click=1..}] at @s run function raurus:classes/sorcerer2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{sorcerer3:1b}}},scores={a3_sec=0,right_click=1..}] at @s anchored eyes run function raurus:classes/sorcerer3
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{sorcerer3:1b}}}] at @s anchored eyes run particle end_rod ^ ^ ^7 0 0 0 0 1 force @s

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{sorcerer1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Mana Dart"}'},Unbreakable:1b,CustomModelData:1001,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{sorcerer2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Soul Orb"}'},Unbreakable:1b,CustomModelData:1002,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{sorcerer3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Magic Storm"}'},Unbreakable:1b,CustomModelData:1003,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Mana Dart"}'},Unbreakable:1b,CustomModelData:1001,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Soul Orb"}'},Unbreakable:1b,CustomModelData:1002,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Magic Storm"}'},Unbreakable:1b,CustomModelData:1003,HideFlags:4} 1
