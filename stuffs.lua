local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = 'WESTHUB'})

local Tab = Window:MakeTab({
	Name = "Tab #1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Section"
})

OrionLib:MakeNotification({
	Name = "NOTIFICATION!",
	Content = "Thank you for using WESTHUB, "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

ButtonPressed({
OrionLib:MakeNotification({
	Name = "NOTIFICATION!",
	Content = "Button Pressed.",
	Image = "rbxassetid://4483345998",
	Time = 5
})

  end  
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
    ButtonPressed()
  	end    
})
Tab:AddToggle({
	Name = "toggle button",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})
Tab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		print(Value)
	end	  
})
Tab:AddSlider({
	Name = "Slider",
	Min = 0,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]
