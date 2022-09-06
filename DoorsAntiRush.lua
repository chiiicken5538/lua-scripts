if game.PlaceId == (6516141723 or 6839171747)  then

    local ui = Instance.new("ScreenGui")
    local ui_frame = Instance.new("Frame")
    local ui_text = Instance.new("TextLabel")

    generatedChars = {}

    for i=1,12 do
        generatedChars[i] = string.char(math.random(32,126))
    end

    hiddenName = table.concat(generatedChars)

    ui.Name = hiddenName
    ui.Parent = game:GetService("CoreGui")

    ui_frame.Name = hiddenName
    ui_frame.Parent = game:GetService("CoreGui"):FindFirstChild(hiddenName)
    ui_frame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    ui_frame.BorderColor3 = Color3.fromRGB(12, 12, 12)
    ui_frame.BorderSizePixel = 100
    ui_frame.Visible = false
    ui_frame.Position = UDim2.new(0, 1, 0, 1)
    ui_frame.Size = UDim2.new(1, 0, 1, 0)


    ui_text.Name = hiddenName
    ui_text.Parent = ui_frame
    ui_text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ui_text.BackgroundTransparency = 1.000
    ui_text.Position = UDim2.new(0.43553561, 0, 0.460150361, 0)
    ui_text.Size = UDim2.new(0, 200, 0, 50)
    ui_text.Font = Enum.Font.GothamBold
    ui_text.TextColor3 = Color3.fromRGB(255, 255, 255)
    ui_text.TextSize = 18.000
    ui_text.Text = "hello"
            
    function setUIText(str)
        ui_text.Text = str
    end

    function showUI()
        ui_frame.Visible = true
    end

    function hideUI()
        ui_frame.Visible = false
    end



    while task.wait() do
        for k, v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "RushMoving" then
                if (game:GetService("Workspace"):FindFirstChild("RushMoving"):FindFirstChild("RushNew").Position -
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then

                        setUIText("Please wait a few seconds...")
                        showUI()

                        task.wait()

                        prev_position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                            
                        game:GetService("Players").LocalPlayer.Character:MoveTo(Vector3.new(
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X,
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y + 50,
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z
                        ))
            
                        repeat task.wait()
                        until game:GetService("Workspace"):FindFirstChild("RushMoving") == nil
            
            
                        game:GetService("Players").LocalPlayer.Character:MoveTo(Vector3.new(prev_position))
            
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Title = "Rush gone!",
                            Text = "You will be teleported back!"
                        })
                        task.wait(4)
                        hideUI()
                end
            end
        end
    end
else
    print("oops, looks like you executed this script in another game then doors. The script will not be executed!")
end
