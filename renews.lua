local Players = game:GetService("Players")

local function applyHighlight(player)
    local character = player.Character or player.CharacterAdded:Wait()

    if character then
        local highlight = Instance.new("Highlight")
        highlight.Parent = character
        highlight.Archivable = true
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Enabled = true
        highlight.FillColor = Color3.fromRGB(255, 0, 0)
        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
    end
end

for _, player in pairs(Players:GetPlayers()) do
    applyHighlight(player)
end

Players.PlayerAdded:Connect(applyHighlight)
