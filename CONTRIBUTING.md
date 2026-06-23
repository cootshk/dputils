# Contributing

Conventions:
Any functions starting with `# ` are public or internal.
Functions starting with `##` are private.

Public functions differ from internal functions by having a corresponding tag.

## Stack
See the [stack's README](data/dputils/function/stack/README.md).

## Storage
Don't use the storage `dputils:scratch` unless you have to. Allocate a stack frame instead.
