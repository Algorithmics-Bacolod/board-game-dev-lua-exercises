luaunit = require('luaunit')

function testDifficulty1()
    difficulty_level = 1
    dofile('exercise5.lua')
    luaunit.assertEquals(starting_hp, 150)
end

function testDifficulty2()
    difficulty_level = 2
    dofile('exercise5.lua')
    luaunit.assertEquals(starting_hp, 120)
end

function testDifficulty3()
    difficulty_level = 3
    dofile('exercise5.lua')
    luaunit.assertEquals(starting_hp, 100)
end

function testDifficulty4()
    difficulty_level = 4
    dofile('exercise5.lua')
    luaunit.assertEquals(starting_hp, 80)
end

function testDifficulty5()
    difficulty_level = 5
    dofile('exercise5.lua')
    luaunit.assertEquals(starting_hp, 60)
end

function testInvalidDifficulty()
    difficulty_level = 6
    dofile('exercise5.lua')
    luaunit.assertEquals(starting_hp, 0)
end

os.exit(luaunit.LuaUnit.run())