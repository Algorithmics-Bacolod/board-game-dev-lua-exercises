luaunit = require('luaunit')

print("Exercise Output:")
dofile("exercise1.lua")
print("")

function testContainsNothing()
    luaunit.assertEquals(type(contains_nothing), "nil")
end

function testSomeBoolean()
    luaunit.assertEquals(type(some_boolean), "boolean")
end

function testSomeString()
    luaunit.assertEquals(type(some_string), "string")
end

function testSomeNumber()
    luaunit.assertEquals(type(some_number), "number")
end

os.exit(luaunit.LuaUnit.run())
