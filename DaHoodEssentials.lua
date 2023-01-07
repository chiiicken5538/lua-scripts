
--[[

getgenv().Settings = {
    Macro = {
        Enabled = true,
    },

    LowerGFX = {
        Enabled = true
    }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/chiiicken5538/lua-scripts/main/DaHoodEssentials.lua"))()

]]

if not game:IsLoaded() then
    game.Loaded:Wait()
end

repeat task.wait()
until game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") ~= nil


if getgenv().Settings.Macro.Enabled then
    local macro = false

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Q then
            macro = true

            repeat 
                keypress(0x49)
                game:GetService("RunService").Heartbeat:wait()
                keypress(0x4F)
                game:GetService("RunService").Heartbeat:wait()
                keyrelease(0x49)
                game:GetService("RunService").Heartbeat:wait()
                keyrelease(0x4F)
                game:GetService("RunService").Heartbeat:wait()
                keypress(0x49)
                game:GetService("RunService").Heartbeat:wait()
                keypress(0x4F)
                game:GetService("RunService").Heartbeat:wait()
                keyrelease(0x49)
                game:GetService("RunService").Heartbeat:wait()
                keyrelease(0x4F)
                game:GetService("RunService").Heartbeat:wait()
            until not macro 
        end
    end)

    game:GetService("UserInputService").InputEnded:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.Q then
            macro = false
        end
    end)
end

-----------------------------------
-----------------------------------

if getgenv().Settings.LowerGFX.Enabled then
    game:GetService("Lighting").FogEnd = 9e9
    game:GetService("Lighting").Brightness = 0
    game:GetService("Lighting").GlobalShadows = false


    for i, v in pairs(game:GetDescendants()) do
        if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
            v.Material = "Plastic"
            v.Reflectance = 0
        end
    end
end
