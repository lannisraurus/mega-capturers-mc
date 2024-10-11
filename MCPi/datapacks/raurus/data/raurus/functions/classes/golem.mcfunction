# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Zweihander","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Warden Chains","color":"#BDBDBD"}','{"text":"Cooldown: 10 seconds","color":"#BDBDBD"}','{"text":"Damage: 3 Hearts (AoE)","color":"#BDBDBD"}','{"text":"------------------","color":"#BDBDBD"}','{"text":"Spawn a travelling line of chains that spread out when they encounter an enemy, dealing damage.","color":"#BDBDBD"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1020,golem1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-772367853,-1191228189,-1697898978,940194694],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1873056737,-243184821,-1360332876,1367599057],Slot:"mainhand"}]} 1

item replace entity @s hotbar.1 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Zweihander","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Resonant Portal","color":"#BDBDBD"}','{"text":"Cooldown: 30 seconds","color":"#BDBDBD"}','{"text":"Damage: 0","color":"#BDBDBD"}','{"text":"------------------","color":"#BDBDBD"}','{"text":"Spawn a portal. Using the ability once again teleports you to the portal.","color":"#BDBDBD"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1020,golem2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-45635724,-545832545,-1236427486,1737257722],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;505462229,-1935457945,-1194241835,2104761107],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Zweihander","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Spacetime Rip","color":"#BDBDBD"}','{"text":"Cooldown: 60 seconds","color":"#BDBDBD"}','{"text":"Damage: 0","color":"#BDBDBD"}','{"text":"------------------","color":"#BDBDBD"}','{"text":"Flag a tower (right-click in its direction), then teleport all nearby players to that location.","color":"#BDBDBD"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1020,golem3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-786577352,-1355395338,-1836697941,1163417266],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2140141981,1181042551,-1163896399,-571780259],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#FFFFFF","bold":true}',Lore:['{"text":"Passive: Iron Stance","color":"#BDBDBD"}','{"text":"----------------------","color":"#BDBDBD"}','{"text":"You are not affected by slowing status effects.","color":"#BDBDBD"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1024,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 50
attribute @s minecraft:generic.movement_speed base set 0.085

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{golem1:1b}}}] actionbar ["",{"text":"Ability: Warden's Chains || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{golem2:1b}}}] actionbar ["",{"text":"Ability: Resonant Portal || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{golem3:1b}}}] actionbar ["",{"text":"Ability: Spacetime Rip || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{golem1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/golem1

execute as @s[tag=can_use,nbt={SelectedItem:{tag:{golem2:1b}}},scores={counter=1..,a2_sec=0,right_click=1..}] at @s run function raurus:classes/golem2tp
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{golem2:1b}}},scores={counter=0,a2_sec=0,right_click=1..}] at @s run function raurus:classes/golem2

execute as @s[tag=can_use,nbt={SelectedItem:{tag:{golem3:1b}}},scores={a3_sec=0,right_click=1..}] at @s anchored eyes run function raurus:classes/golem3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{golem1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Warden Chains"}'},Unbreakable:1b,CustomModelData:1021,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{golem2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Resonant Portal"}'},Unbreakable:1b,CustomModelData:1022,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{golem3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Spacetime Rip"}'},Unbreakable:1b,CustomModelData:1023,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Warden Chains"}'},Unbreakable:1b,CustomModelData:1021,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Resonant Portal"}'},Unbreakable:1b,CustomModelData:1022,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Spacetime Rip"}'},Unbreakable:1b,CustomModelData:1023,HideFlags:4} 1

# Passive
effect clear @s slowness
tag @s add slow_immune

# Ability 2/3
scoreboard players remove @s[scores={time=1..}] time 1
scoreboard players remove @s[scores={time2=1..}] time2 1
execute if entity @s[scores={time2=1..}] run particle witch ~ ~ ~ 3 0.3 3 0 10 force
execute if entity @s[scores={time2=1}] run tag @a[distance=..6] add tp_flag
