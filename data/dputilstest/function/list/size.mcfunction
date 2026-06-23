tellraw @s [{storage:"dputils:test",nbt:"prefix",interpret:true}, {text:"Testing the size of the prefix...", color:"white"}]
execute store result score temp.acc dputils run function #dputils:list/size {s:"dputils:test",l:prefix}

tellraw @s [{text:"Found: ", color:"white"}, {color:green,score:{objective:dputils,name:temp.acc}}]
