# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Partizan","color":"#E0AC00","bold":true}',Lore:['{"text":"Ability: Golden Tear","color":"#FFE600"}','{"text":"Cooldown: 4 seconds","color":"#FFE600"}','{"text":"Heal: 2 Hearts","color":"#FFE600"}','{"text":"------------------","color":"#FFE600"}','{"text":"Shoot a fast moving pellet that heals one ally.","color":"#FFE600"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1025,guardian1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-772367853,-1191228189,-1697898978,940194694],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1873056737,-243184821,-1360332876,1367599057],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Partizan","color":"#E0AC00","bold":true}',Lore:['{"text":"Ability: Angelic Shield","color":"#FFE600"}','{"text":"Cooldown: 30 seconds","color":"#FFE600"}','{"text":"Damage: 0","color":"#FFE600"}','{"text":"------------------","color":"#FFE600"}','{"text":"Become invulnerable to all damage for 3 seconds.","color":"#FFE600"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1025,guardian2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-45635724,-545832545,-1236427486,1737257722],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;505462229,-1935457945,-1194241835,2104761107],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Partizan","color":"#E0AC00","bold":true}',Lore:['{"text":"Ability: Healing Totem","color":"#FFE600"}','{"text":"Cooldown: 60 seconds","color":"#FFE600"}','{"text":"Heal: 2 Hearts per second (AoE)","color":"#FFE600"}','{"text":"------------------","color":"#FFE600"}','{"text":"Spawn a totem that heals players around you. The totem lasts longer near team-captured towers.","color":"#FFE600"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1025,guardian3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-786577352,-1355395338,-1836697941,1163417266],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2140141981,1181042551,-1163896399,-571780259],Slot:"mainhand"}]} 1
item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#E0AC00","bold":true}',Lore:['{"text":"Passive: Soothing Presence","color":"#FFE600"}','{"text":"----------------------","color":"#FFE600"}','{"text":"You have a healing aura that periodically heals allies around you.","color":"#FFE600"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1029,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 28
attribute @s minecraft:generic.movement_speed base set 0.117

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{guardian1:1b}}}] actionbar ["",{"text":"Ability: Golden Tear || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{guardian2:1b}}}] actionbar ["",{"text":"Ability: Angelic Shield || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{guardian3:1b}}}] actionbar ["",{"text":"Ability: Healing Totem || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{guardian1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/guardian1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{guardian2:1b}}},scores={counter=0,a2_sec=0,right_click=1..}] at @s run function raurus:classes/guardian2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{guardian3:1b}}},scores={a3_sec=0,right_click=1..}] at @s anchored eyes run function raurus:classes/guardian3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{guardian1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Golden Tear"}'},Unbreakable:1b,CustomModelData:1026,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{guardian2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Angelic Shield"}'},Unbreakable:1b,CustomModelData:1027,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{guardian3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Healing Totem"}'},Unbreakable:1b,CustomModelData:1028,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Golden Tear"}'},Unbreakable:1b,CustomModelData:1026,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Angelic Shield"}'},Unbreakable:1b,CustomModelData:1027,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Healing Totem"}'},Unbreakable:1b,CustomModelData:1028,HideFlags:4} 1

# Passive
particle minecraft:wax_on ~ ~0.1 ~ 0.3 0 0.3 0 1 force
scoreboard players add @s time 1
execute if entity @s[scores={time=100..}] run function raurus:classes/guardian0

# Ability 2
execute if entity @s[scores={counter=1..}] run function raurus:classes/guardian2ac
