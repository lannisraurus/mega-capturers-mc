# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{Enchantments:[{id:"minecraft:knockback",lvl:2s}],display:{Name:'{"text":"Comically Large Spoon","color":"#229100","bold":true}',Lore:['{"text":"Ability: Slime Landmine","color":"#A1FF8A"}','{"text":"Cooldown: 6 seconds","color":"#A1FF8A"}','{"text":"Damage: 3 Hearts (AoE)","color":"#A1FF8A"}','{"text":"------------------","color":"#A1FF8A"}','{"text":"Spawn a stationary landmine that explodes on contact. Lasts 1 minute.","color":"#A1FF8A"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1010,ability:1b,captain1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-135667553,-1398518531,-2004072734,-1690590330],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1397300818,1068911049,-1186760769,-37433149],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{Enchantments:[{id:"minecraft:knockback",lvl:2s}],display:{Name:'{"text":"Comically Large Spoon","color":"#229100","bold":true}',Lore:['{"text":"Ability: Tactical Missile","color":"#A1FF8A"}','{"text":"Cooldown: 20 seconds","color":"#A1FF8A"}','{"text":"Damage: 3 Hearts per bomb (AoE)","color":"#A1FF8A"}','{"text":"------------------","color":"#A1FF8A"}','{"text":"Launch a tactical missile that splits into 3 living slime bombs, which explode upon a short cooldown.","color":"#A1FF8A"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1010,ability:1b,captain2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;1487596327,-798932278,-1925326829,-390965074],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2072980239,1837712801,-1622533731,2109976966],Slot:"mainhand"}]} 1

item replace entity @s hotbar.2 with carrot_on_a_stick{Enchantments:[{id:"minecraft:knockback",lvl:2s}],display:{Name:'{"text":"Comically Large Spoon","color":"#229100","bold":true}',Lore:['{"text":"Ability: Slimey Pipebomb","color":"#A1FF8A"}','{"text":"Cooldown: 50 seconds","color":"#A1FF8A"}','{"text":"Damage: 4.5 Hearts (AoE)","color":"#A1FF8A"}','{"text":"------------------","color":"#A1FF8A"}','{"text":"Throw a sticky time-bomb that explodes after 3 seconds.","color":"#A1FF8A"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1010,ability:1b,captain3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1743421864,1716535540,-1243832534,76875103],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-206611492,-26457880,-1757535813,1289765238],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#229100","bold":true}',Lore:['{"text":"Passive: Sticky Situation","color":"#A1FF8A"}','{"text":"----------------------","color":"#A1FF8A"}','{"text":"When holding shift, you charge a high jump. Your spoon passively deals knockback to enemies.","color":"#A1FF8A"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1014,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 24
attribute @s minecraft:generic.movement_speed base set 0.118

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{captain1:1b}}}] actionbar ["",{"text":"Ability: Slime Landmine || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{captain2:1b}}}] actionbar ["",{"text":"Ability: Tactical Missile || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{captain3:1b}}}] actionbar ["",{"text":"Ability: Slimey Pipebomb || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{captain1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/captain1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{captain2:1b}}},scores={a2_sec=0,right_click=1..}] at @s run function raurus:classes/captain2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{captain3:1b}}},scores={a3_sec=0,right_click=1..}] at @s anchored eyes run function raurus:classes/captain3
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{captain3:1b}}}] at @s anchored eyes run particle happy_villager ^ ^ ^7 0 0 0 0 1 force @s

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{captain1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Slime Landmine"}'},Unbreakable:1b,CustomModelData:1011,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{captain2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Tactical Missile"}'},Unbreakable:1b,CustomModelData:1012,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{captain3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Slimey Pipebomb"}'},Unbreakable:1b,CustomModelData:1013,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Slime Landmine"}'},Unbreakable:1b,CustomModelData:1011,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Tactical Missile"}'},Unbreakable:1b,CustomModelData:1012,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Slimey Pipebomb"}'},Unbreakable:1b,CustomModelData:1013,HideFlags:4} 1

# Passive Ability
scoreboard players add @s[scores={sneak=1..}] counter 3
scoreboard players remove @s[scores={counter=1..,sneak=..0}] counter 5
execute if entity @s[scores={counter=5..35}] run function raurus:classes/captain01
execute if entity @s[scores={counter=36..65}] run function raurus:classes/captain02
execute if entity @s[scores={counter=65..}] run function raurus:classes/captain03
scoreboard players set @s[scores={jump=1..}] counter 0
