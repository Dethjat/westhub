local Player = game.Players.LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "WESTHUB Key system", HidePremium = false, SaveConfig = true, IntroEnabled = true })

function MakeKeyCorrectNoti()
    OrionLib:MakeNotification({
    Name = 'NOTIFICATION!',
    Content = 'The key you entered was correct. Please wait...',
    Icon = 'rbxassetid://4483345998',
    Time = 5
})
end

function NoKeyNoti()
OrionLib:MakeNotification({
    Name = 'NOTIFICATION!',
    Content = 'You need to enter a key.',
    Icon = 'rbxassetid://4483345998',
    Time = 5
})
end
 
function MakeKeyIncorrectNoti()
    OrionLib:MakeNotification({
    Name = 'NOTIFICATION!',
    Content = 'The key you entered was incorrect. Please try again.',
    Icon = 'rbxassetid://4483345998',
    Time = 5
})
end

function MakeScriptHub()
        local Window2 = OrionLib:MakeWindow({Name = 'WESTHUB Duping System', HidePremium = false, SaveConfig = true, IntroEnabled = true})
       local Tab2 = Window2:MakeTab({
        Name = 'BGS Dupe',
        Icon = 'rbxassetid://4483345998',
        PremiumOnly = false
    })
    Tab2:AddButton({
        Name = 'Execute',
        Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/iHHjGuUP'))()
        --print('yeah')
        end
    })
    local Tab3 = Window2:MakeTab({
        Name = 'reroll.gg',
        Icon = 'rbxassetid://4483345998',
        PremiumOnly = false
    })
    Tab3:AddButton({
        Name = 'reroll.gg',
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/eVbCm6UF'))()
        end
    })
    local Tab4 = Window2:MakeTab({
    Name = 'Coming soon...',
    Icon = 'rbxassetid://4483345998',
    PremiumOnly
})
    end

local Tab1 = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
    Name = "NOTIFICATION!",
    Content =  "Welcome, "..Player.Name..".",
    Time = 5
})

_G.Key = '0cc5efe42c5c9ae41df3b71c8e3d6ab784eac040a2c88da88b47ee51bbd3e6cc',
_G.KeyInput == 'string'

Tab1:AddTextbox({
	Name = "Enter Key",
	Default = "KEY",
	TextDisappear = false,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab1:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
                MakeScriptHub()
                MakeKeyCorrectNoti()
            else
                MakeKeyIncorrectNoti()
            end
  	end    
})

OrionLib:Init()
