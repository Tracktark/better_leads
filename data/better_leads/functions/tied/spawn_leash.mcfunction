# Leashes the executing entity to a fence at the executing position

summon minecraft:marker ~ ~ ~ {Tags:["fence_marker"]}
execute store result entity @s Leash.X int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[0] 1
execute store result entity @s Leash.Y int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[1] 1
execute store result entity @s Leash.Z int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[2] 1
kill @e[tag=fence_marker]
