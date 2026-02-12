local luaunit = require "luaunit"
local test_utils = require "print_override"

print "Exercise Output:"
dofile "exercise2.lua"
print ""

function testPlayerTurn()
    test_utils.capture_print()
    player_turn(1)
    local output = test_utils.get_captured_output()
    test_utils.restore_print()
    luaunit.assertStrContains(output, "Player 1's turn")
    luaunit.assertStrContains(output, "Player 1 rolls the dice")
    luaunit.assertStrContains(output, "Player 1 moves")
end

function testPlayerTurnPlayer2()
    test_utils.capture_print()
    player_turn(2)
    local output = test_utils.get_captured_output()
    test_utils.restore_print()
    luaunit.assertStrContains(output, "Player 2's turn")
    luaunit.assertStrContains(output, "Player 2 rolls the dice")
    luaunit.assertStrContains(output, "Player 2 moves")
end

function testPlayerTurnPlayer3()
    test_utils.capture_print()
    player_turn(3)
    local output = test_utils.get_captured_output()
    test_utils.restore_print()
    luaunit.assertStrContains(output, "Player 3's turn")
    luaunit.assertStrContains(output, "Player 3 rolls the dice")
    luaunit.assertStrContains(output, "Player 3 moves")
end

function tearDown()
    test_utils.cleanup()
end

os.exit(luaunit.LuaUnit.run())