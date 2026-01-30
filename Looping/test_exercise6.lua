luaunit = require('luaunit')

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
    -- Final stock price should be either below threshold or any value after 5 months
    luaunit.assertNotNil(stock_price)
    -- The stock price could be anything depending on random changes
    luaunit.assertIsNumber(stock_price)
end

os.exit(luaunit.LuaUnit.run())