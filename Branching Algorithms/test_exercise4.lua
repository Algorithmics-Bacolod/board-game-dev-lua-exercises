-- Test file for Exercise 4
luaunit = require('luaunit')

function testDexGreaterThanLockDiff()
    dexterity = 15
    lock_difficulty = 12
    dofile('exercise4.lua')
    luaunit.assertTrue(lock_picked)
end

function testDexLessThanLockDiff()
    dexterity = 10
    lock_difficulty = 12
    dofile('exercise4.lua')
    luaunit.assertFalse(lock_picked)
end

function testDexEqualToLockDiff()
    dexterity = 12
    lock_difficulty = 12
    dofile('exercise4.lua')
    luaunit.assertTrue(lock_picked)
end

os.exit( luaunit.LuaUnit.run() )