local vu = game:GetService("VirtualUser")

game.StarterGui:SetCore("SendNotification", {
    Title = "AntiAFK";
    Text = "AntiAFK enabled - This will prevent Idle kicks";
    Duration = 5;
})

game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
