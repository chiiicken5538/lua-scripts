--[[
  
  This is a addon that sets your DaHood Cash as description in your Roblox Account Manager

    -> If you think I am cookie logging your accounts just read the code its fucking open source

  made by chiiicken#3536 with the official RAM Account API 

]]--

--[[

IF THE SCRIPT IS NOT WORKING THEN MAKE SURE TO COPY THE FOLLOWING SETTINGS IN YOUR "RAMSettings.ini" FILE !!!
    
    
[WebServer]
WebServerPort=7963
AllowGetCookie=true
AllowGetAccounts=true
AllowLaunchAccount=true
AllowAccountEditing=true
EveryRequestRequiresPassword=false


]]--


local RAMAccount = loadstring(game:HttpGet'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua')()

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
    
    print("Updated RAM description")
    
    MyAccount:SetDescription("$"..format(game:GetService("Players").LocalPlayer.DataFolder.Currency.Value))

end
