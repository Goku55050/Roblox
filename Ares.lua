-- Troll Script by Ares
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)
gui.Name = "TrollGUI"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.3, 0, 0.4, 0)
frame.Position = UDim2.new(0.35, 0, 0.1, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.1, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "Ares' Troll Script"
title.TextColor3 = Color3.new(1, 1, 1)

local playersButton = Instance.new("TextButton", frame)
playersButton.Size = UDim2.new(0.8, 0, 0.1, 0)
playersButton.Position = UDim2.new(0.1, 0, 0.2, 0)
playersButton.Text = "Troll Players"
playersButton.MouseButton1Click:Connect(function()
    local players = game.Players:GetPlayers()
    for i, player in pairs(players) do
        if player ~= game.Players.LocalPlayer then
            -- Troll features
            player.Character.HumanoidRootPart.CFrame = CFrame.new(0, 1000, 0) -- Send them flying
            player.Character:FindFirstChild("Skateboard").Enabled = false -- Disable their skateboard
            -- Add more features here...
        end
    end
end)

local adminButton = Instance.new("TextButton", frame)
adminButton.Size = UDim2.new(0.8, 0, 0.1, 0)
adminButton.Position = UDim2.new(0.1, 0, 0.4, 0)
adminButton.Text = "Give Admin"
adminButton.MouseButton1Click:Connect(function()
    -- Admin code here...
end)

local closeButton = Instance.new("TextButton", frame)
closeButton.Size = UDim2.new(0.2, 0, 0.1, 0)
closeButton.Position = UDim2.new(0.8, 0, 0, 0)
closeButton.Text = "X"
closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
