luaunit = require('luaunit')

-- Mock math.random to return specific values for testing
local original_random = math.random
local mock_price_changes = {-20, -15}  -- Will cause early exit: 100 -> 80 -> 65 (below 70)
local change_index = 1

-- The function that replaces math.random during the test
function math.random(min, max)
    if min == -15 and max == 15 then
        local change = mock_price_changes[change_index]
        change_index = change_index + 1
        return change
    else
        return original_random(min, max)
    end
end

print("Exercise Output:")
dofile("exercise6.lua")
print("")

function testInitialVariables()
    -- Check that initial variables were set correctly
    luaunit.assertEquals(sell_threshold, 70)
    luaunit.assertEquals(months_to_hold, 5)
    luaunit.assertNotNil(price_change_range)
    luaunit.assertEquals(price_change_range[1], -15)
    luaunit.assertEquals(price_change_range[2], 15)
end

function testStockPriceExists()
    -- Check that stock_price variable exists and is a number
    luaunit.assertNotNil(stock_price)
    luaunit.assertIsNumber(stock_price)
end

function testFinalStockPrice()
    -- With our mock data (-20, -15), final stock price should be 65
    -- Starting: 100, Month 1: 100 + (-20) = 80, Month 2: 80 + (-15) = 65 (triggers early exit)
    luaunit.assertEquals(stock_price, 65)
end

function testEarlyExit()
    -- With our mock data, the stock should be sold early (before 5 months)
    -- The final price of 65 is below the threshold of 70
    luaunit.assertTrue(stock_price < sell_threshold)
end

-- Restore original math.random after tests
function tearDown()
    math.random = original_random
end

os.exit(luaunit.LuaUnit.run())