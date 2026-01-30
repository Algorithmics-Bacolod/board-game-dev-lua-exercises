luaunit = require('luaunit')

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

os.exit(luaunit.LuaUnit.run())