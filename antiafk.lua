local virtualUser = game:GetService("VirtualUser")

game:GetService("Players").LocalPlayer.Idled:connect(function()
   virtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   virtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
