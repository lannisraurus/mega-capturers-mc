# Inventory - Uncloaked
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Eldritch Orb","color":"#5F00B3","bold":true}',Lore:['{"text":"Ability: Disrupting Weave","color":"#6830D9"}','{"text":"Cooldown: 1 seconds","color":"#6830D9"}','{"text":"Damage: 2 Hearts","color":"#6830D9"}','{"text":"------------------","color":"#6830D9"}','{"text":"Send a mote of disrupting weave. This projectile has a slight homing ability. When it hits a target, their cooldowns get frozen for 1 second.","color":"#6830D9"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1082,abjurer1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;1499484758,-203865564,-2141723435,-335912141],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;493387702,1023298177,-1978029711,-1423751435],Slot:"mainhand"}]} 1

item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Eldritch Orb","color":"#5F00B3","bold":true}',Lore:['{"text":"Ability: Antimana Circle","color":"#6830D9"}','{"text":"Cooldown: 35 seconds","color":"#6830D9"}','{"text":"Damage: 0","color":"#6830D9"}','{"text":"------------------","color":"#6830D9"}','{"text":"You summon a magical circle that prevents all enemies within 8 blocks of the center from using abilities. The circle lasts for 15 seconds.","color":"#6830D9"}','{"text":"","color":"#6830D9"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1082,abjurer2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;2147172990,2017610214,-1288500653,160905480],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1496684883,-598716933,-1737460567,1894615205],Slot:"mainhand"}]} 1

item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Eldritch Orb","color":"#5F00B3","bold":true}',Lore:['{"text":"Ability: Abjuration Sphere","color":"#6830D9"}','{"text":"Cooldown: 80 seconds","color":"#6830D9"}','{"text":"Damage: 0","color":"#6830D9"}','{"text":"------------------","color":"#6830D9"}','{"text":"You create a magical sphere with a radius of 7 blocks. No enemies or projectiles from the enemy team can enter or leave the orb, which lasts for 15 seconds.","color":"#6830D9"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1082,abjurer3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;-1920000553,-1178056885,-1757133075,-1221094419],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1041336406,-1464776908,-1098005091,-90942018],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#5F00B3","bold":true}',Lore:['{"text":"Ability: Tower Warding","color":"#6830D9"}','{"text":"------------------","color":"#6830D9"}','{"text":"When around one of your capture points, your first ability lasts for 2 more seconds, and your others last for 5 more seconds.","color":"#6830D9"}','{"text":"","color":"#6830D9"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1086,clean:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-1673900732,-406696789,-2084626890,1257201255],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1714351060,-715373455,-1521802668,988800198],Slot:"mainhand"}]} 1

# Attributes
attribute @s minecraft:generic.max_health base set 26
attribute @s minecraft:generic.movement_speed base set 0.108

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{abjurer1:1b}}}] actionbar ["",{"text":"Ability: Disrupting Weave || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true}]
title @s[nbt={SelectedItem:{tag:{abjurer2:1b}}}] actionbar ["",{"text":"Ability: Antimana Circle || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{abjurer3:1b}}}] actionbar ["",{"text":"Ability: Abjuration Sphere || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
tag @s[scores={right_click=1..}] add use_ability
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{abjurer1:1b}}},scores={a1_sec=0}] at @s run function raurus:classes/abjurator1
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{abjurer2:1b}}},scores={a2_sec=0}] at @s run function raurus:classes/abjurator2
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{abjurer3:1b}}},scores={a3_sec=0}] at @s run function raurus:classes/abjurator3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{abjurer1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Disrupting Weave"}'},Unbreakable:1b,CustomModelData:1083,HideFlags:4,Count:1b} 1
item replace entity @s[nbt={SelectedItem:{tag:{abjurer2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Antimana Circle"}'},Unbreakable:1b,CustomModelData:1084,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{abjurer3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Abjuration Sphere"}'},Unbreakable:1b,CustomModelData:1085,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Disrupting Weave"}'},Unbreakable:1b,CustomModelData:1083,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Antimana Circle"}'},Unbreakable:1b,CustomModelData:1084,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Abjuration Sphere"}'},Unbreakable:1b,CustomModelData:1085,HideFlags:4} 1

# Passive
execute if entity @s[team=red] if entity @e[type=marker,tag=tower,tag=red,distance=..10] run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0 1 force
execute if entity @s[team=blue] if entity @e[type=marker,tag=tower,tag=blue,distance=..10] run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0 1 force
execute if entity @s[team=red] at @e[type=marker,tag=tower,tag=red,distance=..10] run particle end_rod ~ ~ ~ 2.2 2.2 2.2 0 2 force
execute if entity @s[team=blue] at @e[type=marker,tag=tower,tag=blue,distance=..10] run particle end_rod ~ ~ ~ 2.2 2.2 2.2 0 2 force
