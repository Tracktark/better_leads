scoreboard players set @s better_leads_raycast -1
# Return, if the fence found by the raycast still has a knot. This happens when a player adds a new leash to an existing knot.
execute align xyz positioned ~0.5 ~0.375 ~0.5 if entity @e[distance=..0.1, type=minecraft:leash_knot] run return 0

# Cast the executing position (where the knot used to be) to ints and put it into storage.
execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:["fence_marker"]}
execute store result storage better_leads:macro X int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[0] 1
execute store result storage better_leads:macro Y int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[1] 1
execute store result storage better_leads:macro Z int 1 run data get entity @e[tag=fence_marker, limit=1] Pos[2] 1
kill @e[tag=fence_marker]

function better_leads:transfer/find_horses with storage better_leads:macro

# For some reason, modifying NBT of a horse with armor plays the armor equip sound.
stopsound @s neutral minecraft:entity.horse.armor

execute at @s run playsound minecraft:entity.leash_knot.place neutral @a ~ ~ ~

