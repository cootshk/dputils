# Revoke advancement
function dputils:event/_revoke_advancement {a:on_death}
# Reset scoreboard value
scoreboard players remove @s dputils.on_death 1