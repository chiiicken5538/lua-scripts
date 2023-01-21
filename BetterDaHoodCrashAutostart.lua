if not game:IsLoaded() then
    print("[BDH Crash Autostart] Waiting for Roblox to load...")
    game.Loaded:Wait()
end

if game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") == nil then
    print("[BDH Crash Autostart] Waiting for DaHood to load...")

    repeat task.wait() 
    until game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") ~= nil
end


print("[BDH Crash Autostart] Executing BetterDaHood Crash")
loadstring(game:HttpGet('https://raw.githubusercontent.com/BetterDaHood/BetterDaHoodCrasher/main/Crash'))()


print("[BDH Crash Autostart] Waiting for BetterDaHood Crash to load...")

repeat task.wait()
until game:GetService("CoreGui").CrasherGui.CrasherFrame ~= nil

print("[BDH Crash Autostart] Loaded!")


repeat task.wait()
until game:GetService("CoreGui"):FindFirstChild("CrasherGui"):FindFirstChild("CrasherFrame"):FindFirstChild("SafeCrash") ~= nil 

print("[BDH Crash Autostart] Crash is starting...")
for k, v in pairs(getconnections(game:GetService("CoreGui").CrasherGui.CrasherFrame.SafeCrash.MouseButton1Down)) do
    v:Fire()
end 
