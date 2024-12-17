local Players = game:GetService("Players")

-- Function to apply a highlight to a player's character
local function applyHighlight(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local highlight = Instance.new("Highlight")
    highlight.Parent = character
    highlight.Archivable = true
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Enabled = true
    highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Customize the color as needed
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
end

-- Apply highlights to all current players
for _, player in pairs(Players:GetPlayers()) do
    applyHighlight(player)
end

-- Listen for new players joining and apply highlights to them
Players.PlayerAdded:Connect(applyHighlight)
