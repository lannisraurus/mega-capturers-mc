kill @s

execute if entity @s[tag=red] as @e[team=blue,distance=..4] run damage @s 6 minecraft:explosion
execute if entity @s[tag=blue] as @e[team=red,distance=..4] run damage @s 6 minecraft:explosion

execute as @e[distance=..4] run effect give @s resistance 1 100 true

execute if entity @s[tag=red] run summon creeper ~0.8 ~ ~ {ExplosionRadius:1b,CustomNameVisible:0b,Team:"red",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute if entity @s[tag=blue] run summon creeper ~0.8 ~ ~ {ExplosionRadius:1b,CustomNameVisible:0b,Team:"blue",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute if entity @s[tag=red] run summon creeper ~-0.8 ~ ~ {ExplosionRadius:1b,CustomNameVisible:0b,Team:"red",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute if entity @s[tag=blue] run summon creeper ~-0.8 ~ ~ {ExplosionRadius:1b,CustomNameVisible:0b,Team:"blue",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute if entity @s[tag=red] run summon creeper ~ ~ ~0.8 {ExplosionRadius:1b,CustomNameVisible:0b,Team:"red",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute if entity @s[tag=blue] run summon creeper ~ ~ ~0.8 {ExplosionRadius:1b,CustomNameVisible:0b,Team:"blue",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

execute if entity @s[tag=red] run summon creeper ~ ~ ~-0.8 {ExplosionRadius:1b,CustomNameVisible:0b,Team:"red",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}
execute if entity @s[tag=blue] run summon creeper ~ ~ ~-0.8 {ExplosionRadius:1b,CustomNameVisible:0b,Team:"blue",Fuse:0,ignited:1b,CustomName:'{"text":"Slime Landmine","color":"#149400","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}'}

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
