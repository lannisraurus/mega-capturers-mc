# Inventory
item replace entity @s inventory.0 with arrow 1

item replace entity @s hotbar.0 with bow{CustomModelData:1035,display:{Name:'{"text":"Rotwood Bow","color":"#A800A8","bold":true}',Lore:['{"text":"Ability: Wither Wave (Shoot)","color":"#FF00FF"}','{"text":"Cooldown: 10 seconds","color":"#FF00FF"}','{"text":"------------------","color":"#FF00FF"}','{"text":"Send a wave of wither in front of you (Wither II).","color":"#FF00FF"}']},HideFlags:5,Unbreakable:1b,ability:1b,hunter1:1b,Enchantments:[{id:"minecraft:power",lvl:0s}]} 1
item replace entity @s hotbar.1 with bow{CustomModelData:1035,display:{Name:'{"text":"Rotwood Bow","color":"#A800A8","bold":true}',Lore:['{"text":"Ability: Necrotic Ride","color":"#FF00FF"}','{"text":"Cooldown: 10 seconds","color":"#FF00FF"}','{"text":"------------------","color":"#FF00FF"}','{"text":"You travel with the arrow you shoot.","color":"#FF00FF"}']},HideFlags:5,Unbreakable:1b,ability:1b,hunter2:1b,Enchantments:[{id:"minecraft:power",lvl:0s}]} 1
item replace entity @s hotbar.2 with bow{CustomModelData:1035,display:{Name:'{"text":"Rotwood Bow","color":"#A800A8","bold":true}',Lore:['{"text":"Ability: Eyeblight","color":"#FF00FF"}','{"text":"Cooldown: 60 seconds","color":"#FF00FF"}','{"text":"------------------","color":"#FF00FF"}','{"text":"Spawn a heavy black mist that blinds all enemies inside it.","color":"#FF00FF"}']},HideFlags:5,Unbreakable:1b,ability:1b,hunter3:1b,Enchantments:[{id:"minecraft:power",lvl:0s}]} 1

item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:1039,HideFlags:5,display:{Name:'{"text":"Passive Ability","color":"#A800A8","bold":true}',Lore:['{"text":"Passive: Doctrine of Decay","color":"#FF00FF"}','{"text":"------------------","color":"#FF00FF"}','{"text":"Your arrows, despite having a reduced range, deal more damage, ignore gravity, pierce targets and briefly blind them.","color":"#FF00FF"}']},Unbreakable:1b,clean:1b} 1

# Attributes
attribute @s minecraft:generic.max_health base set 16
attribute @s minecraft:generic.movement_speed base set 0.13

# Ability Text Indicators
title @s[nbt={SelectedItem:{tag:{hunter1:1b}}}] actionbar ["",{"text":"Ability: Wither Wave || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a1_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{hunter2:1b}}}] actionbar ["",{"text":"Ability: Necrotic Ride || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a2_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{hunter3:1b}}}] actionbar ["",{"text":"Ability: Eyeblight || Cooldown: ","bold":true},{"score":{"name":"@s","objective":"a3_sec"},"bold":true},{"text":" seconds","bold":true}]
title @s[nbt={SelectedItem:{tag:{clean:1b}}}] actionbar {"text":""}


# Passive
execute if entity @s[scores={shoot=1..}] as @e[type=arrow,limit=1,sort=nearest] run function raurus:classes/hunter0


# Use Abilities
execute if entity @s[team=red,scores={shoot=1..}] run tag @e[type=arrow,limit=1,sort=nearest] add red
execute if entity @s[team=blue,scores={shoot=1..}] run tag @e[type=arrow,limit=1,sort=nearest] add blue

execute as @s[tag=can_use,nbt={SelectedItem:{tag:{hunter1:1b}}},scores={a1_sec=0,shoot=1..}] at @s run function raurus:classes/hunter1
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{hunter2:1b}}},scores={a2_sec=0,shoot=1..}] at @s run function raurus:classes/hunter2
execute as @s[tag=can_use,nbt={SelectedItem:{tag:{hunter3:1b}}},scores={a3_sec=0,shoot=1..}] at @s run function raurus:classes/hunter3


# Ability Icon Indicators
item replace entity @s[nbt=!{SelectedItem:{tag:{ability:1b}}}] hotbar.5 with air 1
item replace entity @s[nbt={SelectedItem:{tag:{hunter1:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Wither Wave"}'},Unbreakable:1b,CustomModelData:1036,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{hunter2:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Necrotic Ride"}'},Unbreakable:1b,CustomModelData:1037,HideFlags:4} 1
item replace entity @s[nbt={SelectedItem:{tag:{hunter3:1b}}}] hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Eyeblight"}'},Unbreakable:1b,CustomModelData:1038,HideFlags:4} 1

item replace entity @s inventory.18 with carrot_on_a_stick{display:{Name:'{"text":"Wither Wave"}'},Unbreakable:1b,CustomModelData:1036,HideFlags:4} 1
item replace entity @s inventory.19 with carrot_on_a_stick{display:{Name:'{"text":"Necrotic Ride"}'},Unbreakable:1b,CustomModelData:1037,HideFlags:4} 1
item replace entity @s inventory.20 with carrot_on_a_stick{display:{Name:'{"text":"Eyeblight"}'},Unbreakable:1b,CustomModelData:1038,HideFlags:4} 1
