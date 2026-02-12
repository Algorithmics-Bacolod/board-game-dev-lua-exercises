luaunit = require "luaunit"
test_utils = require "print_override"

print "Exercise Output:"
dofile "exercise3.lua"
print ""

function testConvertedNumber()
    luaunit.assertEquals(converted_number, 123)
end

function testConvertedString()
    luaunit.assertEquals(converted_string, "456")
end

function testCurrentDateTime()
    luaunit.assertIsNumber(current_date_time)
    luaunit.assertTrue(current_date_time > 1770880522) -- Check if it's a reasonable timestamp (after 2025-01-01)
end

function testRandomNumber()
    luaunit.assertIsNumber(random_number)
    luaunit.assertTrue(random_number >= 1 and random_number <= 100)
end

function testSortedTable()
    local expected_sorted_table = { 1, 2, 5, 5, 6, 9 }
    for i, v in ipairs(sorting_table) do
        luaunit.assertEquals(v, expected_sorted_table[i])
    end
end

function testStringLength()
    luaunit.assertEquals(string_length, 13)
end

function tearDown()
    test_utils.cleanup()
end

os.exit(luaunit.LuaUnit.run())
