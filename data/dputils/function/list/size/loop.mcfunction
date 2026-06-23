## 
## @param {integer} i
## @borrowedstack
##

# Set i
$data modify storage dputils:stack list_size[-1].i set value $(i)
# Check if we have an item
function dputils:list/size/get with storage dputils:stack list_size[-1]

# Found!
execute if score temp.acc dputils matches 1 run return run function dputils:acc

# Nothing found
return fail