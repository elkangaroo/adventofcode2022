-- Input: Number of calories each Elf is carrying, one item per line. Blank line = next Elf.
-- Output: Find the Elf carrying the most Calories. How many total Calories is that Elf carrying?
print("Hello Day 1")

require "common"

function sum(input)
    local elements = {}
    local i = 1

    for _, element in ipairs(input) do
        if element ~= '' then
            elements[i] = element + (elements[i] or 0)
        else
            i = i + 1
        end
    end

    return elements
end

-- Example Input: "day1_exampleinput.txt"
local input = read("day1_input.txt")
local inputsum = sum(input)

local result = math.max(table.unpack(inputsum))

-- Example Result: 24000
print("Day 1 Result: " .. result)

table.sort(inputsum)

local result2 = table.remove(inputsum) + table.remove(inputsum) + table.remove(inputsum)

-- Example Result Part II: 45000
print("Day 1 Part II Result: " .. result2)
