kill @e[tag=npc]

execute positioned 64 67 64 run summon marker ~ ~ ~ {Tags:["npc","tower"]}
execute positioned 12 68 12 run summon marker ~ ~ ~ {Tags:["npc","tower"]}
execute positioned 115 68 115 run summon marker ~ ~ ~ {Tags:["npc","tower"]}

execute positioned 64 -50.99 54 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","ready"]}
execute if score start_time counter matches 201.. positioned 64 -49.3 54 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc","ready_text"],text:'{"text":"Right-Click to join/leave queue","color":"#36DDFF","bold":true}'}
execute if score start_time counter matches ..200 positioned 64 -49.3 54 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc","ready_text"],text:'{"text":"Game on-going, please wait...","color":"#36DDFF","bold":true}'}

execute positioned 57 -50.99 57 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","spectate"]}
execute positioned 57 -49.3 57 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc","spectate_text"],text:'{"text":"Spectate Match/See Map","color":"gray","bold":true}'}


execute positioned 71 -51 73 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","class0"]}
execute positioned 71 -48.8 73 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Remove Class","color":"red","bold":true}'}
execute positioned 71 -51 73 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Tags:["npc"],Pose:{LeftArm:[0f,30f,335f],RightArm:[0f,0f,148f],LeftLeg:[12f,8f,353f],RightLeg:[0f,0f,357f],Head:[354f,0f,0f]},DisabledSlots:4144959,Rotation:[150F,0F]}


execute positioned 69 -51 74 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","class","random_class"]}
execute positioned 69 -48.8 74 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Random Class","color":"green","bold":true}'}
execute positioned 69 -51 74 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-263118006,-1942141483,-1904681102,-1647256948],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjcwNWZkOTRhMGM0MzE5MjdmYjRlNjM5YjBmY2ZiNDk3MTdlNDEyMjg1YTAyYjQzOWUwMTEyZGEyMmIyZTJlYyJ9fX0="}]}}}}],NoGravity:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Tags:["npc"],Pose:{LeftArm:[0f,30f,335f],RightArm:[0f,0f,148f],LeftLeg:[12f,8f,353f],RightLeg:[0f,0f,357f],Head:[354f,0f,0f]},DisabledSlots:4144959,Rotation:[150F,0F]}


execute positioned 64 -49.4 77 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Character Selection\\n(Right click)\\n\\nRight-click to use abilities\\n(in-game only)","color":"#36DDFF","bold":true}'}


execute positioned 67 -48.5 78 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Bluegem\\nSorcerer","color":"#6D38FF","bold":true}'}
execute positioned 67 -48.5 80 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Shadowfallen\\nAssassin","color":"#FFFFFF","bold":true}'}
execute positioned 67 -48.5 82 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Slime\\nCaptain","color":"#00FF77","bold":true}'}
execute positioned 67 -48.5 84 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Biomechanical\\nMachine","color":"#B3FF00","bold":true}'}
execute positioned 67 -48.5 86 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Silver\\nGolem","color":"#CCCCCC","bold":true}'}

execute positioned 61 -48.5 78 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Goldplated\\nGuardian","color":"#FFC300","bold":true}'}
execute positioned 61 -48.5 80 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Cathedral\\nArcher","color":"#E0E0E0","bold":true}'}
execute positioned 61 -48.5 82 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Rotblight\\nHunter","color":"#C300FF","bold":true}'}
execute positioned 61 -48.5 84 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Soulwarden\\nKnight","color":"#36DDFF","bold":true}'}
execute positioned 61 -48.5 86 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Bloodcurse\\nPriestess","color":"#FF0000","bold":true}'}






execute positioned 67 -51 78 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1000}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5850496},Trim:{material:"minecraft:gold",pattern:"minecraft:vex"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5850496},Trim:{material:"minecraft:gold",pattern:"minecraft:vex"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5850496},Trim:{material:"minecraft:gold",pattern:"minecraft:vex"}}},{id:"minecraft:player_head",Count:1b,tag:{CustomModelData:14,SkullOwner:{Id:[I;-923772101,-799716957,-1139664562,57847253],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YyODE5Mjk1YzAxZTEyYTI1YTRjYWJjNzYwYTY5MDBjODM0MDFhZWQxZTI0N2Q0NGI2YjkyOTJkYzZjMTBkYSJ9fX0="}]}}}}]}

execute positioned 67 -51 80 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1005}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;408899151,485180870,-1528029330,1152477010],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZiZGVjZjMyYjc0OTVmODk1NmNmOWM5ZTA2ZWRiYjA2NjJiMTQxOTM2ZDRjZWFkMjVmNDg2MTQ0YjAzYTQzYiJ9fX0="}]}}}}]}

execute positioned 67 -51 82 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1010}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4206888}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1519131}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:939814}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1166117680,832063832,-1927096391,1830118886],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODA2NzhkZDIyOWE1NTVhNDZmMTZiMTdhNjdlMzJlODM5YWNjMWUyM2JkNmNkNWVjMDk1MmFiMTJiOTdkOWY0OCJ9fX0="}]}}}}]}

execute positioned 67 -51 84 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1015}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8421504},Trim:{material:"minecraft:emerald",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8421504},Trim:{material:"minecraft:emerald",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8421504},Trim:{material:"minecraft:emerald",pattern:"minecraft:sentry"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1446024813,-1985131466,-1752356023,-1704787778],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWRlNjQ2MGZkNDZlNTFiNWJiMTczNmMyMjI0NGIzZTdjZDhiNzg4MzFkMWIxYzMyMjkwZDYzNDMzYjBmZDU2OCJ9fX0="}]}}}}]}

execute positioned 67 -51 86 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1020}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"minecraft:ward"}}},{id:"minecraft:iron_leggings",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"minecraft:ward"}}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Trim:{material:"minecraft:iron",pattern:"minecraft:ward"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1946500748,-812367735,-1164814450,934586348],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFkZDYyOGNkYzhlOGQ1NmIxMmJmYmVlYTMzNzg2MGYwZjYwY2MyMTY4YzlmMWJlYmJlNGRmY2RmNmZkMmE0NiJ9fX0="}]}}}}]}

execute positioned 61 -51 78 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1025}},{}],ArmorItems:[{id:"minecraft:golden_boots",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:dune"}}},{id:"minecraft:golden_leggings",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:dune"}}},{id:"minecraft:golden_chestplate",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:dune"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;850866170,-586399639,-1394201600,-136154240],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWEwNmMxY2ZiMDliM2ZkMzMzOTFmZTM4ZjliZDU4Yjg4NDQyNjQxZTM0OTIwNzJhMWZmYWExZjliYmY4MmJhNCJ9fX0="}]}}}}]}

execute positioned 61 -51 80 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:1030}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14737632},Trim:{material:"minecraft:quartz",pattern:"minecraft:wild"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14737632},Trim:{material:"minecraft:quartz",pattern:"minecraft:wild"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14737632},Trim:{material:"minecraft:quartz",pattern:"minecraft:wild"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1921857112,-1611119542,-1475419629,-1535084289],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTAzNGFiZjAyNmJiMGI2NTcxMjMxMjY1NDQyYzUzODI3M2E0MjE5OTUxMWU3ZjIzZjc1MWI4ZTM4MWE2ZTM4ZSJ9fX0="}]}}}}]}

execute positioned 61 -51 82 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:1035}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4654906}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4654906}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4654906}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;304520043,349980876,-2123071319,-1213091813],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg4ZWI0YjRjYWZhMWYzY2JlMDZjZjBlOTAzMGFkNzVjMjhiYjUwMGU4MDBiNjE5NmJkZjMyOTg2NWE1YzcxOCJ9fX0="}]}}}}]}

execute positioned 61 -51 84 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1040}},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:diamond",pattern:"minecraft:spire"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:diamond",pattern:"minecraft:spire"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:diamond",pattern:"minecraft:spire"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1156881934,295845973,-1829318107,-1434120577],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmI2MDZjOTljYzJlNDBhMDU4ZmNiOWNmOWJmNGYwZjM4ZWIxYTZhMzczYTRlYzU3YmEzZWNmODExMGU2ODBlOSJ9fX0="}]}}}}]}

execute positioned 61 -51 86 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1045}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3155751},Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3155751},Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3155751},Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;366263051,1411990450,-2027829490,1498233910],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc0NDdmZDFlOWM2M2ExMjI4NWQwNDYwMTc3ZmVlYTI2MTJmNGRlZDIzMGQyNzI1OGQxMWM1NzQ3NDJhMzhiMiJ9fX0="}]}}}}]}






execute positioned 67 -51 88 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1056}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3949173},Trim:{material:"minecraft:netherite",pattern:"minecraft:raiser"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3949173},Trim:{material:"minecraft:netherite",pattern:"minecraft:raiser"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3949173},Trim:{material:"minecraft:netherite",pattern:"minecraft:raiser"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1584007882,1227964649,-1516820939,1814374477],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQ3ODA2YTU3NDU4NTY0ZjM3YTk1MTdlMTRlZDliMGZiZDcyNmJkM2Y3MzA3ODE1MjRmODhjNTkwOWUxZTZmYyJ9fX0="}]}}}}]}

execute positioned 61 -51 88 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1051}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777205},Trim:{material:"minecraft:gold",pattern:"minecraft:wayfinder"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2500128}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777205},Trim:{material:"minecraft:gold",pattern:"minecraft:shaper"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1695044723,1123108819,-1249274408,1589985401],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQ3N2RhMmVlOTMzMWViNDBjY2RkOGNmY2MwY2MxOWY0NzNhYmRmNGM2MWFkNzk1OGJkYzhkYjk0YzUxM2MxMSJ9fX0="}]}}}}]}

execute positioned 67 -51 90 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1061}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16112816},Trim:{material:"minecraft:gold",pattern:"minecraft:eye"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16112816},Trim:{material:"minecraft:gold",pattern:"minecraft:eye"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16112816},Trim:{material:"minecraft:gold",pattern:"minecraft:eye"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1837667432,-1388362102,-2143913502,939769621],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFlZTZkMmZkOTRmZThhNTZjYWQwZGEwZWZjODE4OGVjMzU5MzRmMjI1MzMwZmUwNGQ0NjU1ZGNiYWRjMDY3NyJ9fX0="}]}}}}]}


# execute positioned 61 -45 80 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:11}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3675915}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2903346}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2903346},Trim:{material:"minecraft:diamond",pattern:"minecraft:wild"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-718442134,-1041020512,-1449834345,663058914],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2RiZGQwYTIxMjA2NGYwMzkyNjdlYzNiYTZlMzQ1YmRkMDZlYjM2ZDkyNGQ4ZmExNjU4NjE2MWYxZThjMTlmZiJ9fX0="}]}}}}]}

execute positioned 67 -51 88 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class12"]}

execute positioned 67 -48.5 88 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Crystal\\nSummoner","color":"#003AFF","bold":true}'}


execute positioned 61 -51 88 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class13"]}

execute positioned 61 -48.5 88 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Dawning\\nDuelist","color":"#FFCC0F","bold":true}'}

execute positioned 67 -51 90 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class14"]}

execute positioned 67 -48.5 90 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Arid\\nPhantom","color":"#FFF1BD","bold":true}'}


execute positioned 67 -51 92 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class15"]}
execute positioned 67 -48.5 92 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Hellfire\\nWarlock","color":"dark_red","bold":true}'}
execute positioned 67 -51 92 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1067}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12411708},Trim:{material:"minecraft:netherite",pattern:"minecraft:tide"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14570779},Trim:{material:"minecraft:netherite",pattern:"minecraft:tide"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16729088},Trim:{material:"minecraft:netherite",pattern:"minecraft:tide"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1837667432,-1388362102,-2143913502,939769621],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODgyYmNlNmMyMDExNTRkM2M5M2EzYTQ1YTJlZDgxZGU2MWYxNGMwNmZlOTRmOWJjMGRjZGJiYmYwNWI2MGE3OSJ9fX0="}]}}}}]}



execute positioned 61 -51 90 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1072}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:985096}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16772589},Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14876672},Trim:{material:"minecraft:netherite",pattern:"minecraft:rib"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-718442134,-1041020512,-1449834345,663058914],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBhNzU3OGMyOGI0MTE0YzU5Y2Y3MTE1NzVjMTkyNjZlZDI0M2EzNTczN2RmMTE1ODE2ZDc0YWJkYzkzYzA5NSJ9fX0="}]}}}}]}
execute positioned 61 -51 90 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class16"]}
execute positioned 61 -48.5 90 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Corrupting\\nHeart","color":"red","bold":true}'}





execute positioned 61 -51 92 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1077}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3229778},Trim:{material:"minecraft:netherite",pattern:"minecraft:rib"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3229778},Trim:{material:"minecraft:netherite",pattern:"minecraft:rib"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3229778},Trim:{material:"minecraft:netherite",pattern:"minecraft:rib"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-718442134,-1041020512,-1449834345,663058914],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ExODczNWJlYTQ1YTQzM2Y3ZDdmY2JkMTFkZmUyMmI1NmUzM2IyOWRiM2M1YmMyZTUyNDQ4N2ZhYzExIn19fQ=="}]}}}}]}
execute positioned 61 -51 92 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class17"]}
execute positioned 61 -48.5 92 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Draconic\\nKin","color":"#65659E","bold":true}'}






execute positioned 67 -51 94 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class18"]}
execute positioned 67 -48.5 94 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Spellbound\\nAbjurer","color":"#5F00B3","bold":true}'}
execute positioned 67 -51 94 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1082}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6226099},Trim:{material:"minecraft:quartz",pattern:"minecraft:shaper"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6226099},Trim:{material:"minecraft:amethyst",pattern:"minecraft:spire"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6226099},Trim:{material:"minecraft:quartz",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1837667432,-1388362102,-2143913502,939769621],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTFkYWJmNzU4NWFlNDliZTM0ZDRlNGQ1ZmZmNmJkZmQ3ODRkYzYyY2ZhNzRhY2Q0MmViMmE2ZGI4OThkMGRiNiJ9fX0="}]}}}}]}





execute positioned 61 -51 94 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class19"]}
execute positioned 61 -48.5 94 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Dusk\\nBlade","color":"#473769","bold":true}'}
execute positioned 61 -51 94 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1087}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3286079},Trim:{material:"minecraft:netherite",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5129577}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4797535},Trim:{material:"minecraft:netherite",pattern:"minecraft:shaper"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1837667432,-1388362102,-2143913502,939769621],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWE2MjM1ZTRiNzdhNjkzZDgyNGYzYWU4NzM3MjMwNzQyOWM5NzRkODY1YTIyNzI3MDljNmQzZmJjZTYzY2E2MyJ9fX0="}]}}}}]}





execute positioned 67 -51 96 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class20"]}
execute positioned 67 -48.5 96 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Dazzling\\nStinger","color":"#BA6666","bold":true}'}
execute positioned 67 -51 96 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["npc"],DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:147}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9841708},Trim:{material:"minecraft:quartz",pattern:"minecraft:rib"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6698036}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9841708},Trim:{material:"minecraft:quartz",pattern:"minecraft:rib"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1837667432,-1388362102,-2143913502,939769621],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ5YzVjODI1MTBhZjNlODU2ZWMzYzk4YzcwYmQxZjZmNTFmZjgwNjQ3MTdkYjlmNDUwZDA2MWJmMGQ3OTZiYiJ9fX0="}]}}}}]}





execute positioned 67 -51 78 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class1"]}
execute positioned 67 -51 80 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class2"]}
execute positioned 67 -51 82 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class3"]}
execute positioned 67 -51 84 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class4"]}
execute positioned 67 -51 86 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class5"]}

execute positioned 61 -51 78 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class6"]}
execute positioned 61 -51 80 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class7"]}
execute positioned 61 -51 82 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class8"]}
execute positioned 61 -51 84 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class9"]}
execute positioned 61 -51 86 run summon interaction ~ ~ ~ {height:3f,Tags:["class","npc","class10"]}








execute positioned 54 -50 62 run summon armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["npc"],Pose:{LeftArm:[0f,0f,335f],RightArm:[226f,48f,0f],LeftLeg:[18f,10f,355f],RightLeg:[354f,8f,4f],Head:[347f,28f,0f]},DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Raurus"}}]}

execute positioned 54 -50 66 run summon armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["npc"],Pose:{LeftArm:[0f,0f,322f],RightArm:[0f,0f,18f],RightLeg:[0f,21f,0f],Head:[21f,0f,0f]},DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],ArmorItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"CWHexa"}}]}

execute positioned 54 -47.5 62 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Raurus\\n\\nCoding, Game Design","color":"#36DDFF","bold":true}'}
execute positioned 54 -47.5 66 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"CWHexa\\n\\nTextures, Building","color":"#36DDFF","bold":true}'}
execute positioned 56 -48.5 64 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Credits","color":"#36DDFF","bold":true}'}



execute positioned 72 -48.4 64 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc","red_wins"],text:'[{"text":"Red Team Wins: ","color":"#FF0000","bold":true},{"score":{"name":"@s","objective":"wins"},"color":"#FF0000"}]'}
execute positioned 72 -48.8 64 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc","blue_wins"],text:'[{"text":"Blue Team Wins: ","color":"#0088FF","bold":true},{"score":{"name":"@s","objective":"wins"},"color":"#0088FF"}]'}






execute positioned 71 -48 50 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Admin Room","color":"#92FF5C","bold":true}'}









######## TEST AREA
execute positioned 71 -51 57 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","go_to_test_area"]}
execute positioned 71 -49.3 57 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Testing Area","color":"gold","bold":true}'}



######## NETHER
execute in minecraft:the_nether positioned 80 65 80 run summon marker ~ ~ ~ {Tags:["npc","tower"]}
execute in minecraft:the_nether positioned 112 65 80 run summon marker ~ ~ ~ {Tags:["npc","tower"]}
execute in minecraft:the_nether positioned 80 65 112 run summon marker ~ ~ ~ {Tags:["npc","tower"]}
execute in minecraft:the_nether positioned 112 65 112 run summon marker ~ ~ ~ {Tags:["npc","tower"]}

execute in minecraft:the_nether positioned 64 66 64 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","go_to_lobby"]}
execute in minecraft:the_nether positioned 64 67 64 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Go back to lobby (Right-click)","color":"white","bold":true}'}

execute in minecraft:the_nether positioned 62 65 59 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","join_red"]}
execute in minecraft:the_nether positioned 62 66.6 59 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Join Red Team","color":"red","bold":true}'}

execute in minecraft:the_nether positioned 66 65 59 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","join_blue"]}
execute in minecraft:the_nether positioned 66 66.6 59 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Join Blue Team","color":"blue","bold":true}'}

execute in minecraft:the_nether positioned 64 68.5 58 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"You need to join a team for abilities to work.\\n(Right Click)","color":"white","bold":true}'}













execute positioned 55 -51 70 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","skin_switch"]}
execute positioned 55 -48.8 70 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Change Skin","color":"light_purple","bold":true}'}
execute positioned 55 -51 70 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Tags:["npc"],Pose:{LeftArm:[0f,30f,335f],RightArm:[0f,0f,148f],LeftLeg:[12f,8f,353f],RightLeg:[0f,0f,357f],Head:[354f,0f,0f]},DisabledSlots:4144959,Rotation:[-150F,0F]}




execute positioned 57 -51 72 run summon interaction ~ ~ ~ {height:2.4f,Tags:["npc","skin_pull"]}
execute positioned 57 -48.8 72 run summon text_display ~ ~ ~ {billboard:"center",Tags:["npc"],text:'{"text":"Buy Skins\\n(10 Wins)\\nPress [TAB] to view wins.","color":"light_purple","bold":true}'}
execute positioned 57 -51 72 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Tags:["npc"],Pose:{LeftArm:[0f,30f,335f],RightArm:[0f,0f,148f],LeftLeg:[12f,8f,353f],RightLeg:[0f,0f,357f],Head:[354f,0f,0f]},DisabledSlots:4144959,Rotation:[-150F,0F]}







summon text_display 59 -46.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Defender","color":"yellow","bold":true}'}

summon text_display 58 -46.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Healer","color":"green","bold":true}'}

summon text_display 57 -46.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Fighter","color":"#AA00FF","bold":true}'}


summon text_display 59 -47.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Capturer","color":"#DBAA56","bold":true}'}

summon text_display 58 -47.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Support","color":"aqua","bold":true}'}

summon text_display 57 -47.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Tank","color":"#FF80FB","bold":true}'}


summon text_display 59 -48.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Special","color":"gray","bold":true}'}

summon text_display 58 -48.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Mage","color":"#0066FF","bold":true}'}

summon text_display 57 -48.57 76.9 {Tags:["npc"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.12f,0.12f,0.12f]},text:'{"text":"Assassin","color":"dark_red","bold":true}'}
