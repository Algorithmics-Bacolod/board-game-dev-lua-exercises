luaunit = require('luaunit')

-- Mock math.random to return specific values for testing
local original_random = math.random
local mock_rolls = { 3, 1, 4, 2, 6 }
local roll_index = 1

-- The function that replaces math.random during the test
function math.random(min, max)
    if min == 1 and max == 6 then
        local roll = mock_rolls[roll_index]
        roll_index = roll_index + 1
        return roll
    else
        return original_random(min, max)
    end
end

print("Exercise Output:")
dofile("exercise4.lua")
print("")

function testDieRollEndsAtSix()
    -- The final die roll should be 6
    luaunit.assertEquals(die_roll, 6)
end

function testSuccessfulOutfitsCount()
    -- With our mock data (3,1,4,2,6), there should be exactly 4 successful outfits
    luaunit.assertEquals(successful_outfits, 4)
end

function testVariablesExist()
    -- Check that required variables exist
    luaunit.assertNotNil(die_roll)
    luaunit.assertNotNil(successful_outfits)
end

-- Restore original math.random after tests
function tearDown()
    math.random = original_random
end

os.exit(luaunit.LuaUnit.run())
