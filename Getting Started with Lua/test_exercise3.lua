luaunit = require('luaunit')
dofile("exercise3.lua")

function testArithmeticVariables()
    luaunit.assertEquals(a, 10)
    luaunit.assertEquals(b, 5)
    luaunit.assertEquals(sum, 15)
    luaunit.assertEquals(difference, 5)
    luaunit.assertEquals(product, 50)
    luaunit.assertEquals(quotient, 2)
end

os.exit(luaunit.LuaUnit.run())
