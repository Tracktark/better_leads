data modify storage better_leads:macro leash_uuid set value {}
data modify storage better_leads:macro leash_uuid.UUID set from entity @s UUID
$execute as @e[distance=..20, nbt={leash:[I; $(X), $(Y), $(Z)]}] run data modify entity @s leash set from storage better_leads:macro leash_uuid
