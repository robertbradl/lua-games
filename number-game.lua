local function check(num1, num2)
    if num1 < num2 then
        return 1
    elseif num1 > num2 then
        return 2
    else
        return 0
    end
end

local function search(lowerbound, upperbound, num)
    local guess = math.floor((lowerbound + upperbound) / 2)
    print("Guessing: ", guess)
    local result = check(guess, num)
    if result == 1 then
        return search((guess + 1), upperbound, num)
    elseif result == 2 then
        return search(lowerbound, (guess - 1), num)
    else
        return guess
    end
end

function Main()
    math.randomseed(os.time())
    local lowerbound = 1
    local upperbound = 20000

    local num = math.random(lowerbound, upperbound)

    print("Starting search...")

    print("Correct number was: ", search(lowerbound, upperbound, num))
end

Main()
