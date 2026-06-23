## 
## @param {function} function: the function to run.
## @param {number} i: the current repititon
## @return the number of runs
## @borrowedstack
##

# Run the function
$execute store success score temp.success dputils run function $(function) {i:$(i)}
# Increment i
execute store result score temp.acc dputils run data get storage dputils:stack until_error[-1].i 1
scoreboard players add temp.acc dputils 1
execute store result storage dputils:stack until_error[-1].i int 1 run scoreboard players get temp.acc dputils

# loop!
execute if score temp.success dputils matches 1 run function dputils:until/error/callback with storage dputils:stack until_error[-1]

$return run function #dputils:value {n:$(i)}