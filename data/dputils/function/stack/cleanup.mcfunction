# Clean up a stack frame
# @param {string} function - the name of the list to put the stack frame in.

$data remove storage dputils:stack $(function)[-1]
