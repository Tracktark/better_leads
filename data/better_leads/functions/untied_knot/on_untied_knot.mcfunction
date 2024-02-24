# Runs when a player right clicks a leash knot without shifting.
advancement revoke @s only better_leads:untied_knot

scoreboard players set @s better_leads_raycast 50
execute anchored eyes run function better_leads:untied_knot/raycast
