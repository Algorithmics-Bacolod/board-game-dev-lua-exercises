-- Test file for Exercise 3
luaunit = require('luaunit')

function testRoll20()
    dice_roll = 20
    dofile('exercise3.lua')
    luaunit.assertEquals(player_damage, 6)
    luaunit.assertEquals(player_health, 11)
    luaunit.assertEquals(monster_health, 0)
end

function testRoll15()
    dice_roll = 15
    dofile('exercise3.lua')
    luaunit.assertEquals(player_damage, 6)
    luaunit.assertEquals(player_health, 10)
    luaunit.assertEquals(monster_health, 0)
end

function testRoll10()
    dice_roll = 10
    dofile('exercise3.lua')
    luaunit.assertEquals(player_damage, 5)
    luaunit.assertEquals(player_health, 10)
    luaunit.assertEquals(monster_health, 1)
end

function testRoll3()
    dice_roll = 3
    dofile('exercise3.lua')
    luaunit.assertEquals(player_damage, 5)
    luaunit.assertEquals(player_health, 10)
    luaunit.assertEquals(monster_health, 1)
end

os.exit(luaunit.LuaUnit.run())
