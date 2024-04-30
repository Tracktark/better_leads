tag @s add this
$execute as @e[distance=..20, nbt={leash:[I; $(X), $(Y), $(Z)]}] run give @a[tag=this] minecraft:lead
$execute as @e[distance=..20, nbt={leash:[I; $(X), $(Y), $(Z)]}] at @s run summon minecraft:marker ~ ~ ~ {Tags:["lead_spawn_marker"]}
tag @s remove this

# Lead items spawn 2 ticks after a leash has been destroyed, schedule a function to delete those items.
schedule function better_leads:delete_leads 2t
