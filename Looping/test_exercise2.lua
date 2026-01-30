luaunit = require('luaunit')

print("Exercise Output:")
dofile("exercise2.lua")
print("")

function testEnemyHealthReduction()
    -- Check that all enemies had their health reduced by 10
    luaunit.assertEquals(enemies[1].health, 20)  -- Agent: 30 - 10 = 20
    luaunit.assertEquals(enemies[2].health, 40)  -- Spy: 50 - 10 = 40
    luaunit.assertEquals(enemies[3].health, 70)  -- Thug: 80 - 10 = 70
end

function testFlamethrowerDamage()
    luaunit.assertEquals(flamethrower_damage, 10)
end

os.exit(luaunit.LuaUnit.run())