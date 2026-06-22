# Value
# Simply returns a value, useful for `execute store result`.
# Minecraft expects this value to be an integer.
# @example return run function #dputils:value {n:2}
# @param {n} any (probably integer) - the value to return

$scoreboard players set temp.returned_value dputils $(n)
return run scoreboard players get temp.returned_value dputils
