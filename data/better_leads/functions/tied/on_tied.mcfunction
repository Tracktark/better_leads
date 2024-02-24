# Runs when a player riding an animal right-clicks a fence with a lead.
advancement revoke @s only better_leads:tied
scoreboard players set @s better_leads_raycast 50
execute anchored eyes run function better_leads:tied/raycast
