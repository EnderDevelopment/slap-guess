-- Slap Button Script

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local slapEvent = Instance.new("RemoteEvent")
slapEvent.Name = "SlapEvent"
slapEvent.Parent = ReplicatedStorage

local function onButtonClicked(player)
    -- Broadcast the slap event to all players
    slapEvent:FireAllClients(player)
end

-- Create a button for each player
for _, player in ipairs(Players:GetPlayers()) do
    local button = Instance.new("TextButton")
    button.Name = "SlapButton"
    button.Text = "Slap " .. player.Name
    button.Size = UDim2.new(0, 100, 0, 50)
    button.Position = UDim2.new(0.5, -50, 0.5, -25)
    button.Parent = player:WaitForChild("PlayerGui"):WaitForChild("MainGui")
    
    button.MouseButton1Click:Connect(function()
        onButtonClicked(player)
    end)
end

-- Handle new players joining
Players.PlayerAdded:Connect(function(player)
    local button = Instance.new("TextButton")
    button.Name = "SlapButton"
    button.Text = "Slap " .. player.Name
    button.Size = UDim2.new(0, 100, 0, 50)
    button.Position = UDim2.new(0.5, -50, 0.5, -25)
    button.Parent = player:WaitForChild("PlayerGui"):WaitForChild("MainGui")
    
    button.MouseButton1Click:Connect(function()
        onButtonClicked(player)
    end)
end)