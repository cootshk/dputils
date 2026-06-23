# Everything under this line is skipped when testing is disabled.
execute if score EnableTesting dputils matches 0..1 run return run function dputilstest:_/skip_test_load

advancement grant @a[advancements={dputilstest:dputilstest=false}] only dputilstest:dputilstest