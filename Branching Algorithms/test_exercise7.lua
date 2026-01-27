-- Test file for Exercise 7
luaunit = require('luaunit')

function testNoItems()
    has_sacred_sword = false
    has_magic_shield = false
    has_ancient_spellbook = false
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, false)
end

function testOnlySpellbook()
    has_sacred_sword = false
    has_magic_shield = false
    has_ancient_spellbook = true
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, true)
end

function testSwordAndShield()
    has_sacred_sword = true
    has_magic_shield = true
    has_ancient_spellbook = false
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, true)
end

function testOnlySword()
    has_sacred_sword = true
    has_magic_shield = false
    has_ancient_spellbook = false
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, false)
end

function testOnlyShield()
    has_sacred_sword = false
    has_magic_shield = true
    has_ancient_spellbook = false
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, false)
end

function testSwordAndSpellbook()
    has_sacred_sword = true
    has_magic_shield = false
    has_ancient_spellbook = true
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, true)
end

function testShieldAndSpellbook()
    has_sacred_sword = false
    has_magic_shield = true
    has_ancient_spellbook = true
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, true)
end

function testAllItems()
    has_sacred_sword = true
    has_magic_shield = true
    has_ancient_spellbook = true
    dofile('exercise7.lua')
    luaunit.assertEquals(can_defeat_final_boss, true)
end

os.exit(luaunit.LuaUnit.run())