
--[[
  This is a addon that sets your DaHood Cash as description in your Roblox Account Manager

    -> If you think I am cookie logging your accounts just read the code its fucking open source

  made by chiiicken#3436 with the official RAM Account API

]]--

--[[
            -- CHANGELOG --

            07/11/2022 updated script loader: Script doesn't throws errors anymore when using autoexecute

            07/20/2022 cleaned up some code ;; Replaced deprecated luau methods ;; added message on roblox load ;; showing dahood loading message only when dahood is not loaded
            -- CHANGELOG --
]]--

--[[

IF THE SCRIPT IS NOT WORKING THEN MAKE SURE TO COPY THE FOLLOWING SETTINGS IN YOUR "RAMSettings.ini" FILE !!!


[Developer]
DevMode=false
EnableWebServer=true

[WebServer]
WebServerPort=7963
AllowGetCookie=false
AllowGetAccounts=true
AllowLaunchAccount=true
AllowAccountEditing=true
EveryRequestRequiresPassword=false

]]--


-- Script Loader
if not game:IsLoaded() then
  print("[RAMStats] Waiting for Roblox to load...")
	game.Loaded:Wait()
end



if game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") == nil then

  print("[RAMStats] Waiting for DaHood to load...")

  repeat task.wait()
  until game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder") ~= nil

  print("[RAMStats] Script ready.")

end



-- Main script

local RAMAccount = loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua"))()

local MyAccount = RAMAccount.new(game:GetService'Players'.LocalPlayer.Name)

function format(amount)
    local formatted = amount

    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1.%2')
        if (k==0) then
            break
        end
    end

    return formatted
end

if MyAccount then

    print("[RAMStats] Updated RAM description")

    MyAccount:SetDescription("$"..format(game:GetService("Players").LocalPlayer:FindFirstChild("DataFolder").Currency.Value))

    return

end
