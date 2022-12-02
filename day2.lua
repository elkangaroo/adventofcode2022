-- Input: An encrypted strategy guide for (R)ock-(P)aper-(S)cissors: opponent A=R, B=P, C=S and response X=R, Y=P, Z=S
-- Output: Total score = Shape Score (R=1, P=2, S=3) + Outcome Score (Loose = 0, Draw = 3, Win = 6)
print("Hello Day 2")

require "common"

function decryptsum(input, scores)
    local sum = 0

    for _, element in ipairs(input) do
        sum = sum + scores[element]
    end

    return sum
end

-- Example Input: "day2_exampleinput.txt"
local input = read("day2_input.txt")

-- Shape Score (X = 1, Y = 2, Z = 3) + Outcome Score (Loose = 0, Draw = 3, Win = 6)
local scores = {}
scores['A X'] = 1+3
scores['A Y'] = 2+6
scores['A Z'] = 3+0
scores['B X'] = 1+0
scores['B Y'] = 2+3
scores['B Z'] = 3+6
scores['C X'] = 1+6
scores['C Y'] = 2+0
scores['C Z'] = 3+3

local result = decryptsum(input, scores)

-- Example Result: 15
print("Day 2 Result: " .. result)

-- Strategy (X = Loose, Y = Draw, Z = Win)
local strategy = {}
strategy['A X'] = scores['A Z']
strategy['A Y'] = scores['A X']
strategy['A Z'] = scores['A Y']
strategy['B X'] = scores['B X']
strategy['B Y'] = scores['B Y']
strategy['B Z'] = scores['B Z']
strategy['C X'] = scores['C Y']
strategy['C Y'] = scores['C Z']
strategy['C Z'] = scores['C X']

local result2 = decryptsum(input, strategy)

-- Example Result Part II: 12
print("Day 2 Part II Result: " .. result2)
