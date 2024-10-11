# Inventory
item replace entity @s inventory.0 with arrow 1

item replace entity @s[scores={a1_sec=1..}] hotbar.0 with bow{CustomModelData:1030,display:{Name:'{"text":"Cathedral Bow","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Force Blast (Shoot)","color":"#CCCCCC"}','{"text":"Cooldown: 3 seconds","color":"#CCCCCC"}','{"text":"------------------","color":"#CCCCCC"}','{"text":"Your arrow deals immense knockback.","color":"#CCCCCC"}']},HideFlags:5,Unbreakable:1b,ability:1b,archer1:1b,Enchantments:[{id:"minecraft:punch",lvl:0s}]} 1
item replace entity @s[scores={a1_sec=..0}] hotbar.0 with bow{CustomModelData:1030,display:{Name:'{"text":"Cathedral Bow","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Force Blast (Shoot)","color":"#CCCCCC"}','{"text":"Cooldown: 3 seconds","color":"#CCCCCC"}','{"text":"------------------","color":"#CCCCCC"}','{"text":"Your arrow deals immense knockback.","color":"#CCCCCC"}']},HideFlags:5,Unbreakable:1b,ability:1b,archer1:1b,archer1ac:1b,Enchantments:[{id:"minecraft:punch",lvl:3s}]} 1

item replace entity @s hotbar.1 with bow{CustomModelData:1030,display:{Name:'{"text":"Cathedral Bow","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Exploding Arrow (Shoot)","color":"#CCCCCC"}','{"text":"Cooldown: 10 seconds","color":"#CCCCCC"}','{"text":"------------------","color":"#CCCCCC"}','{"text":"Shoot a piercing arrow that upon ground impact, explodes, dealing AoE damage (4 Hearts)","color":"#CCCCCC"}']},HideFlags:5,Unbreakable:1b,ability:1b,archer2:1b,Enchantments:[{id:"minecraft:punch",lvl:0s}]} 1
item replace entity @s hotbar.2 with bow{CustomModelData:1030,display:{Name:'{"text":"Cathedral Bow","color":"#FFFFFF","bold":true}',Lore:['{"text":"Ability: Divine Smite (Shoot)","color":"#CCCCCC"}','{"text":"Cooldown: 45 seconds","color":"#CCCCCC"}','{"text":"------------------","color":"#CCCCCC"}','{"text":"Shoot a golden arrow that sticks to the nearest target, snaring them, smiting them (5 Hearts) and making them glow for 1 minute.","color":"#CCCCCC"}']},HideFlags:5,Unbreakable:1b,ability:1b,archer3:1b,Enchantments:[{id:"minecraft:punch",lvl:0s}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:1034,display:{Name:'{"text":"Passive Ability","color":"#FFFFFF","bold":true}',Lore:['{"text":"Passive: Sanctuary","color":"#CCCCCC"}','{"text":"------------------","color":"#CCCCCC"}','{"text":"Enemies around you are slowed down","color":"#CCCCCC"}']},Unbreakable:1b,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.movement_speed base set 0.119

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{archer1:1b}}}] actionbar ["",{"text":"Ability: Force Blast || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{archer2:1b}}}] actionbar ["",{"text":"Ability: Exploding Arrow || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{archer3:1b}}}] actionbar ["",{"text":"Ability: Divine Smite || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}

# Use Abilities
execute if entity @s[team=red,scores={shoot=1..}] run tag @e[type=arrow,limit=1,sort=nearest] add red
execute if entity @s[team=blue,scores={shoot=1..}] run tag @e[type=arrow,limit=1,sort=nearest] add blue

execute as @s[tag=can_use,nbt={SelectedItem:{tag:{archer1ac:1b}}},scores={a1_sec=0,shoot=1..}] at @s run function raurus:classes/archer1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{archer2:1b}}},scores={a2_sec=0,shoot=1..}] at @s run function raurus:classes/archer2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{archer3:1b}}},scores={a3_sec=0,shoot=1..}] at @s run function raurus:classes/archer3

# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{archer1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Force Blast"}'},Unbreakable:1b,CustomModelData:1031,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{archer2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Exploding Arrow"}'},Unbreakable:1b,CustomModelData:1032,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{archer3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Divine Smite"}'},Unbreakable:1b,CustomModelData:1033,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Force Blast"}'},Unbreakable:1b,CustomModelData:1031,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Exploding Arrow"}'},Unbreakable:1b,CustomModelData:1032,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Divine Smite"}'},Unbreakable:1b,CustomModelData:1033,HideFlags:4} 1


# Effects
particle enchant ~ ~ ~ 0.5 0.2 0.5 0 1 force
execute if entity @s[tag=!sfx1,nbt={SelectedItem:{tag:{archer1ac:1b}}}] run playsound minecraft:block.respawn_anchor.charge ambient @a[distance=..10] ~ ~ ~ 1 1
execute if entity @s[tag=!sfx1,nbt={SelectedItem:{tag:{archer1ac:1b}}}] run tag @s add sfx1
execute if entity @s[scores={a1_sec=1..}] run tag @s remove sfx1

# Passive
execute if entity @s[team=red] run effect give @e[tag=!slow_immune,team=blue,distance=..3] slowness 1 1 true
execute if entity @s[team=red] run effect give @e[tag=!slow_immune,team=blue,distance=..7] slowness 1 0 true
execute if entity @s[team=blue] run effect give @e[tag=!slow_immune,team=red,distance=..3] slowness 1 1 true
execute if entity @s[team=blue] run effect give @e[tag=!slow_immune,team=red,distance=..7] slowness 1 0 true
