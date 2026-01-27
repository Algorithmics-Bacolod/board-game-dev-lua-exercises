-- Test file for Exercise 2
luaunit = require('luaunit')

-- Load the solution using dofile
dofile('exercise2.lua')

function testVariablesExist()
    luaunit.assertNotNil(a)
    luaunit.assertNotNil(b)
    luaunit.assertIsBoolean(a)
    luaunit.assertIsBoolean(b)
end

function testLogicalOperators()
    luaunit.assertIsBoolean(and_result)
    luaunit.assertIsBoolean(or_result)
    luaunit.assertIsBoolean(not_a)
    luaunit.assertIsBoolean(not_b)
end

function testLogic()
    -- Test that the logical operations are correct
    luaunit.assertEquals(and_result, a and b)
    luaunit.assertEquals(or_result, a or b)
    luaunit.assertEquals(not_a, not a)
    luaunit.assertEquals(not_b, not b)
end

os.exit(luaunit.LuaUnit.run())
