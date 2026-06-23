# Stack

## Usage
Allocate a stack frame for yourself with
```mcfunction
function dputils:stack/allocate {function:my_func}
```

Now, you can use
```mcfunction
data modify storage dputils:stack my_func[-1] set value {foo:bar}
data get dputils:stack my_func[-1].some_var
```
For code outside of dputils, please include a namespace in your stack name (i.e. `{function:"my_lib:dputil_func"}`)

Once you are done with your stack frame, you can clear it with
```mcfunction
function dputils:stack/clear {function:my_func}
```

Allocating or clearing the stack does not touch `temp.acc`.
