# Allocate a new stack frame
# @param {string} function - the name of the list to put the new stack frame in.

$data modify storage dputils:stack $(function) append value {}
