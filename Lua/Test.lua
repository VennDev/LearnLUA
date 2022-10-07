--[[
    Learn Lua in 30 Minutes
--]]

-- Variables
local myString = "Hello World"
local myNumber = 42
local myTable = {1, 2, 3, 4, 5}
local myBoolean = true

-- Functions
local function myFunction()
    print("Hello World")
end

-- Loops
for i = 1, 10 do
    print(i)
end

-- Conditionals
if myNumber == 42 then
    print("The answer to life, the universe, and everything.")
end

-- Comments

-- This is a single line comment

--[[
    This is a
    multi-line
    comment

    --[[
        This is a nested comment
    --]]
--]]

-- Operators

-- Arithmetic

local a = 1 + 1 -- Addition
local b = 1 - 1 -- Subtraction
local c = 1 * 1 -- Multiplication
local d = 1 / 1 -- Division
local e = 1 % 1 -- Modulus
local f = 1 ^ 1 -- Exponent

-- Comparison

local g = 1 == 1 -- Equal to
local h = 1 ~= 1 -- Not equal to
local i = 1 > 1 -- Greater than
local j = 1 < 1 -- Less than
local k = 1 >= 1 -- Greater than or equal to
local l = 1 <= 1 -- Less than or equal to

-- Logical

local m = true and true -- And
local n = true or false -- Or
local o = not true -- Not

-- Concatenation

local p = "Hello" .. "World" -- Concatenates "Hello" and "World"

-- Tables

local myTable = {1, 2, 3, 4, 5}

-- Accessing values

local a = myTable[1] -- 1
local b = myTable[2] -- 2
local c = myTable[3] -- 3
local d = myTable[4] -- 4
local e = myTable[5] -- 5

-- Adding values

myTable[6] = 6

-- Removing values

myTable[6] = nil

-- Iterating over tables

for i = 1, #myTable do
    print(myTable[i])
end

-- Strings

local myString = "Hello World"

-- Accessing values

local a = myString:sub(1, 1) -- H

-- Adding values

local b = myString .. "!" -- Hello World!

-- Removing values

local c = myString:sub(1, #myString - 1) -- Hello Worl

-- Iterating over strings

for i = 1, #myString do
    print(myString:sub(i, i))
end

-- Functions

local function myFunction()
    print("Hello World")
end

-- Calling functions

myFunction()

-- Returning values

local function myFunction()
    return "Hello World"
end

local a = myFunction() -- a = "Hello World"

-- Passing values

local function myFunction(a)
    print(a)
end

myFunction("Hello World")

-- Booleans

local myBoolean = true

-- Conditional statements

if myBoolean then
    print("Hello World")
end

-- Classes

local MyClass = {}

function MyClass.new()
    local self = setmetatable({}, MyClass)
    return self
end

function MyClass:myFunction()
    print("Hello World")
end

local myObject = MyClass.new()

myObject:myFunction()

-- Inheritance

local MyClass = {}

function MyClass.new()
    local self = setmetatable({}, MyClass)
    return self
end

function MyClass:myFunction()
    print("Hello World")
end

local MyOtherClass = {}

function MyOtherClass.new()
    local self = MyClass.new()
    setmetatable(self, MyOtherClass)
    return self
end

function MyOtherClass:myOtherFunction()
    print("Hello World")
end

local myObject = MyOtherClass.new()

myObject:myFunction()
myObject:myOtherFunction()

-- Modules

local myModule = {}

function myModule.myFunction()
    print("Hello World")
end

return myModule

-- Calling modules

local myModule = require("myModule")

myModule.myFunction()

-- Coroutines

local myCoroutine = coroutine.create(function()
    print("Hello World")
end)

coroutine.resume(myCoroutine)

-- Yielding

local myCoroutine = coroutine.create(function()
    coroutine.yield()
    print("Hello World")
end)

coroutine.resume(myCoroutine)

coroutine.resume(myCoroutine)

-- Yielding values

local myCoroutine = coroutine.create(function()
    local a = coroutine.yield()
    print(a)
end)

coroutine.resume(myCoroutine)

coroutine.resume(myCoroutine, "Hello World")

-- Yielding multiple values

local myCoroutine = coroutine.create(function()
    local a, b = coroutine.yield()
    print(a, b)
end)

coroutine.resume(myCoroutine)

coroutine.resume(myCoroutine, "Hello", "World")

-- Yielding multiple times

local myCoroutine = coroutine.create(function()
    local a = coroutine.yield()
    local b = coroutine.yield()
    print(a, b)
end)

coroutine.resume(myCoroutine)

coroutine.resume(myCoroutine, "Hello")

coroutine.resume(myCoroutine, "World")

-- Yielding with status

local myCoroutine = coroutine.create(function()
    local a = coroutine.yield()
    print(a)
end)

coroutine.resume(myCoroutine)

print(coroutine.status(myCoroutine)) -- suspended

coroutine.resume(myCoroutine, "Hello World")

print(coroutine.status(myCoroutine)) -- dead

-- Yielding with errors

local myCoroutine = coroutine.create(function()
    local a = coroutine.yield()
    print(a)
end)

coroutine.resume(myCoroutine)

coroutine.resume(myCoroutine, "Hello World")

coroutine.resume(myCoroutine, "Hello World")

-- Yielding with errors (continued)

local myCoroutine = coroutine.create(function()
    local a = coroutine.yield()
    print(a)
end)

coroutine.resume(myCoroutine)

coroutine.resume(myCoroutine, "Hello World")

coroutine.resume(myCoroutine, "Hello World")

coroutine.resume(myCoroutine, "Hello World")