# Leashes the executing entity to a fence at the executing position

summon minecraft:marker ~ ~ ~ {Tags:["fence_marker"]}
execute store result storage better_leads:macro X int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[0] 1
execute store result storage better_leads:macro Y int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[1] 1
execute store result storage better_leads:macro Z int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[2] 1

data modify storage better_leads:macro leash set value [I;]
data modify storage better_leads:macro leash append from storage better_leads:macro X
data modify storage better_leads:macro leash append from storage better_leads:macro Y
data modify storage better_leads:macro leash append from storage better_leads:macro Z

data modify entity @s leash set from storage better_leads:macro leash

kill @e[tag=fence_marker]
