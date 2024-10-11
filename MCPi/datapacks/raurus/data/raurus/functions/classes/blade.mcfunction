# Inventory - Uncloaked
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Blade of the Rising Moon","color":"#8059B3","bold":true}',Lore:['{"text":"Ability: Penitence","color":"#AE7EDE"}','{"text":"Cooldown: 25 seconds","color":"#AE7EDE"}','{"text":"Damage: 0","color":"#AE7EDE"}','{"text":"------------------","color":"#AE7EDE"}','{"text":"Telport to the nearest enemy within 10 blocks. If you kill someone in 6 seconds, the cooldown resets back to 0.","color":"#AE7EDE"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1087,blade1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1499484758,-203865564,-2141723435,-335912141],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;493387702,1023298177,-1978029711,-1423751435],Slot:"mainhand"}]} 1

item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Blade of the Rising Moon","color":"#8059B3","bold":true}',Lore:['{"text":"Ability: Blackbody Parry","color":"#AE7EDE"}','{"text":"Cooldown: 15 seconds","color":"#AE7EDE"}','{"text":"Damage: 2 Hearts","color":"#AE7EDE"}','{"text":"------------------","color":"#AE7EDE"}','{"text":"Become immobile and invulnerable for 0.5 seconds; if you take damage during that period,","color":"#AE7EDE"}','{"text":"you deal 2 hearts damage to all nearby enemies. If you don\'t take damage, you are slowed and gain mining fatigue.","color":"#AE7EDE"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1087,blade2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;2147172990,2017610214,-1288500653,160905480],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1496684883,-598716933,-1737460567,1894615205],Slot:"mainhand"}]} 1

item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"Blade of the Rising Moon","color":"#8059B3","bold":true}',Lore:['{"text":"Ability: Moonrising Execution","color":"#AE7EDE"}','{"text":"Cooldown: 60 seconds","color":"#AE7EDE"}','{"text":"Damage: 5 Hearts","color":"#AE7EDE"}','{"text":"------------------","color":"#AE7EDE"}','{"text":"Deal 5 hearts of damage in a 3 block radius, AoE.","color":"#AE7EDE"}']},HideFlags:4,Unbreakable:1b,ability:1b,CustomModelData:1087,blade3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1920000553,-1178056885,-1757133075,-1221094419],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1041336406,-1464776908,-1098005091,-90942018],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#8059B3","bold":true}',Lore:['{"text":"Ability: Dawning Call","color":"#AE7EDE"}','{"text":"------------------","color":"#AE7EDE"}','{"text":"If you hold shift for 2.5 seconds, you will teleport to the nearest ally. You cannot attack while channeling.","color":"#AE7EDE"}','{"text":"","color":"#AE7EDE"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1091,clean:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-1673900732,-406696789,-2084626890,1257201255],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1714351060,-715373455,-1521802668,988800198],Slot:"mainhand"}]} 1

# Attributes
attribute @s minecraft:generic.max_health base set 16
attribute @s minecraft:generic.movement_speed base set 0.144

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{blade1:1b}}}] actionbar ["",{"text":"Ability: Penitence || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true}]
title @s[nbt={SelectedItem:{tag:{blade2:1b}}}] actionbar ["",{"text":"Ability: Blackbody Parry || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{blade3:1b}}}] actionbar ["",{"text":"Ability: Moonrising Execution || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
tag @s[scores={right_click=1..}] add use_ability
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{blade1:1b}}},scores={a1_sec=0}] at @s run function raurus:classes/blade1
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{blade2:1b}}},scores={a2_sec=0}] at @s run function raurus:classes/blade2
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{blade3:1b}}},scores={a3_sec=0}] at @s run function raurus:classes/blade3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{blade1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Penitence"}'},Unbreakable:1b,CustomModelData:1088,HideFlags:4,Count:1b} 1
item replace entity @s[nbt={SelectedItem:{tag:{blade2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Blackbody Parry"}'},Unbreakable:1b,CustomModelData:1089,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{blade3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Moonrising Execution"}'},Unbreakable:1b,CustomModelData:1090,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Penitence"}'},Unbreakable:1b,CustomModelData:1088,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Blackbody Parry"}'},Unbreakable:1b,CustomModelData:1089,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Moonrising Execution"}'},Unbreakable:1b,CustomModelData:1090,HideFlags:4} 1

# Ability 1
scoreboard players remove @s[scores={time=1..}] time 1
execute if entity @s[scores={time=118}] run function raurus:abilities/blade1_effects
execute if entity @s[scores={time=1..}] run particle dust 0.5 0 0.6 0.7 ~ ~1 ~ 0.3 0.3 0.3 0 5 force
execute if entity @s[scores={time=1..,kill=1..}] run function raurus:abilities/blade1_reset
execute as @s[nbt={SelectedItem:{tag:{blade1:1b}}}] anchored eyes run particle dust 0.5 0 0.6 1.2 ^ ^ ^10 0 0 0 0 4 force @s

# Ability 2
execute if entity @s[scores={time2=1..}] run function raurus:abilities/blade2

# Passive
scoreboard players set @s[scores={counter=..0}] counter 0
scoreboard players add @s[scores={sneak=1..}] counter 1
scoreboard players set @s[scores={sneak=..0}] counter 0
execute if entity @s[scores={counter=1..}] run function raurus:classes/blade0
