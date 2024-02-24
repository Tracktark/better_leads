scoreboard players set @s better_leads_raycast -1

execute on vehicle run function better_leads:tied/spawn_leash

# For some reason, modifying NBT of a horse with armor plays the armor equip sound.
stopsound @s neutral minecraft:entity.horse.armor

clear @s minecraft:lead 1
ride @s dismount
playsound minecraft:entity.leash_knot.place neutral @a ~ ~ ~
