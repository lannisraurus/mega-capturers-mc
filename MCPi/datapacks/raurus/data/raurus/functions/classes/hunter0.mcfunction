playsound minecraft:entity.wither.hurt ambient @a[distance=..10] ~ ~ ~ 2 2
playsound minecraft:entity.wither.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.8
playsound minecraft:entity.wither.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.6
playsound minecraft:entity.wither.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.5

data merge entity @s {NoGravity:1b,PierceLevel:10b,Color:2621765,Tags:["hunter_arrow"],SoundEvent:"entity.wither.ambient",custom_potion_effects:[{id:"minecraft:darkness",amplifier:0b,duration:3,show_particles:0b},{id:"minecraft:wither",amplifier:1b,duration:60,show_particles:0b}]}
