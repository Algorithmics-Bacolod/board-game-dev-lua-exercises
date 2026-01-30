luaunit = require('luaunit')

print("Exercise Output:")
dofile("exercise1.lua")
print("")

function testPlayerHealthAfterAttacks()
    luaunit.assertEquals(player_health, 75)
end

os.exit(luaunit.LuaUnit.run())