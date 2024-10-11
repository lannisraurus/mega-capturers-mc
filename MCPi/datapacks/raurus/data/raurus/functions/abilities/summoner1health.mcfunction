execute unless entity @e[distance=..1,type=marker,tag=summoner_turret] run kill @s
execute on attacker if entity @s[team=red] as @e[tag=blue,tag=summoner_turret_health,limit=1,sort=nearest] run function raurus:abilities/summoner1damage
execute on attacker if entity @s[team=blue] as @e[tag=red,tag=summoner_turret_health,limit=1,sort=nearest] run function raurus:abilities/summoner1damage
