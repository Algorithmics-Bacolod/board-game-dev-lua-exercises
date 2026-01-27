luaunit = require('luaunit')
dofile("exercise4.lua")

function testOrderOfOperations()
    luaunit.assertEquals(result1, 13)
    luaunit.assertEquals(result2, 16)
end

os.exit(luaunit.LuaUnit.run())
