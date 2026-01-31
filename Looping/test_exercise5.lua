luaunit = require('luaunit')
local test_utils = require('print_override')

-- Mock math.random to return specific values for testing
local original_random = math.random

local mock_rolls = {
    -- Combat rolls (1-20): 16, 12 (for difficulty 15 and 18)
    [20] = {16, 12},
    -- Discovery rolls (1-10): 8, 3
    [10] = {8, 3},
    -- Trade rolls (1-15): 11 (for difficulty 10)
    [15] = {11}
}

-- Track which roll we're on for each range
local roll_indices = {[20] = 1, [10] = 1, [15] = 1}

-- The function that replaces math.random during the test
function math.random(min, max)
    if min == 1 and mock_rolls[max] and mock_rolls[max][roll_indices[max]] then
        local roll = mock_rolls[max][roll_indices[max]]
        roll_indices[max] = roll_indices[max] + 1
        return roll
    else
        return original_random(min, max)
    end
end

-- Start capturing print output
test_utils.capture_print()

print("Exercise Output:")
dofile("exercise5.lua")
print("")

function testStarSystemEventsExist()
    -- Check that star_system_events table exists and has events
    luaunit.assertNotNil(star_system_events)
    luaunit.assertTrue(#star_system_events >= 4)
end

function testEventStructure()
    -- Check that each event has required fields
    for _, event in ipairs(star_system_events) do
        luaunit.assertNotNil(event.type)
        luaunit.assertNotNil(event.description)
        luaunit.assertNotNil(event.difficulty)
        luaunit.assertIsString(event.type)
        luaunit.assertIsString(event.description)
        luaunit.assertIsNumber(event.difficulty)
    end
end

function testEventTypes()
    -- Check that we have different event types
    local types = {}
    for _, event in ipairs(star_system_events) do
        types[event.type] = true
    end
    -- Should have at least 2 different event types
    local type_count = 0
    for _ in pairs(types) do
        type_count = type_count + 1
    end
    luaunit.assertTrue(type_count >= 2)
end

function testDeterministicRolls()
    -- With our mock data, we can test specific outcomes
    local output = test_utils.get_captured_output()
    
    -- Combat event 1 (difficulty 15): roll 16 should succeed
    luaunit.assertStrContains(output, "Combat succeeded with a roll of 16!")
    
    -- Combat event 2 (difficulty 18): roll 12 should fail  
    luaunit.assertStrContains(output, "Combat failed with a roll of 12.")
    
    -- Trade event (difficulty 10): roll 11 should succeed
    luaunit.assertStrContains(output, "Trade successful with a roll of 11!")
    
    -- Discovery events should get rolls of 8 and 3
    luaunit.assertStrContains(output, "Discovery roll: 8")
    luaunit.assertStrContains(output, "Discovery roll: 3")
end

-- Restore original functions after tests
function tearDown()
    math.random = original_random
    test_utils.cleanup()
end

os.exit(luaunit.LuaUnit.run())