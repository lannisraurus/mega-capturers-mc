particle flame ~ ~1.2 ~ 0 0 0 0.15 20 force
damage @s 1 on_fire
scoreboard players set @s time 0

execute if entity @s[team=red] as @a[team=blue,distance=..7.5] run damage @s 1 on_fire
execute if entity @s[team=blue] as @a[team=red,distance=..7.5] run damage @s 1 on_fire
