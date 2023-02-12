if not game:IsLoaded() then
    print("[czo/iku Crash Autostart] Waiting for Roblox to load...")
    game.Loaded:Wait()
end

if game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") == nil then
    print("[czo/iku Crash Autostart] Waiting for DaHood to load...")

    repeat task.wait() 
    until game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") ~= nil
end

print("[czo/iku Crash Autostart] Executing Crash")
loadstring(game:HttpGet("https://github.com/applless/nya/raw/main/meow"))()

print("[czo/iku Crash Autostart] Waiting for Crash to load...")

repeat task.wait()
until game:GetService("CoreGui").CRASH:FindFirstChild("Main") ~= nil 

print("[czo/iku Crash Autostart] Loaded!")

print("[czo/iku Crash Autostart] Crash is starting...")
for k, v in pairs(getconnections(game:GetService("CoreGui").CRASH.Main.Toggle.MouseButton1Down)) do
    v:Fire()
end 

print("[czo/iku Crash Autostart] Finished!")
