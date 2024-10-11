# Inventory
item replace entity @s hotbar.0 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Crystal Staff","color":"#0036FF","bold":true}',Lore:['{"text":"Ability: Magical Turret","color":"#6F8EFF"}','{"text":"Cooldown: 1 second","color":"#6F8EFF"}','{"text":"Damage: 1 Heart","color":"#6F8EFF"}','{"text":"------------------","color":"#6F8EFF"}','{"text":"Send a pellet that moves forward. If the pellet hits an enemy, it continues propagating, stops, and then travels again, targetting the nearest enemy within 9.5 blocks.","color":"#6F8EFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1056,summoner1:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-772367853,-1191228189,-1697898978,940194694],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;1873056737,-243184821,-1360332876,1367599057],Slot:"mainhand"}]} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Crystal Staff","color":"#0036FF","bold":true}',Lore:['{"text":"Ability: Rune-away","color":"#6F8EFF"}','{"text":"Cooldown: 0 seconds","color":"#6F8EFF"}','{"text":"Damage: 2.5 Hearts per shot, 0.3 shots per second","color":"#6F8EFF"}','{"text":"------------------","color":"#6F8EFF"}','{"text":"Spawn a magical turret that targets enemies. Takes 7 seconds to deploy. You may have 3 turrets at once.","color":"#6F8EFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1056,summoner2:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-45635724,-545832545,-1236427486,1737257722],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;505462229,-1935457945,-1194241835,2104761107],Slot:"mainhand"}]} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{ability:1b,display:{Name:'{"text":"Crystal Staff","color":"#0036FF","bold":true}',Lore:['{"text":"Ability: Arcane Artillery","color":"#6F8EFF"}','{"text":"Cooldown: 60 seconds","color":"#6F8EFF"}','{"text":"Damage: 3 Hearts per shot (0.5 shots per second)","color":"#6F8EFF"}','{"text":"Duration: 15 seconds","color":"#6F8EFF"}','{"text":"------------------","color":"#6F8EFF"}','{"text":"Deploy a magical turret that hits targets from above.","color":"#6F8EFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1056,summoner3:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-786577352,-1355395338,-1836697941,1163417266],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-2140141981,1181042551,-1163896399,-571780259],Slot:"mainhand"}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Passive Ability","color":"#0036FF","bold":true}',Lore:['{"text":"Passive: Pristine Doctrine","color":"#6F8EFF"}','{"text":"----------------------","color":"#6F8EFF"}','{"text":"When you stand near team owned turrets, you gain a small speed and resistance boost, as well as enhancing their damage by 25%.","color":"#6F8EFF"}']},HideFlags:4,Unbreakable:1b,CustomModelData:1060,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 18
attribute @s minecraft:generic.movement_speed base set 0.125

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{summoner2:1b}}}] actionbar ["",{"text":"Ability: Magical Turret || Active Turrets: ","bold":true},{"score":{"name":"@s","objective":"time"},"bold":true}]
title @s[nbt={SelectedItem:{tag:{summoner1:1b}}}] actionbar ["",{"text":"Ability: Living Mana || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{summoner3:1b}}}] actionbar ["",{"text":"Ability: Arcane Artillery || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
tag @s[scores={right_click=1..}] add use_ability
execute as @e[type=interaction,tag=summoner_interaction] on target if entity @s[scores={class=12}] run tag @s add use_ability
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{summoner2:1b}}},scores={a2_sec=0}] at @s unless entity @e[type=marker,distance=..1.5,tag=summoner_turret] run function raurus:classes/summoner1
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{summoner1:1b}}},scores={a2_sec=0}] at @s run function raurus:classes/summoner1_rework
execute as @s[tag=use_ability,tag=can_use,nbt={SelectedItem:{tag:{summoner3:1b}}},scores={a3_sec=0}] at @s run function raurus:classes/summoner3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{summoner1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Magical Turret"}'},Unbreakable:1b,CustomModelData:1057,HideFlags:4,Count:1b} 1
item replace entity @s[nbt={SelectedItem:{tag:{summoner2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Living Mana"}'},Unbreakable:1b,CustomModelData:1058,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{summoner3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Arcane Artillery"}'},Unbreakable:1b,CustomModelData:1059,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Living Mana"}'},Unbreakable:1b,CustomModelData:1057,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Magical Turret"}'},Unbreakable:1b,CustomModelData:1058,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Arcane Artillery"}'},Unbreakable:1b,CustomModelData:1059,HideFlags:4} 1

# ABILITY 1
scoreboard players set @s time 0

# Ability 2 - Die
execute if entity @s[scores={deaths=1..}] run function raurus:classes/summoner_kill

# PASSIVE ABILITY - OLD
#execute if entity @s[tag=can_use,nbt={SelectedItem:{tag:{ability:1b}}}] at @s anchored eyes unless entity @e[type=interaction,tag=summoner_interaction,distance=..4] run summon interaction ~ ~ ~ {width:1.5f,height:0.2f,Tags:["summoner_interaction"]}
#execute if entity @s[tag=can_use,nbt={SelectedItem:{tag:{ability:1b}}}] as @e[type=interaction,tag=summoner_interaction,limit=1,sort=nearest] run tp ~ ~ ~
#execute if entity @s[tag=can_use,nbt={SelectedItem:{tag:{ability:1b}}},scores={counter=1}] run function raurus:classes/summoner0
