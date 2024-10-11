scoreboard players operation @s dx2 = @e[type=marker,tag=disrupting_weave_aux,limit=1,sort=nearest] x
scoreboard players operation @s dy2 = @e[type=marker,tag=disrupting_weave_aux,limit=1,sort=nearest] y
scoreboard players operation @s dz2 = @e[type=marker,tag=disrupting_weave_aux,limit=1,sort=nearest] z

scoreboard players operation @s dx2 -= @s x
scoreboard players operation @s dy2 -= @s y
scoreboard players operation @s dz2 -= @s z

scoreboard players operation @s x2 = @s dx2
scoreboard players operation @s y2 = @s dy2
scoreboard players operation @s z2 = @s dz2

scoreboard players operation @s x2 *= @s x2
scoreboard players operation @s y2 *= @s y2
scoreboard players operation @s z2 *= @s z2

scoreboard players operation @s r = @s x2
scoreboard players operation @s r += @s y2
scoreboard players operation @s r += @s z2

scoreboard players operation @s r /= xyz_div counter

scoreboard players operation @s dx2 /= @s r
scoreboard players operation @s dy2 /= @s r
scoreboard players operation @s dz2 /= @s r

scoreboard players operation @s dx += @s dx2
scoreboard players operation @s dy += @s dy2
scoreboard players operation @s dz += @s dz2


