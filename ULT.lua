--[[
    Ultimate Lua Tester
    By: HunDread
    Version: 1.0
    Description: Tests Lua to see if it is running perfectly and make sures that its console is perfectly fine!
    LEVEL 3 coming soon :)
]]

-- DO NOT DELETE
function sleep(n)
    local t = os.clock()
    while os.clock() - t <= n do
      -- Absolutely Nothing :)
    end
end

function error()
    return end
end

-- Normal Test
print("Hello World") -- Tested Print
sleep(1)
print("Print function working")
sleep(1)
-- Heres where the basic kickers begin.
--[[
    LEVEL INFO
    LEVEL 1: SIMPLE AND BASIC TESTS
    LEVEL 2: FUNCTIONALITY TESTS
    LEVEL 3: ADVANCED TESTINGS
]]

-- LEVEL 1:
-- FUNCTION TESTING
function X()
    print(
        "Hello World"
    )
end

function Y()
    print("WOAH")
    X()
end

function Z()
    X()
    print("This is a nice world!")
end

Z()

if print then
    print("Function Method Success")
else
    print("FUNCTION_ERROR")
    error();
end

sleep(1)

-- LOOP TEST
local CookieCounter = 0 -- No cookies?
while CookieCounter ~= 100 do
    sleep(0.5)
    print("Generating "..CookieCounter.." Cookies...")
    CookieCounter = CookieCounter + 1
end
if CookieCounter == 100 then
    print("Loop Test Success")
else
    print("FUNCTION_ERROR")
    error();
end

-- LEVEL 2
-- LONG PRINT TEST

function printFormattedMessage(message, name, age)
    local formattedMessage = string.format(message, name, age)
    print(formattedMessage)
end

function generateRandomAge(min, max)
    return math.random(min, max)
end


local messageFormat = "Hello, %s! You are %d years old."


local people = {
    {name="Alice", minAge=18, maxAge=30},
    {name="Bob", minAge=25, maxAge=40},
    {name="Charlie", minAge=35, maxAge=50},
    {name="Dave", minAge=45, maxAge=60},
    {name="Eve", minAge=55, maxAge=70},
}


for i, person in ipairs(people) do
    local age = generateRandomAge(person.minAge, person.maxAge)
    printFormattedMessage(messageFormat, person.name, age)
end

if print then
    print("Long print test success")
else
    print("FUNCTION_ERROR")
    error();
end

print("Results: If you are reading this, That means your system is good to go and can run Lua efficiently with no errors! If you are completely confused what just happened, This is a console test script that tests the quality of your console. Basically useless but thanks for running this beautiful program.")
print("This will close in 100 seconds unless you manually close this program")
sleep(100)
error();
