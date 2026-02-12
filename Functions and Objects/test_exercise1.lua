local luaunit = require('luaunit')
local test_utils = require('print_override')

print "Exercise Output:"
dofile "exercise1.lua"
print ""

function testPrintHello()
    test_utils.capture_print()
    print_hello()
    local output = test_utils.get_captured_output()
    test_utils.restore_print()
    luaunit.assertEquals(output, "hello world")
end

function testPrintArgument()
    test_utils.capture_print()
    print_argument("test argument")
    local output = test_utils.get_captured_output()
    test_utils.restore_print()
    luaunit.assertEquals(output, "test argument")
end

function testReturnHello()
    local result = return_hello()
    luaunit.assertEquals(result, "hello mars")
end

function testAddNumbers()
    local result = add_numbers(5, 10)
    luaunit.assertEquals(result, 15)
    local result = add_numbers(-3, 7)
    luaunit.assertEquals(result, 4)
    local result = add_numbers(0, 0)
    luaunit.assertEquals(result, 0)
end

function testSumAndProduct()
    local sum, product = sum_and_product(4, 5)
    luaunit.assertEquals(sum, 9)
    luaunit.assertEquals(product, 20)
    local sum, product = sum_and_product(-2, 3)
    luaunit.assertEquals(sum, 1)
    luaunit.assertEquals(product, -6)
    local sum, product = sum_and_product(-1.5, 2.5)
    luaunit.assertEquals(sum, 1)
    luaunit.assertEquals(product, -3.75)
end

function testCheckNumber()
    local result = check_number(5)
    luaunit.assertEquals(result, "positive")
    local result = check_number(-3)
    luaunit.assertEquals(result, "negative")
    local result = check_number(0)
    luaunit.assertEquals(result, "zero")
end

function testSumAll()
    local result = sum_all(1, 2, 3, 4, 5)
    luaunit.assertEquals(result, 15)
    local result = sum_all(-1, -2, -3)
    luaunit.assertEquals(result, -6)
    local result = sum_all(0, 0, 0)
    luaunit.assertEquals(result, 0)
    local result = sum_all(1.5, 2.5, 3.5)
    luaunit.assertEquals(result, 7.5)
end

-- Restore original functions after tests
function tearDown()
    test_utils.cleanup()
end

os.exit(luaunit.LuaUnit.run())