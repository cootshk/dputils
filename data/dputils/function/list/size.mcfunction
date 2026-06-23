# Gets the size of a list of elements
# @param {s}: the storage the list sits in.
# @param {l}: the path to the list.

# Allocate a stack frame.
function #dputils:stack/allocate {function:list_size}

# Params to pass into the loop and get functions.
$data modify storage dputils:stack list_size[-1] set value {i:0,s:"$(s)",l:"$(l)"}

function #dputils:until/error {c:"dputils:list/size/loop"}
execute store result score temp.acc dputils run data get storage dputils:stack list_size[-1].i 1

# Cleanup the stack frame.
function #dputils:stack/cleanup {function:list_size}

return run function dputils:acc
