-- Guessing System Script

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local guessEvent = Instance.new("RemoteEvent")
guessEvent.Name = "GuessEvent"
guessEvent.Parent = ReplicatedStorage

local function onGuessSubmitted(player, guess)
    -- Handle the guess
    print(player.Name .. " guessed: " .. guess)
    
    -- You can add additional logic here, such as checking if the guess is correct and updating scores
end

guessEvent.OnServerEvent:Connect(function(player, guess)
    onGuessSubmitted(player, guess)
end)