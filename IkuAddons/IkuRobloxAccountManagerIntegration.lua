local localPlayer = game:GetService("Players").LocalPlayer


--/ Roblox Account Manager API
local RAMAccount = loadstring(game:HttpGet'https://raw.githubusercontent.com/ic3w0lf22/Roblox-Account-Manager/master/RAMAccount.lua')()
local MyAccount = RAMAccount.new(game:GetService'Players'.LocalPlayer.Name)



if MyAccount then
    print('[RAM-Integration] Successfully loaded Account ' .. localPlayer.display)

    MyAccount:SetDescription("$".. localPlayer.DataFolder.Currency.Value)
    
    print('[RAM-Integration] Updated description ($'.. localPlayer.DataFolder.Currency.Value ..')')
end
