-- Test file for Exercise 6
luaunit = require('luaunit')

function testCriticalRoll()
    sneak_roll = 20
    dofile('exercise6.lua')
    luaunit.assertEquals(disguise_outcome, "Critical Success")
end

function testSuccessRoll()
    sneak_roll = 15
    dofile('exercise6.lua')
    luaunit.assertEquals(disguise_outcome, "Success")
end

function testPartialSuccessRoll()
    sneak_roll = 10
    dofile('exercise6.lua')
    luaunit.assertEquals(disguise_outcome, "Partial Success")
end

function testFailureRoll()
    sneak_roll = 5
    dofile('exercise6.lua')
    luaunit.assertEquals(disguise_outcome, "Failure")
end

function testCriticalFailureRoll()
    sneak_roll = 1
    dofile('exercise6.lua')
    luaunit.assertEquals(disguise_outcome, "Critical Failure")
end

os.exit(luaunit.LuaUnit.run())
