-- Рандомизация числа
local function generateRandomNumber()
    math.randomseed(os.time())
    return math.random(1, 100)
end

-- Флаг, который определеяет: перезапускать игру или нет
RepeatGame = true

while (RepeatGame) do
    local guessedNumber = generateRandomNumber()

    io.write("Я загадал число и вам нужно попробовать его отгадать!\n")

    print(guessedNumber)

    -- Счетчик попыток
    local counter = 0
    
    -- Флаг, который определяет: найдено ли число
    NumberFound = false

    while (NumberFound ~= true) do
        io.write("Введите число: ")

        local userNumber = tonumber(io.read())
        counter = counter + 1

        if userNumber > guessedNumber then
            io.write("Загаданное число меньше! Попробуйте еще раз.\n")
        else if userNumber < guessedNumber then
            io.write("Загаданное число больше! Попробуйте еще раз.\n")
        else 
            io.write("Вы угадали! Вам понадобилось " .. counter .. " попыток!\n")
            NumberFound = true
        end
        end
    end

    io.write("Хотите сыграть еще? y/n ")
    local choice = io.read()

    if string.lower(choice) ~= "y" then
        io.write("Спасибо за игру!\n")
        RepeatGame = false
    end
end
