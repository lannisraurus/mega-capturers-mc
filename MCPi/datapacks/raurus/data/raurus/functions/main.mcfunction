# TEST AREA
execute in minecraft:the_nether run function raurus:test_area

# HURT TIME SCORE
execute as @a store result score @s hurt_time run data get entity @s HurtTime

# GO FROM TEST AREA TO LOBBY AND VICE VERSA
execute as @e[type=interaction,tag=go_to_lobby] on target run function raurus:go_to_lobby
execute as @e[type=interaction,tag=go_to_test_area] on target run function raurus:go_to_test_area

# TEST AREA JOIN TEAMS
execute as @e[type=interaction,tag=join_red] on target run team join red @s[tag=!ready]
execute as @e[type=interaction,tag=join_blue] on target run team join blue @s[tag=!ready]

# TEST AREA EFFECTS
execute in minecraft:the_nether positioned 64 64 64 as @a[distance=..10] run effect give @s instant_health 1 100
execute in minecraft:the_nether positioned 64 64 64 as @a[distance=..10] run effect give @s resistance 1 100

# USING ABILITIES
tag @a[tag=in_game] add can_use
execute in minecraft:the_nether positioned 64 64 64 run tag @a[distance=0..] add can_use

# LOBBY EFFECTS
#execute positioned 64 -51 89 run effect give @a[distance=..1] levitation 1 20 true
#execute positioned 64 -51 89 run particle end_rod ~ ~ ~ 0.2 0.1 0.2 0 2 force

# WELCOME MESSAGE
execute as @a[scores={leave=1..}] at @s run function raurus:welcome_message

# FIRST TIME JOINING
execute as @a[tag=!welcome] at @s run function raurus:welcome

# HUNGER
effect give @a minecraft:saturation infinite 100 true

# ITEMS AND UNDESIRED ENTITIES
kill @e[type=item]
kill @e[type=minecraft:area_effect_cloud]

# LOBBY
execute as @e[type=arrow] at @s if biome ~ ~ ~ raurus:shrine run kill @s
execute as @a at @s if biome ~ ~ ~ raurus:shrine run function raurus:lobby
execute positioned 64 -48 64 run particle glow ~ ~ ~ 20 20 20 0 1 force
execute positioned 64 -48 64 run particle end_rod ~ ~ ~ 20 20 20 0 1 force

# READY/GAME ON GOING SIGN
execute if score start_time counter matches 201.. positioned 64 -49.3 54 as @e[type=text_display,tag=ready_text] run data merge entity @s {billboard:"center",Tags:["npc","ready_text"],text:'{"text":"Right-Click to join/leave queue","color":"#36DDFF","bold":true}'}
execute if score start_time counter matches ..200 positioned 64 -49.3 54 as @e[type=text_display,tag=ready_text] run data merge entity @s {billboard:"center",Tags:["npc","ready_text"],text:'{"text":"Game on-going, please wait...","color":"#36DDFF","bold":true}'}

# COOLDOWNS
execute as @a run function raurus:cooldowns/cooldowns

# GAMEMODE SELECT TEAMS
execute as @a[team=!red,team=!blue,tag=ready,limit=1,sort=random] run function raurus:towers/select_teams

# GAMEMODE TOWERS
execute as @e[type=marker,tag=tower] at @s run function raurus:towers/towers

# GAMEMODE POINTS
function raurus:towers/points

# LOBBY READY
execute if score start_time counter matches 200.. as @e[type=interaction,tag=ready] on target run function raurus:towers/queue

# SPECTATE
execute as @e[type=interaction,tag=spectate] on target if entity @s[tag=!ready] run function raurus:towers/spectate
execute as @a[tag=spectator] at @s if entity @s[y=-64,dy=114] run function raurus:towers/stop_spectate

# LOBBY COUNTDOWN
execute if score ready_players counter matches 1.. run function raurus:towers/countdown
execute if score ready_players counter matches 0 run scoreboard players set start_time counter 2400

# LOBBY WINS
scoreboard players operation @e[type=minecraft:text_display,tag=red_wins] wins = red wins
scoreboard players operation @e[type=minecraft:text_display,tag=blue_wins] wins = blue wins
execute as @e[type=minecraft:text_display,tag=red_wins] run data merge entity @s {billboard:"center",Tags:["npc","red_wins"],text:'[{"text":"Red Team Wins: ","color":"#FF0000","bold":true},{"score":{"name":"@s","objective":"wins"},"color":"#FF0000"}]'}
execute as @e[type=minecraft:text_display,tag=blue_wins] run data merge entity @s {billboard:"center",Tags:["npc","blue_wins"],text:'[{"text":"Blue Team Wins: ","color":"#0088FF","bold":true},{"score":{"name":"@s","objective":"wins"},"color":"#0088FF"}]'}

# BASES EFFECTS
particle dust 0 0 1 1 12 71 115 0.5 0.5 0.5 0 15 force
particle dust 1 0 0 1 115 71 12 0.5 0.5 0.5 0 15 force
execute positioned 12 71 115 as @a[team=red,distance=..20] run damage @s 4 minecraft:magic
execute positioned 115 71 12 as @a[team=blue,distance=..20] run damage @s 4 minecraft:magic
execute positioned 12 71 115 as @a[team=blue,distance=..20] run effect give @s instant_health 1 100
execute positioned 115 71 12 as @a[team=red,distance=..20] run effect give @s instant_health 1 100
execute positioned 12 71 115 as @a[team=blue,distance=..20] run effect give @s resistance 1 100
execute positioned 115 71 12 as @a[team=red,distance=..20] run effect give @s resistance 1 100

# TOWERS MESSAGES
execute if score red capture matches 1 run function raurus:towers/red_start_cap
execute if score blue capture matches 1 run function raurus:towers/blue_start_cap
execute unless entity @e[type=marker,tag=red,scores={capture=1..}] run function raurus:towers/red_stop_cap
execute unless entity @e[type=marker,tag=blue,scores={capture=1..}] run function raurus:towers/blue_stop_cap

# ABYSS - TOWERS
execute as @a[tag=in_game] at @s run particle end_rod ~ 41 ~ 0 0 0 0 1 force
execute as @e[type=marker,tag=tower] at @s run particle flash ~ 41 ~ 0 0 0 0 1 force

# CLASSES AND ABILITIES
function raurus:classes/select
execute as @a[scores={deaths=1..}] run scoreboard players set @s kin_2 0
execute as @a[scores={kin_2=1..}] at @s run function raurus:abilities/kin2_effect
execute at @e[type=marker,tag=antimana_circle,tag=red] run tag @a[team=blue,distance=..9.5] remove can_use
execute at @e[type=marker,tag=antimana_circle,tag=blue] run tag @a[team=red,distance=..9.5] remove can_use
execute as @a at @s run function raurus:classes/classes
function raurus:abilities/abilities

# FORCELOADS
forceload add 115 115
forceload add 64 64
forceload add 12 12
execute in minecraft:the_nether run forceload add 80 80
execute in minecraft:the_nether run forceload add 80 112
execute in minecraft:the_nether run forceload add 112 112
execute in minecraft:the_nether run forceload add 112 80
execute in minecraft:the_nether run forceload add 59 68 69 59
execute in minecraft:the_nether run forceload add 97 0 126 62

# BOSSBARS
bossbar set minecraft:blue players @a[tag=can_use]
bossbar set minecraft:red players @a[tag=can_use]
execute store result bossbar minecraft:red value run scoreboard players get red counter
execute store result bossbar minecraft:blue value run scoreboard players get blue counter

# PLAYER COUNT
scoreboard players set players counter 0
scoreboard players set red_players counter 0
scoreboard players set blue_players counter 0
scoreboard players set ready_players counter 0
scoreboard players set in_game_players counter 0
execute as @a run scoreboard players add players counter 1
execute as @a[tag=ready] run scoreboard players add ready_players counter 1
execute as @a[tag=in_game] run scoreboard players add in_game_players counter 1
execute as @a[team=red] run scoreboard players add red_players counter 1
execute as @a[team=blue] run scoreboard players add blue_players counter 1

# PLAYERS SCOREBOARD
scoreboard players reset @a[tag=!in_game] players
scoreboard players set @a[tag=in_game,team=red] players 0
scoreboard players set @a[tag=in_game,team=blue] players 1

# KILL ARROWS
execute as @e[type=arrow,nbt={inGround:1b}] run function raurus:arrow

# SKINS
execute as @e[type=interaction,tag=skin_switch] on target at @s run function raurus:skins/skins
execute as @e[type=interaction,tag=skin_pull] on target if entity @s[scores={wins=10..}] at @s run function raurus:skins/rolls/roll

# RESET INTERACTIONS
execute as @e[type=interaction] run data remove entity @s interaction

# RESET SCOREBOARDS, TAGS AND THE LIKE
function raurus:reset

# Random Select
execute as @a[tag=!in_game,tag=random_select] at @s run function raurus:classes/random_reselect

# ADMIN
item replace entity @a[tag=admin] hotbar.7 with written_book{display:{Name:'{"text":"Admin Tools","color":"#00FFE5","bold":true,"italic":false}'},title:"",author:"",pages:['[{"text":"[End Match]\\n\\n","color":"white","clickEvent":{"action":"run_command","value":"/function raurus:admin/end_game"}},{"text":"[Start Match]\\n\\n","color":"white","clickEvent":{"action":"run_command","value":"/function raurus:admin/start_game"}},{"text":"[Winrates]\\n\\n","color":"white","clickEvent":{"action":"run_command","value":"/function raurus:admin/winrates"}},{"text":"[Stall Queue]\\n\\n","color":"white","clickEvent":{"action":"run_command","value":"/function raurus:admin/stall_game"}},{"text":"[Reset NPCs]\\n\\n","color":"white","clickEvent":{"action":"run_command","value":"/function raurus:admin/reset_npcs"}}]']} 1
