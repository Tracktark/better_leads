# Deletes all lead items, which were spawned on this tick next to all lead_spawn_markers.
# Lead items spawn 2 ticks after a leash has been destroyed.
execute as @e[type=minecraft:marker, tag=lead_spawn_marker] at @s run kill @e[distance=..0.2, nbt={Item:{id:"minecraft:lead"}, Age:0s}]
kill @e[type=minecraft:marker, tag=lead_spawn_marker]
