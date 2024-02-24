# Runs when a player shift+right clicks a leash knot.
advancement revoke @s only better_leads:transfer
scoreboard players set @s better_leads_raycast 50
execute anchored eyes run function better_leads:transfer/raycast
