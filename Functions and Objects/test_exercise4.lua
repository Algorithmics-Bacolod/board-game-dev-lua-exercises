local luaunit = require "luaunit"
local test_utils = require "print_override"

print "Exercise Output:"
dofile "exercise4.lua"
print ""

function testDescribe()
    test_utils.capture_print()
    house:describe()
    local output = test_utils.get_captured_output()
    test_utils.restore_print()
    luaunit.assertEquals(output, "This house is red, has 5 rooms, and has a garage.")
end

function testPaint()
    house:paint("cerulean")
    luaunit.assertEquals(house.color, "cerulean")
end

function testAddRoom()
    local initial_rooms = house.num_rooms
    house:add_room()
    luaunit.assertEquals(house.num_rooms, initial_rooms + 1)
end

function testChangeOwner()
    house:change_owner("Bob")
    luaunit.assertEquals(house.owner, "Bob")
end

function tearDown()
    test_utils.cleanup()
end

os.exit(luaunit.LuaUnit.run())
