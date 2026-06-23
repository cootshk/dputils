## Update Scoreboard
## Handles the events for things like health and on_death.

execute as @a if score @s dputils.on_death matches 1.. run advancement grant @s only dputils:event/on_death
