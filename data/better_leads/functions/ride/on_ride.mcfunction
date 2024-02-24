advancement revoke @s only better_leads:ride

# Cast the position of the leash knot to ints and put it into storage
execute on vehicle on leasher store result storage better_leads:macro X int 1 run data get entity @s Pos[0] 1
execute on vehicle on leasher store result storage better_leads:macro Y int 1 run data get entity @s Pos[1] 1
execute on vehicle on leasher store result storage better_leads:macro Z int 1 run data get entity @s Pos[2] 1

# Figure out the number of animals tied to this knot and put it into better_leads:counter Count
function better_leads:ride/count_horses with storage better_leads:macro

# If there are multiple animals tied to a knot, only remove the leash of our animal, otherwise delete the entire knot.
execute if data storage better_leads:counter {Count:1} on vehicle on leasher run kill @s
execute unless data storage better_leads:counter {Count:1} on vehicle run data modify entity @s Leash set value {X: 0, Y: 1000, Z: 0}

give @s minecraft:lead

# Schedule a deletion of the dropped lead item
execute on vehicle at @s run summon minecraft:marker ~ ~ ~ {Tags:["lead_spawn_marker"]}
schedule function better_leads:delete_leads 2t
