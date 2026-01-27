luaunit = require('luaunit')
dofile("exercise2.lua")

function testMyNameConstant()
    luaunit.assertEquals(type(FIRST_NAME), "string")
end

function testMyAgeConstant()
    luaunit.assertEquals(type(LAST_NAME), "string")
end

function testStringConcatenation()
    luaunit.assertEquals(type(FULL_NAME), "string")
    luaunit.assertEquals(FULL_NAME, FIRST_NAME .. " " .. LAST_NAME)
end

os.exit(luaunit.LuaUnit.run())
