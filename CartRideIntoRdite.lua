local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({ Name = "Cart Ride Into Rdite!",  HidePremium = true,  SaveConfig = true,  ConfigFolder = "chiiicken#3436", IntroText = "Cart Ride Into Rdite!" })
local PlayerTab = Window:MakeTab({ Name = "Player", PremiumOnly = false })
local ServerTab = Window:MakeTab({ Name = "Server", PremiumOnly = false })
local TeleportsTab = Window:MakeTab({ Name = "Teleports", PremiumOnly = false })
local CreditsTab = Window:MakeTab({ Name = "Credits", PremiumOnly = false })


local flySpeed = 30


local UIS = game:GetService("UserInputService")
local OnRender = game:GetService("RunService").RenderStepped

local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()

local Camera = workspace.CurrentCamera
local Root = Character:WaitForChild("HumanoidRootPart")

local C1, C2, C3;
local Nav = {Flying = false, Forward = false, Backward = false, Left = false, Right = false}

PlayerTab:AddSection({ Name = "Player" })
ServerTab:AddSection({ Name = "Server" })
TeleportsTab:AddSection({ Name = "Teleports" })

CreditsTab:AddParagraph("Credits","\n  \nCreator: chiiicken#3436\nScript version: 1.0 \n  \n  \n  \n  \n  \n  \n  \n  \n  \nDiscord: https://discord.gg/xPfN7WYyKR")




CreditsTab:AddButton({
	Name = "Join Discord",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Joining discord",
            Content = "Attempt to join Discord Server - You can find the Invite in your clipboard.",
            Time = 12
        })

        setclipboard("https://discord.gg/xPfN7WYyKR")
        
        local request = 
            (http_request) or 
            (request) or 
            (HttpPost) or 
            (syn.request)

        request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = "xPfN7WYyKR",
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
        })
  	end
})


PlayerTab:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Fly",
            Content = "Enabled (Press x to toggle)",
            Image = "rbxassetid://3926307971",
            Time = 1
        })
  	end
})

PlayerTab:AddSlider({
	Name = "Fly Speed",
	Min = 20,
	Max = 70,
	Default = 30,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Flyspeed",
	Callback = function(Value)
		print(Value)
	end    
})



PlayerTab:AddButton({
	Name = "Reset",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Resetting...",
            Content = "Please wait - This can take up to 5 seconds.",
            Image = "rbxassetid://3926307971",
            Time = 5
        })
        for k, v in pairs(game:GetService("Workspace"):FindFirstChild(game:GetService("Players").LocalPlayer.Name):GetChildren()) do
            v:Destroy()
        end
  	end
})



OrionLib:Init()