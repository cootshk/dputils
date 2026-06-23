# Revoke advancement
function dputils:event/_/revoke_advancement {a:on_death}
# Reset scoreboard value
scoreboard players remove @s dputils.on_death 1