# Inventory - Uncloaked
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"\'Needly\'","color":"#912727","bold":true}',Lore:['{"text":"Ability: Dazzling Lunge","color":"#BD5757"}','{"text":"Cooldown: 10 seconds","color":"#BD5757"}','{"text":"Damage: 0","color":"#BD5757"}','{"text":"------------------","color":"#BD5757"}','{"text":"Lunge in the direction of your motion. If you jump forward, for example, you lunge into that direction.","color":"#BD5757"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:147,stinger1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;1499484758,-203865564,-2141723435,-335912141],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;493387702,1023298177,-1978029711,-1423751435],Slot:"mainhand"}]} 1

item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"\'Needly\'","color":"#912727","bold":true}',Lore:['{"text":"Ability: Bloom Sting","color":"#BD5757"}','{"text":"Cooldown: 15 seconds","color":"#BD5757"}','{"text":"Damage: 1 Heart","color":"#BD5757"}','{"text":"------------------","color":"#BD5757"}','{"text":"Drive a spike forward imbued with the bloom sting poison.","color":"#BD5757"}','{"text":"Bloom sting poison deals 0.5 hearts of damage each 3 seconds, and lasts for 12 seconds. At the end, the target blooms, becoming slowed for 10 seconds.","color":"#BD5757"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:147,stinger2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;2147172990,2017610214,-1288500653,160905480],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1496684883,-598716933,-1737460567,1894615205],Slot:"mainhand"}]} 1

item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"\'Needly\'","color":"#912727","bold":true}',Lore:['{"text":"Ability: Sporeform","color":"#BD5757"}','{"text":"Cooldown: 50 seconds","color":"#BD5757"}','{"text":"Damage: 1-5 hearts","color":"#BD5757"}','{"text":"------------------","color":"#BD5757"}','{"text":"You become an invulnerable spec of light. You can recast this ability 5 times, making you fly into the direction you are looking at for 8 blocks.","color":"#BD5757"}','{"text":"If you don\'t cast this ability for 3 seconds, it ends, and goes on normal cooldown. Intercepted targets take 1 heart of damage.","color":"#BD5757"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:147,stinger3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-1920000553,-1178056885,-1757133075,-1221094419],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1041336406,-1464776908,-1098005091,-90942018],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#BD5757","bold":true}',Lore:['{"text":"Ability: Flutterly","color":"#BD5757"}','{"text":"------------------","color":"#BD5757"}','{"text":"Your movement speed is very high. When you are out of combat for 2 seconds, your next attack is enhanced, and you have constant resistance I.","color":"#BD5757"}','{"text":"","color":"#BD5757"}']},HideFlags:4,Unbreakable:1b,CustomModelData:4,clean:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-1673900732,-406696789,-2084626890,1257201255],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1714351060,-715373455,-1521802668,988800198],Slot:"mainhand"}]} 1

# Attributes
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.movement_speed base set 0.156

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{stinger1:1b}}}] actionbar ["",{"text":"Ability: Dazzling Lunge || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true}]
title @s[nbt={SelectedItem:{tag:{stinger2:1b}}}] actionbar ["",{"text":"Ability: Bloom Sting || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{stinger3:1b}}}] actionbar ["",{"text":"Ability: Sporeform || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
tag @s[scores={right_click=1..}] add use_ability
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{stinger1:1b}}},scores={a1_sec=0}] at @s run function raurus:classes/stinger1
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{stinger2:1b}}},scores={a2_sec=0}] at @s run function raurus:classes/stinger2
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{stinger3:1b}}},scores={a3_sec=0}] at @s run function raurus:classes/stinger3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{stinger1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Dazzling Lunge"}'},Unbreakable:1b,CustomModelData:1,HideFlags:4,Count:1b} 1
item replace entity @s[nbt={SelectedItem:{tag:{stinger2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Bloom Sting"}'},Unbreakable:1b,CustomModelData:2,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{stinger3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Sporeform"}'},Unbreakable:1b,CustomModelData:3,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Dazzling Lunge"}'},Unbreakable:1b,CustomModelData:1,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Bloom Sting"}'},Unbreakable:1b,CustomModelData:2,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Sporeform"}'},Unbreakable:1b,CustomModelData:3,HideFlags:4} 1

