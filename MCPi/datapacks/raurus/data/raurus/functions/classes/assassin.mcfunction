# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Katana","color":"#7600C4","bold":true}',Lore:['{"text":"Ability: Shadow Mark","color":"#CE2BFF"}','{"text":"Cooldown: 15 seconds","color":"#CE2BFF"}','{"text":"Damage: 3.5 Hearts","color":"#CE2BFF"}','{"text":"------------------","color":"#CE2BFF"}','{"text":"Teleport towards the nearest enemy within 7 blocks, dealing single-target damage.","color":"#CE2BFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1005,ability:1b,assassin1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-135667553,-1398518531,-2004072734,-1690590330],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1397300818,1068911049,-1186760769,-37433149],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Katana","color":"#7600C4","bold":true}',Lore:['{"text":"Ability: Shadow Clone","color":"#CE2BFF"}','{"text":"Cooldown: 30 seconds","color":"#CE2BFF"}','{"text":"Damage: Melee damage","color":"#CE2BFF"}','{"text":"------------------","color":"#CE2BFF"}','{"text":"Create an unkillable clone of your player character that attacks player enemies (10s).","color":"#CE2BFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1005,ability:1b,assassin2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1487596327,-798932278,-1925326829,-390965074],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2072980239,1837712801,-1622533731,2109976966],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Katana","color":"#7600C4","bold":true}',Lore:['{"text":"Ability: Will of Shadows","color":"#CE2BFF"}','{"text":"Cooldown: 60 seconds","color":"#CE2BFF"}','{"text":"Damage: 5 Hearts (AoE)","color":"#CE2BFF"}','{"text":"------------------","color":"#CE2BFF"}','{"text":"Become invulnerable for 3 seconds, unleashing a shadowy blast in the end, dealing AoE damage.","color":"#CE2BFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1005,ability:1b,assassin3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1743421864,1716535540,-1243832534,76875103],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-206611492,-26457880,-1757535813,1289765238],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#7600C4","bold":true}',Lore:['{"text":"Passive: Dark Vitality","color":"#CE2BFF"}','{"text":"----------------------","color":"#CE2BFF"}','{"text":"You passively regenerate health, as well as having a passive increase to speed.","color":"#CE2BFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1009,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 14
attribute @s minecraft:generic.movement_speed base set 0.143

# Passive Regeneration
execute as @s[scores={a0_sec=0}] run function raurus:classes/assassin0

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{assassin1:1b}}}] actionbar ["",{"text":"Ability: Shadow Mark || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{assassin2:1b}}}] actionbar ["",{"text":"Ability: Shadow Clone || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{assassin3:1b}}}] actionbar ["",{"text":"Ability: Will of Shadows || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{assassin1:1b}}}] at @s anchored eyes run particle witch ^ ^ ^7 0 0 0 0 1 force @s
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{assassin1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/assassin1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{assassin2:1b}}},scores={a2_sec=0,right_click=1..}] at @s run function raurus:classes/assassin2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{assassin3:1b}}},scores={a3_sec=0,right_click=1..}] at @s anchored eyes run function raurus:classes/assassin3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{assassin1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Mark"}'},Unbreakable:1b,CustomModelData:1007,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{assassin2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Clone"}'},Unbreakable:1b,CustomModelData:1006,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{assassin3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Will of Shadows"}'},Unbreakable:1b,CustomModelData:1008,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Mark"}'},Unbreakable:1b,CustomModelData:1007,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Shadow Clone"}'},Unbreakable:1b,CustomModelData:1006,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Will of Shadows"}'},Unbreakable:1b,CustomModelData:1008,HideFlags:4} 1

# Ultimate Ability
execute as @s[scores={counter=1..}] at @s run function raurus:abilities/assassin3
execute as @s[scores={counter=60..}] at @s run function raurus:abilities/assassin3explode
