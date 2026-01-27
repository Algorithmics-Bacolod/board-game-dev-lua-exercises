luaunit = require('luaunit')
dofile("exercise5.lua")

function testAgeVariable()
    luaunit.assertEquals(type(age), "number")
end

function testGreetingVariable()
    luaunit.assertEquals(greeting, "Hello, I am ")
end

function testFullGreetingVariable()
    luaunit.assertEquals(full_greeting, "Hello, I am " .. age)
end

os.exit(luaunit.LuaUnit.run())
