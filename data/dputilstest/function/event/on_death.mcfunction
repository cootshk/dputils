execute if score EnableTesting dputils matches 0..1 run return run function #dputils:value {n:0}

tellraw @a [{storage:"dputils:test",nbt:"prefix",interpret:true}, {color:"aqua",selector:"@s"}, {text:" triggered ", color:"white"}, {text:"on_death",bold:true,color:"gold"}]
