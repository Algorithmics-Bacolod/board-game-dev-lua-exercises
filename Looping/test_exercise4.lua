luaunit = require('luaunit')

print("Exercise Output:")
dofile("exercise4.lua")
print("")

function testDieRollEndsAtSix()
    -- The final die roll should be 6
    luaunit.assertEquals(die_roll, 6)
end

function testSuccessfulOutfitsCount()
    -- successful_outfits should be non-negative
    luaunit.assertTrue(successful_outfits >= 0)
end

function testVariablesExist()
    -- Check that required variables exist
    luaunit.assertNotNil(die_roll)
    luaunit.assertNotNil(successful_outfits)
end

os.exit(luaunit.LuaUnit.run())