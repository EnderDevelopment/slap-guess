-- Slap Detection Script

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local slapEvent = ReplicatedStorage:WaitForChild("SlapEvent")

local function onSlapDetected(slapper, slapped)
    -- Handle the slap action
    print(slapper.Name .. " slapped " .. slapped.Name)
    
    -- You can add additional logic here, such as updating scores or displaying messages
end

slapEvent.OnServerEvent:Connect(function(player, targetPlayer)
    onSlapDetected(player, targetPlayer)
end)