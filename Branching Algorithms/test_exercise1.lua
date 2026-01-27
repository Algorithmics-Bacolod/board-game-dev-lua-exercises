-- Test file for Exercise 1
luaunit = require('luaunit')

-- Load the solution using dofile
dofile('exercise1.lua')

function testVariablesExist()
    luaunit.assertNotNil(x)
    luaunit.assertNotNil(y)
    luaunit.assertIsNumber(x)
    luaunit.assertIsNumber(y)
end

function testRelationalOperators()
    luaunit.assertIsBoolean(greater)
    luaunit.assertIsBoolean(less)
    luaunit.assertIsBoolean(equal)
    luaunit.assertIsBoolean(greater_equal)
    luaunit.assertIsBoolean(not_equal)
end

function testLogic()
    -- Test that the comparisons are logically correct
    if x > y then
        luaunit.assertTrue(greater)
        luaunit.assertFalse(less)
        luaunit.assertFalse(equal)
    elseif x < y then
        luaunit.assertFalse(greater)
        luaunit.assertTrue(less)
        luaunit.assertFalse(equal)
    else
        luaunit.assertFalse(greater)
        luaunit.assertFalse(less)
        luaunit.assertTrue(equal)
    end

    luaunit.assertEquals(greater_equal, x >= y)
    luaunit.assertEquals(not_equal, x ~= y)
end

os.exit(luaunit.LuaUnit.run())