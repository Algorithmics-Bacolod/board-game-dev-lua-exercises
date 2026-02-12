-- Test utilities for capturing output and mocking functions
local test_utils = {}

-- Store original functions
local original_print = print
local captured_output = {}

-- Print override that captures output
function test_utils.capture_print()
    captured_output = {}
    
    function print(...)
        local args = {...}
        local output = ""
        for i, arg in ipairs(args) do
            output = output .. tostring(arg)
            if i < #args then output = output .. "\t" end
        end
        table.insert(captured_output, output)
        original_print(...)
    end
end

-- Get all captured output as a single string
function test_utils.get_captured_output()
    return table.concat(captured_output, "\n")
end

-- Get captured output as an array of lines
function test_utils.get_captured_lines()
    return captured_output
end

-- Clear captured output
function test_utils.clear_captured_output()
    captured_output = {}
end

-- Restore original print function
function test_utils.restore_print()
    print = original_print
end

-- Complete cleanup - restore all overrides
function test_utils.cleanup()
    print = original_print
    captured_output = {}
end

return test_utils