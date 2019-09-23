# Lua Learnings :books:

A bunch of code katas plus notes/musings/ramblings about Lua.

## What is Lua? :thinking:

Lua is a lightweight, multi-paradigm scripting language that is also designed to be easily embedded into other applications.

## How do I install it? :computer:

It can be installed via [Homebrew](https://brew.sh/). :beer:

## Gotchas :fire: :fire: :fire:

## General Weirdness
1. `0` is truthy!
2. Variables are global by default (but can be scoped by using `local`)
3. Not equal comparison is represented by `~=` rather than `!=`. 

## Tables
1. Tables can be both arrays and key-value maps (even at the same time). E.g. `{ a, b,c, d=1 }` is a valid table.
2. Array indexing starts at `1`. Despite this, given table `t` then `t[0] = 1` is perfectly valid. However, this will store the value in the 'hash' part of the table rather than the 'array' part.
3. Accessing an undefined key or index of a table will return `nil` rather than throw an exception.
4. Setting a value in the middle of an array will mess up the the length operator (`#`) due to the way it looks from the first index to the first `nil` value it can find.

## Useful Links :link:

- [Lua](https://www.lua.org/start.html)
- [LuaRocks](https://luarocks.org/)
- [LuaUnit](https://github.com/bluebird75/luaunit)
- [Awesome Lua](https://github.com/LewisJEllis/awesome-lua)
- [Tutorials Point](https://www.tutorialspoint.com/lua/index.htm)

