# Until Error
# Loop running a function until it errors.
# @param {function} c: the function to run until it errors.
# @return 
# `c` is called with the value `i` corresponding to the number of times the function has run. 


# Allocate a stack frame to store our variables
function dputils:stack/allocate {function:until_error}

tellraw @a "running loop"

# Call the loop
$data modify storage dputils:stack until_error[-1] merge value {function:"$(c)",i:0}
execute store result storage dputils:temp n int 1 run function dputils:until/error/callback with storage dputils:stack until_error[-1]

# Cleanup the stack
function dputils:stack/cleanup {function:until_error}

# Return the number of loops
return run function #dputils:value with storage dputils:temp
