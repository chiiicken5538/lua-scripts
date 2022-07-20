-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local keyboard_arrow_down = Instance.new("ImageButton")
local remove = Instance.new("ImageButton")
local Text = Instance.new("Frame")
local time = Instance.new("TextLabel")
local items = Instance.new("TextLabel")
local ping = Instance.new("TextLabel")
local ResetButton = Instance.new("TextButton")
local Shadow = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local ForceCrash = Instance.new("TextButton")
local Shadow_2 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local StartButton = Instance.new("TextButton")
local Shadow_3 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local items_2 = Instance.new("TextLabel")
local Crew = Instance.new("Frame")
local SelectedCrew = Instance.new("TextLabel")
local CrewNameContent = Instance.new("TextLabel")
local CrewIdContent = Instance.new("TextLabel")
local CrewName = Instance.new("TextLabel")
local CrewId = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")

local running = false
local counter = 0

-- Name generation:

function generateName(chars) 
    generatedChars = {}
    
    for i=1,chars do
        generatedChars[i] = string.char(math.random(32,126))
    end
    
    hiddenName = table.concat(generatedChars)

    return(hiddenName)
end

temp_screengui__name = generateName(24)

-- Anti multi execute script

if game:GetService("CoreGui"):FindFirstChild("cx DaHood Crasher") ~= nil then
    
    game:GetService("CoreGui"):FindFirstChild("cx DaHood Crasher").cxmainframe:TweenPosition(UDim2.new(-100, -100, -100, -100))
    task.wait(.5)
    game:GetService("CoreGui")["cx DaHood Crasher"]:Destroy()
    print("Old GUI Destroyed")
end


--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "cx DaHood Crasher"

Frame.Parent = ScreenGui
Frame.Name = "cxmainframe"
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.295162261, 0, 0.333333313, 0)
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.Draggable = true
Frame.Active = true 

Frame_2.Parent = Frame
Frame_2.Name = generateName(12)
Frame_2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 500, 0, 50)

TextLabel.Name = generateName(24)
TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0120000243, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 185, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "cx DaHood Crasher"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

keyboard_arrow_down.Name = generateName(6)
keyboard_arrow_down.Parent = Frame_2
keyboard_arrow_down.BackgroundTransparency = 1.000
keyboard_arrow_down.LayoutOrder = 19
keyboard_arrow_down.Position = UDim2.new(0.903999984, 0, 0.140000001, 0)
keyboard_arrow_down.Size = UDim2.new(0, 35, 0, 35)
keyboard_arrow_down.Visible = false
keyboard_arrow_down.ZIndex = 2
keyboard_arrow_down.Image = "rbxassetid://3926305904"
keyboard_arrow_down.ImageRectOffset = Vector2.new(404, 284)
keyboard_arrow_down.ImageRectSize = Vector2.new(36, 36)

remove.Name = generateName(6)
remove.Parent = Frame_2
remove.BackgroundTransparency = 1.000
remove.LayoutOrder = 8
remove.Position = UDim2.new(0.904000044, 0, 0.140000015, 0)
remove.Size = UDim2.new(0, 35, 0, 35)
remove.ZIndex = 2
remove.Image = "rbxassetid://3926307971"
remove.ImageRectOffset = Vector2.new(884, 284)
remove.ImageRectSize = Vector2.new(36, 36)

Text.Name = generateName(12)
Text.Parent = Frame
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0, 0, 0.166666672, 0)
Text.Size = UDim2.new(0, 500, 0, 250)

time.Name = generateName(12)
time.Parent = Text
time.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
time.BackgroundTransparency = 1.000
time.BorderSizePixel = 0
time.Position = UDim2.new(0.0320000015, 0, 0.0320000015, 0)
time.Size = UDim2.new(0, 247, 0, 50)
time.Font = Enum.Font.SourceSans
time.Text = "Time: 0min 00secs"
time.TextColor3 = Color3.fromRGB(255, 255, 255)
time.TextSize = 35.000
time.TextWrapped = true
time.TextXAlignment = Enum.TextXAlignment.Left

items.Name = generateName(7)
items.Parent = Text
items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
items.BackgroundTransparency = 1.000
items.BorderSizePixel = 0
items.Position = UDim2.new(0.0320000015, 0, 0.203999996, 0)
items.Size = UDim2.new(0, 241, 0, 50)
items.Font = Enum.Font.SourceSans
items.Text = "Items: 0/1500"
items.TextColor3 = Color3.fromRGB(255, 255, 255)
items.TextSize = 35.000
items.TextWrapped = true
items.TextXAlignment = Enum.TextXAlignment.Left

ping.Name = generateName(9)
ping.Parent = Text
ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ping.BackgroundTransparency = 1.000
ping.BorderSizePixel = 0
ping.Position = UDim2.new(0.0320000015, 0, 0.404000014, 0)
ping.Size = UDim2.new(0, 211, 0, 50)
ping.Font = Enum.Font.SourceSans
ping.Text = "Ping: 0ms"
ping.TextColor3 = Color3.fromRGB(255, 255, 255)
ping.TextSize = 35.000
ping.TextWrapped = true
ping.TextXAlignment = Enum.TextXAlignment.Left

ResetButton.Name = generateName(6)
ResetButton.Parent = Text
ResetButton.BackgroundColor3 = Color3.fromRGB(221, 221, 221)
ResetButton.BorderSizePixel = 0
ResetButton.Position = UDim2.new(0.0319999754, 0, 0.643999934, 0)
ResetButton.Size = UDim2.new(0, 139, 0, 32)
ResetButton.ZIndex = 2
ResetButton.Font = Enum.Font.GothamMedium
ResetButton.Text = ""
ResetButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ResetButton.TextScaled = true
ResetButton.TextSize = 14.000
ResetButton.TextWrapped = true

Shadow.Name = generateName(4)
Shadow.Parent = ResetButton
Shadow.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Shadow.BorderSizePixel = 0
Shadow.Size = UDim2.new(1, 0, 1, 4)

TextLabel_2.Name = generateName(8)
TextLabel_2.Parent = ResetButton
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(1, -20, 1, -20)
TextLabel_2.ZIndex = 2
TextLabel_2.Font = Enum.Font.GothamMedium
TextLabel_2.Text = "RESET"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

ForceCrash.Name = generateName(12)
ForceCrash.Parent = Text
ForceCrash.BackgroundColor3 = Color3.fromRGB(221, 221, 221)
ForceCrash.BorderSizePixel = 0
ForceCrash.Position = UDim2.new(0.338, 0, 0.819999993, 0)
ForceCrash.Size = UDim2.new(0, 139, 0, 32)
ForceCrash.ZIndex = 2
ForceCrash.Font = Enum.Font.GothamMedium
ForceCrash.Text = ""
ForceCrash.TextColor3 = Color3.fromRGB(255, 255, 255)
ForceCrash.TextScaled = true
ForceCrash.TextSize = 14.000
ForceCrash.TextWrapped = true

Shadow_2.Name = generateName(5)
Shadow_2.Parent = ForceCrash
Shadow_2.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Shadow_2.BorderSizePixel = 0
Shadow_2.Size = UDim2.new(1, 0, 1, 4)

TextLabel_3.Parent = ForceCrash
TextLabel_3.Name = generateName(12)
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(1, -20, 1, -20)
TextLabel_3.ZIndex = 2
TextLabel_3.Font = Enum.Font.GothamMedium
TextLabel_3.Text = "Force Crash"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

StartButton.Name = generateName(12)
StartButton.Parent = Text
StartButton.BackgroundColor3 = Color3.fromRGB(221, 221, 221)
StartButton.BorderSizePixel = 0
StartButton.Position = UDim2.new(0.0319999754, 0, 0.819999933, 0)
StartButton.Size = UDim2.new(0, 139, 0, 32)
StartButton.ZIndex = 2
StartButton.Font = Enum.Font.GothamMedium
StartButton.Text = ""
StartButton.TextColor3 = Color3.fromRGB(255, 255, 255)
StartButton.TextScaled = true
StartButton.TextSize = 14.000
StartButton.TextWrapped = true

Shadow_3.Name = generateName(6)
Shadow_3.Parent = StartButton
Shadow_3.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
Shadow_3.BorderSizePixel = 0
Shadow_3.Size = UDim2.new(1, 0, 1, 4)

TextLabel_4.Parent = StartButton
TextLabel_4.Name = generateName(8)
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(1, -20, 1, -20)
TextLabel_4.ZIndex = 2
TextLabel_4.Font = Enum.Font.GothamMedium
TextLabel_4.Text = "Start"
TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

items_2.Name = generateName(12)
items_2.Parent = Text
items_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
items_2.BackgroundTransparency = 1.000
items_2.BorderSizePixel = 0
items_2.Position = UDim2.new(0.684000015, 0, 0.0319999903, 0)
items_2.Size = UDim2.new(0, 135, 0, 50)
items_2.Font = Enum.Font.SourceSans
items_2.Text = "Selected Crew"
items_2.TextColor3 = Color3.fromRGB(255, 255, 255)
items_2.TextSize = 25.000
items_2.TextWrapped = true
items_2.TextXAlignment = Enum.TextXAlignment.Left

Crew.Name = generateName(16)
Crew.Parent = Text
Crew.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Crew.BorderSizePixel = 0
Crew.Position = UDim2.new(0.648000002, 0, 0, 0)
Crew.Size = UDim2.new(0, 176, 0, 250)

SelectedCrew.Name = generateName(14)
SelectedCrew.Parent = Crew
SelectedCrew.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SelectedCrew.BackgroundTransparency = 1.000
SelectedCrew.BorderSizePixel = 0
SelectedCrew.Size = UDim2.new(0, 176, 0, 50)
SelectedCrew.Font = Enum.Font.SourceSans
SelectedCrew.RichText = true
SelectedCrew.Text = "<u>Selected Crew</u>"
SelectedCrew.TextColor3 = Color3.fromRGB(255, 255, 255)
SelectedCrew.TextScaled = true
SelectedCrew.TextSize = 14.000
SelectedCrew.TextWrapped = true

CrewNameContent.Name = generateName(12)
CrewNameContent.Parent = Crew
CrewNameContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrewNameContent.BackgroundTransparency = 1.000
CrewNameContent.BorderSizePixel = 0
CrewNameContent.Position = UDim2.new(0, 0, 0.355999976, 0)
CrewNameContent.Size = UDim2.new(0, 176, 0, 27)
CrewNameContent.Font = Enum.Font.SourceSans
CrewNameContent.Text = "Iku scripts"
CrewNameContent.TextColor3 = Color3.fromRGB(255, 255, 255)
CrewNameContent.TextScaled = true
CrewNameContent.TextSize = 14.000
CrewNameContent.TextWrapped = true

CrewIdContent.Name = generateName(8)
CrewIdContent.Parent = Crew
CrewIdContent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrewIdContent.BackgroundTransparency = 10.000
CrewIdContent.BorderSizePixel = 0
CrewIdContent.Position = UDim2.new(0, 0, 0.641000032, 0)
CrewIdContent.Size = UDim2.new(0, 176, 0, 24)
CrewIdContent.Font = Enum.Font.SourceSans
CrewIdContent.Text = "1234567"
CrewIdContent.TextColor3 = Color3.fromRGB(255, 255, 255)
CrewIdContent.TextScaled = true
CrewIdContent.TextSize = 14.000
CrewIdContent.TextWrapped = true

CrewName.Name = generateName(7)
CrewName.Parent = Crew
CrewName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrewName.BackgroundTransparency = 1.000
CrewName.BorderSizePixel = 0
CrewName.Position = UDim2.new(0, 0, 0.247999996, 0)
CrewName.Size = UDim2.new(0, 176, 0, 27)
CrewName.Font = Enum.Font.SourceSans
CrewName.Text = "<u>Crew Name</u>"
CrewName.RichText = true
CrewName.TextColor3 = Color3.fromRGB(255, 255, 255)
CrewName.TextScaled = true
CrewName.TextSize = 14.000
CrewName.TextWrapped = true

CrewId.Name = generateName(9)
CrewId.Parent = Crew
CrewId.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CrewId.BackgroundTransparency = 1.000
CrewId.BorderSizePixel = 0
CrewId.Position = UDim2.new(0, 0, 0.535999954, 0)
CrewId.Size = UDim2.new(0, 176, 0, 27)
CrewId.Font = Enum.Font.SourceSans
CrewId.Text = "<u>Crew Id</u>"
CrewId.RichText = true
CrewId.TextColor3 = Color3.fromRGB(255, 255, 255)
CrewId.TextScaled = true
CrewId.TextSize = 14.000
CrewId.TextWrapped = true

TextLabel_5.Parent = Crew
TextLabel_5.Name = generateName(15)
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0, 0, 0.907999992, 0)
TextLabel_5.Size = UDim2.new(0, 176, 0, 21)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "made by chiiicken#3436"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 14.000

local object = Frame
object.AnchorPoint = Vector2.new(0.5, 0.5)
object.Position = UDim2.new(-5, -5, -5, -5)
task.wait(.5)
object:TweenPosition(UDim2.new(.2, 0, .3, 0))


-- Listeners:

remove.MouseButton1Click:Connect(function()
    remove.Visible = false
    keyboard_arrow_down.Visible = true
    Text.Visible = false
    Frame.BackgroundTransparency = 1
end)

keyboard_arrow_down.MouseButton1Click:Connect(function()

    keyboard_arrow_down.Visible = false
    remove.Visible = true
    Text.Visible = true
    Frame.BackgroundTransparency = 0
    
end)

StartButton.MouseButton1Click:Connect(function()
    running = true
end)

repeat task.wait(1)
    if running == true then
        counter = counter +1
        time.Text = "Time: 0min " .. counter .. "secs"
    end
until game.GameId == 0

-- Script:

if game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") == nil then
    game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "cxCrash - Script Loaded",
            Text = "The script is already loaded. You will see the UI when DaHood is fully loaded",
            Duration = 3,
        }
    )   
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "cxCrash",
            Text = "Script loaded",
            Duration = .1,
        }
    )
end


