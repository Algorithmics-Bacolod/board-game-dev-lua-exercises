luaunit = require('luaunit')

print("Exercise Output:")
dofile("exercise3.lua")
print("")

function testMadmanHealthAfterSequence()
    luaunit.assertEquals(madman_health, 20)
end

function testPlayerHealthAfterSequence()
    -- Player takes 12 damage 8 times: 100 - (8 * 12) = 4
    luaunit.assertEquals(player_health, 4)
end

function testInitialVariables()
    luaunit.assertEquals(madman_threshold, 20)
    luaunit.assertEquals(madman_attack, 12)
    luaunit.assertEquals(madman_health_cost, 10)
end

os.exit(luaunit.LuaUnit.run())