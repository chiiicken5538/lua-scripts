if game.PlaceId == 6516141723 or 6839171747 then

    isSynapseUsingLibary = is_syn_closure and true or is_fluxus_closure and false or is_krnl_closure and false or false

    if isSynapseUsingLibary then
        syn.queue_on_teleport(function()
            game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
                if State == Enum.TeleportState.Started then
                    syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/chiiicken5538/lua-scripts/main/DoorsAntiRush.lua"))()')
                end
            end)
        end)
    else
        queue_on_teleport(function()
            game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
                if State == Enum.TeleportState.Started then
                    queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/chiiicken5538/lua-scripts/main/DoorsAntiRush.lua"))()')
                end
            end)
        end)
    end
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/chiiicken5538/lua-scripts/main/DoorsAntiRush.lua"))()

else
    print("oops, looks like you executed this script in another game then doors. The script will not be executed!")
end
