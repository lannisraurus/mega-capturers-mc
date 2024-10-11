# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Abyssal Greatsword","color":"#7EB9CF","bold":true}',Lore:['{"text":"Ability: Abyssal Leap","color":"#BFF7FF"}','{"text":"Cooldown: 15 seconds","color":"#BFF7FF"}','{"text":"Damage: 2 Hearts (AoE)","color":"#BFF7FF"}','{"text":"------------------","color":"#BFF7FF"}','{"text":"Leap forward into the air, hitting the ground with a shadowy blast.","color":"#BFF7FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1040,knight1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-772367853,-1191228189,-1697898978,940194694],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1873056737,-243184821,-1360332876,1367599057],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Abyssal Greatsword","color":"#7EB9CF","bold":true}',Lore:['{"text":"Ability: Runescream","color":"#BFF7FF"}','{"text":"Cooldown: 30 seconds","color":"#BFF7FF"}','{"text":"Heal: 2 Hearts (Self)","color":"#BFF7FF"}','{"text":"------------------","color":"#BFF7FF"}','{"text":"Let out a scream laced with magical incantations, empowering you and debuffing enemies.","color":"#BFF7FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1040,knight2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-45635724,-545832545,-1236427486,1737257722],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;505462229,-1935457945,-1194241835,2104761107],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Abyssal Greatsword","color":"#7EB9CF","bold":true}',Lore:['{"text":"Ability: Abyss Walk","color":"#BFF7FF"}','{"text":"Cooldown: 60 seconds","color":"#BFF7FF"}','{"text":"Damage: 2.5 Hearts","color":"#BFF7FF"}','{"text":"------------------","color":"#BFF7FF"}','{"text":"Retreat into the Abyss, emerging again after 5 seconds, dealing damage to the nearest enemy.","color":"#BFF7FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1040,knight3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-786577352,-1355395338,-1836697941,1163417266],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2140141981,1181042551,-1163896399,-571780259],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#7EB9CF","bold":true}',Lore:['{"text":"Passive: Runic Valour","color":"#BFF7FF"}','{"text":"----------------------","color":"#BFF7FF"}','{"text":"When surrounded by enemies, your cooldowns shorten.","color":"#BFF7FF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1044,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 40
attribute @s minecraft:generic.movement_speed base set 0.074

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{knight1:1b}}}] actionbar ["",{"text":"Ability: Abyssal Leap || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{knight2:1b}}}] actionbar ["",{"text":"Ability: Runic Scream || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{knight3:1b}}}] actionbar ["",{"text":"Ability: Abyss Walk || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{knight1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/knight1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{knight2:1b}}},scores={a2_sec=0,right_click=1..}] at @s run function raurus:classes/knight2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{knight3:1b}}},scores={a3_sec=0,right_click=1..}] at @s run function raurus:classes/knight3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{knight1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Abyssal Leap"}'},Unbreakable:1b,CustomModelData:1041,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{knight2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Runic Scream"}'},Unbreakable:1b,CustomModelData:1042,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{knight3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Abyss Walk"}'},Unbreakable:1b,CustomModelData:1043,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Abyssal Leap"}'},Unbreakable:1b,CustomModelData:1041,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Runic Scream"}'},Unbreakable:1b,CustomModelData:1042,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Abyss Walk"}'},Unbreakable:1b,CustomModelData:1043,HideFlags:4} 1

# Passive Ability
execute if entity @s[team=red] at @e[distance=..12,team=blue] run scoreboard players add @s counter 1
execute if entity @s[team=blue] at @e[distance=..12,team=red] run scoreboard players add @s counter 1
execute if entity @s[scores={counter=10..}] run function raurus:classes/knight0

# Ability 1
execute if entity @s[scores={time=1..}] run function raurus:classes/knight1ac
execute if entity @s[scores={time2=1..}] run function raurus:classes/knight2ac
execute if entity @s[scores={time3=1..}] run function raurus:classes/knight3ac
