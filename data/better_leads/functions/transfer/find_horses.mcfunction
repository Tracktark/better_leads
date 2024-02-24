tag @s add this
$execute as @e[distance=..20, nbt={Leash:{X:$(X), Y: $(Y), Z: $(Z)}}] run data modify entity @s Leash.UUID set from entity @p[tag=this] UUID
tag @s remove this
