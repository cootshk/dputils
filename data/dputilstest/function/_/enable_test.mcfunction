tellraw @s [{storage:"dputils:test",nbt:"prefix",interpret:true}, {text:"Enabled dputils test mode.",color:"green"},{text:"\n",color:"white"},"You need to reload to apply changes. ", {text:"[Reload Now]",bold:true,click_event:{action:"run_command",command:"reload"}}]
scoreboard players set EnableTesting dputils 1
