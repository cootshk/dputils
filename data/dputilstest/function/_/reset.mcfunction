# Explicitly placed before the check
data merge storage dputils:test {prefix:[{text:"[",color:"gold"},{text:"dputils - test",color:"dark_red"},{text:"] ",color:"gold"}]}

# EnableTesting values:
# 0: Off (default)
# -1: On, Awaiting Off
# 1: Off, Awaiting On
# 2: On
# (Skip running debug logic on 0..1)

execute unless score EnableTesting dputils matches -2147483648..2147483647 run scoreboard players set EnableTesting dputils 0
execute unless score EnableTesting dputils matches 0 unless score EnableTesting dputils matches 2 run scoreboard players add EnableTesting dputils 1
execute unless score EnableTesting dputils matches 0..2 run scoreboard players set EnableTesting dputils 0
# Everything under this line only runs if testing is enabled.
execute if score EnableTesting dputils matches 0..1 run return run function #dputils:value {n:0}

tellraw @a [{storage:"dputils:test",nbt:"prefix",interpret:true}, {text:"Running in test mode!",color:"white"}]
