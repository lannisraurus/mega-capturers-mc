# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Poisonous Blade","color":"#AED800","bold":true}',Lore:['{"text":"Ability: Overclock","color":"#E8FF67"}','{"text":"Cooldown: 20 second","color":"#E8FF67"}','{"text":"Damage: 0","color":"#E8FF67"}','{"text":"------------------","color":"#E8FF67"}','{"text":"Make yourself move at maximum speed for ~3 seconds.","color":"#E8FF67"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1015,machine1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-772367853,-1191228189,-1697898978,940194694],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1873056737,-243184821,-1360332876,1367599057],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Poisonous Blade","color":"#AED800","bold":true}',Lore:['{"text":"Ability: Stasis EMP","color":"#E8FF67"}','{"text":"Cooldown: 40 seconds","color":"#E8FF67"}','{"text":"Damage: 0","color":"#E8FF67"}','{"text":"------------------","color":"#E8FF67"}','{"text":"Charge up for 1.5 seconds, then let out a stasis shockwave that slows all enemies, and regenerates a bit of your health.","color":"#E8FF67"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1015,machine2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-45635724,-545832545,-1236427486,1737257722],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;505462229,-1935457945,-1194241835,2104761107],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Poisonous Blade","color":"#AED800","bold":true}',Lore:['{"text":"Ability: Necrotic Veil","color":"#E8FF67"}','{"text":"Cooldown: 60 seconds","color":"#E8FF67"}','{"text":"Damage: Poison I around, Wither I on hit.","color":"#E8FF67"}','{"text":"------------------","color":"#E8FF67"}','{"text":"Surround yourself with a poisonous aura, and empower your sword with a necrotic wither for 10 seconds.","color":"#E8FF67"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1015,machine3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-786577352,-1355395338,-1836697941,1163417266],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2140141981,1181042551,-1163896399,-571780259],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#AED800","bold":true}',Lore:['{"text":"Passive: Oil and Poison","color":"#E8FF67"}','{"text":"----------------------","color":"#E8FF67"}','{"text":"As you walk and run, you become progressively faster. Your main weapon deals poison damage.","color":"#E8FF67"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1019,clean:1b} 1
# Attributes
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.movement_speed base set 0.122

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{machine1:1b}}}] actionbar ["",{"text":"Ability: Overclock || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{machine2:1b}}}] actionbar ["",{"text":"Ability: Stasis EMP || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{machine3:1b}}}] actionbar ["",{"text":"Ability: Necrotic Veil || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{machine1:1b}}},scores={a1_sec=0,right_click=1..}] at @s run function raurus:classes/machine1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{machine2:1b}}},scores={a2_sec=0,right_click=1..}] at @s run function raurus:classes/machine2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{machine3:1b}}},scores={a3_sec=0,right_click=1..}] at @s run function raurus:classes/machine3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{machine1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Overclock"}'},Unbreakable:1b,CustomModelData:1016,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{machine2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Stasis EMP"}'},Unbreakable:1b,CustomModelData:1017,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{machine3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Necrotic Veil"}'},Unbreakable:1b,CustomModelData:1018,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Overclock"}'},Unbreakable:1b,CustomModelData:1016,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Stasis EMP"}'},Unbreakable:1b,CustomModelData:1017,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Necrotic Veil"}'},Unbreakable:1b,CustomModelData:1018,HideFlags:4} 1

# Passive Ability - Speedup
scoreboard players set @s[scores={counter=..0}] counter 0

scoreboard players add @s[scores={walk=1..}] counter 7
scoreboard players add @s[scores={run=1..}] counter 7
scoreboard players add @s[scores={jump=1..}] counter 15

scoreboard players remove @s[scores={counter=1..}] counter 4

execute if entity @s[scores={counter=40..100}] run function raurus:classes/machine01
execute if entity @s[scores={counter=101..200}] run function raurus:classes/machine02
execute if entity @s[scores={counter=201..300}] run function raurus:classes/machine03
execute if entity @s[scores={counter=301..400}] run function raurus:classes/machine04
execute if entity @s[scores={counter=401..}] run function raurus:classes/machine05

# Passive Ability - Poison
execute if entity @s[scores={deal_damage=1..}] anchored eyes positioned ^ ^ ^1.5 run function raurus:classes/machine0

# Ability 2
execute if entity @s[scores={time=1..}] run function raurus:abilities/machine2
execute if entity @s[scores={time=1}] run function raurus:abilities/machine2explode

# Ability 3
execute if entity @s[scores={time2=1..}] run function raurus:abilities/machine3
