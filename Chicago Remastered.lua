local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))()
ESP:Toggle(true)
ESP.Players = true 
ESP.Tracers = false 
ESP.Boxes = false 
ESP.Names = false




local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Chicago Remastered x SharScript", HidePremium = true, SaveConfig = true, ConfigFolder = "Shar Script"})

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
	end    
})



Tab:AddSlider({
	Name = "JumPower",
	Min = 6,
	Max = 50,
	Default = 6,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpHeight = (Value)
	end    
})

Tab:AddButton({
	Name = "Sit",
	Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
  	end    
})

Tab:AddTextbox({
	Name = "TP to player (ENTER FULL ROBLOX NAME)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Value].Character.HumanoidRootPart.CFrame
	end	  
})



local Tab = Window:MakeTab({
	Name = "Teleport",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Bank")

Tab:AddButton({
	Name = "Goto Bank Door",
	Callback = function()
      	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-246, 5, 94)}):Play()
  	end    
})

Tab:AddButton({
	Name = "Goto Bank Vault",
	Callback = function()
      	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-220, -6, 117)}):Play()
  	end    
})

Tab:AddLabel("Jewellry")

Tab:AddButton({
	Name = "Goto jewelry store",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(603, 3, -201)}):Play()
	end    
})

Tab:AddLabel("Shop")


Tab:AddButton({
	Name = "Goto Gun Shop",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(117, 3, 47)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Blox-N-Out",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(588, 4, -75)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto The Pitch",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(709, 3, -96)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Bike Shop",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(743, 3, -208)}):Play()
	end    
})

Tab:AddLabel("Dealer")

Tab:AddButton({
	Name = "Goto Bank Dealer NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-9, -9, -26)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Bike Dealer NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(742, 1, -215)}):Play()
	end    
})


Tab:AddLabel("NPC")

Tab:AddButton({
	Name = "Goto Gun Store NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(122, 3, 47)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Deli NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-68, 3, 59)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto 2nd Deli NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(234, 3, -181)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto 7/11 Shp NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-61, 3, -194)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Gas Station NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(338, 3, -40)}):Play()
	end    
})

Tab:AddButton({
	Name = "Goto Blox General NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(643, 3, 82)}):Play()
	end    
})
Tab:AddButton({
	Name = "Goto In-N-Out NPC",
	Callback = function()
	    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 7, -84)}):Play()
	end    
})

local Tab = Window:MakeTab({
	Name = "Money",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Farm")





Tab:AddToggle({
	Name = "AutoFarm (All Job) Recommended",
	Default = false,
	Callback = function(Value)
        getgenv().AutoFarmGlobal = (Value)
	while AutoFarmGlobal do
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

		------- BODEGA
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-81, 6, 65)}):Play();
		wait(1)
		
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
		
		wait(0.5)
		
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-76, 13, 56)}):Play();
		
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
		
		wait(2)
		
		------- BARETENDER
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-249, 3, -47)}):Play();
		wait(0.5)
		
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
		wait(5)
		------- FRIEWORK 
		
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(600, 4, -96)}):Play();
		
		wait(1)
		
		fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
		
		wait(5)
		
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 4, -86)}):Play();
		
		wait(0.5)
		end
end    
})



Tab:AddToggle({
	Name = "AutoRob (ONLY STORE)",
	Default = false,
	Callback = function(Value)
        getgenv().Autorobstore = (Value)

        -- Anti kick afk
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
		--
		
		----------------------------------------------------------------------------------------------------------------------------------------------------
	while Autorobstore do
		------------- IL BRAQUE LE KFC 
		if game:GetService("Workspace").Map.NPCs.InNOutNPC.RobValues.cooldown.Value == true then
		
		else
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(589.576233, 4.51501942, -81.5663528, 0.90208447, 6.4622796e-09, -0.431559473, 2.41140299e-08, 1, 6.53795666e-08, 0.431559473, -6.93845266e-08, 0.90208447)}):Play()
			wait(0.5)
			local ohString1 = "InNOutNPC"
			game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
			wait(5)
		end
		--- TP DANS LA SAFE ZONE
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
		wait(0.5)
		-------------- IL BRAQUE LA SUPERETTE 7/11
		if game:GetService("Workspace").Map.NPCs["7/11NPC"].RobValues.cooldown.Value == true then
		else
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-65.8490982, 3.47316074, -194.744827, -0.0265948288, 3.41664652e-08, -0.999646306, 1.10695026e-08, 1, 3.388406e-08, 0.999646306, -1.01644462e-08, -0.0265948288)}):Play()
			wait(0.5)
			local ohString1 = "7/11NPC"
			game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
			wait(5)
		end
		--- TP DANS LA SAFE ZONE
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
		
		------------- IL BRAQUE LA STATION SERVICE
		
		if game:GetService("Workspace").Map.NPCs.GasStationNPC.RobValues.cooldown.Value == true then
		else
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(338.800415, 3.7742219, -45.2131996, -0.999761283, -7.49826796e-08, 0.0218488555, -7.59862004e-08, 1, -4.5100073e-08, -0.0218488555, -4.67495198e-08, -0.999761283)}):Play()
			wait(0.5)
			
			local ohString1 = "GasStationNPC"
			game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
			wait(5)
		end

		--- TP DANS LA SAFE ZONE
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
		wait(0.5)
		
		------------ IL BRAQUE LE DELI NPC 2
		if game:GetService("Workspace").Map.NPCs.Deli2NPC.RobValues.cooldown.Value == true then
		else
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(234.3237, 3.24997902, -187.245102, -0.999642611, -1.07214717e-08, 0.0267333444, -8.79396467e-09, 1, 7.22187892e-08, -0.0267333444, 7.1957885e-08, -0.999642611)}):Play()
			wait(0.5)
			local ohString1 = "Deli2NPC"
			game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
			wait(5)
		end
		--- TP DANS LA SAFE ZONE
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
		wait(0.5)
		
		------------ IL BRAQUE LE BLOXGENERAL
		if game:GetService("Workspace").Map.NPCs.BloxGeneralNPC.RobValues.cooldown.Value == true then
		else
			game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(652.790466, 3.27521968, 78.5791245, 0.999864817, 3.25941869e-08, -0.016441917, -3.2850128e-08, 1, -1.52964645e-08, 0.016441917, 1.58345159e-08, 0.999864817)}):Play()
			wait(0.5)
			local ohString1 = "BloxGeneralNPC"
			game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
			wait(5)
		end
		--- TP DANS LA SAFE ZONE
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
		wait(0.5)
		------------- IL BRAQUE LE BLOXGENERAL2
		if game:GetService("Workspace").Map.NPCs.BloxGeneralNPC2.RobValues.cooldown.Value == true then
		else
		    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(653.025757, 3.27522063, 89.830246, 0.999956131, 3.56903951e-09, 0.00936501753, -2.95632585e-09, 1, -6.54396288e-08, -0.00936501753, 6.54090755e-08, 0.999956131)}):Play()
		    wait(0.5)
		    local ohString1 = "BloxGeneralNPC2"
		    game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
		    wait(5)
		end
		--- TP DANS LA SAFE ZONE
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
		wait(0.5)
		----------------------------------------------------------------------------------------------------------------------------------------------------
	end
end    
})

Tab:AddToggle({
	Name = "AutoFarm (Bodega)",
	Default = false,
	Callback = function(Value)
        getgenv().AutoBodega = (Value)
	while AutoBodega do

		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-81, 6, 65)}):Play();
		wait(1)
		
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
		
		wait(0.5)
		
		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-76, 13, 56)}):Play();
		
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
		wait(1)
		end
end    
})

Tab:AddToggle({
	Name = "AutoFarm (FrieWork)",
	Default = false,
	Callback = function(Value)
        getgenv().AutoFrieWork = (Value)
	while AutoFrieWork do
		
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(600, 4, -96)}):Play();
		
		wait(1)
		
		fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
		
		wait(5)

		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(590, 4, -86)}):Play();
		
		wait(0.5)
		end
end    
})

Tab:AddToggle({
	Name = "AutoFarm (Bartender)",
	Default = false,
	Callback = function(Value)
        getgenv().AutoBartender = (Value)
	while AutoBartender do	

		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

		game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-249, 3, -47)}):Play();
		wait(0.5)
		
		fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
		wait(5)
	end
end    
})










Tab:AddLabel("ATM")

Tab:AddTextbox({
	Name = "Deposite Custom Amount",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
		local ohString1 = "Deposit"
		local ohString2 = Value
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
	end	  
})

Tab:AddTextbox({
	Name = "WithDraw Custom Amount",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
		local ohString1 = "Withdraw"
		local ohString2 = Value
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
	end	  
})


Tab:AddButton({
	Name = "Open ATM",
	Callback = function()
	game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector.MaxActivationDistance = 999999986991104
	fireclickdetector(game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector, 999999986991104)
end    
})

Tab:AddButton({
	Name = "Deposit All Money",
	Callback = function()
		mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
		local ohString1 = "Deposit"
		local ohString2 = mycash
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
end
})

Tab:AddButton({
	Name = "WithDraw All Money",
	Callback = function()
		mybank = game.Players.LocalPlayer.Data.Stats.Bank.Value
			local ohString1 = "Withdraw"
			local ohString2 = mybank
			game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
	end    
})


Tab:AddButton({
	Name = "Fake Money",
	Callback = function()
    game.Players.LocalPlayer.Data.Stats.Cash.Value = 10000000000 
    game.Players.LocalPlayer.Data.Stats.Bank.Value = 10000000000 
  	end    
})

Tab:AddButton({
	Name = "Actualise Money",
	Callback = function()
		local ohString1 = "Withdraw"
		local ohString2 = "1"
		game:GetService("ReplicatedStorage")._network.atm:InvokeServer(ohString1, ohString2)
  	end    
})

local Tab = Window:MakeTab({
	Name = "Shop",
	Icon = "",
	PremiumOnly = false
})
Tab:AddLabel("Buy Gun")

----------------------------------------------------------------- GUN
Tab:AddButton({
	Name = "Buy Ruger LCP (Cost 2500$)",
	Callback = function()
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 2500 then

		
		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "Ruger LCP"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes   
    elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 2500 then
		OrionLib:MakeNotification({
		Name = "Shop",
		Content = "Require 2500$ to buy a Ruger LCP",
		Image = "rbxassetid://2022095309",
		Time = 5
	    })
    end
end 

})
Tab:AddButton({
	Name = "Buy Makarov (Cost 2750$)",
	Callback = function()

	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 2750 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "Makarov"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 2750 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2500$ to buy a Makarov",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy G26 (Cost 2900$)",
	Callback = function()

		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 2900 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "G26"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 2900 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2900$ to buy a G26",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy G17 (Cost 3000$)",
	Callback = function()	
		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 3000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "G17"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 3000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 3000$ to buy a G17",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy Berreta M9 (Cost 3500$)",
	Callback = function()
		
		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 3500 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "Berreta M9"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 3500 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 3500$ to buy a Berreta M9",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy 1911 (Cost 4000$)",
	Callback = function()
		
		
	if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 4000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "1911"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 4000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 4000$ to buy a 1911",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy G20 (Cost 5000$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 5000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "G20"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 5000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2900$ to buy a G20",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
Tab:AddButton({
	Name = "Buy Body Armor (Cost 20000$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 20000 then

		game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(119.04763, 3.24572945, 46.8957443, 0.036562264, -9.65525437e-09, -0.999331355, 1.32148585e-07, 1, -4.82683049e-09, 0.999331355, -1.31883752e-07, 0.036562264)
		wait(0.5)
		fireproximityprompt(game:GetService("Workspace").Map.NPCs.GunstoreNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "gun_store"
		local ohString2 = "BodyArmor"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 20000 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 2900$ to buy a Body Armor",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end       
})
----------------------------------------------------------------- MASK

Tab:AddLabel("Mask")

Tab:AddButton({
	Name = "Buy Shiesty Mask (Cost 25$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 25 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Shiesty"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 25 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 25$ to buy a Shiesty Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})
Tab:AddButton({
	Name = "Buy Open Balaclava Mask (Cost 25$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 25 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "OpenBalaclava"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 25 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 25$ to buy a Open Balaclava Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end     
})


Tab:AddButton({
	Name = "Buy Balaclava Mask (Cost 25$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 25 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Balaclava"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 25 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 25$ to buy a Balaclava Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end        
})

Tab:AddButton({
	Name = "Buy Surgical White Mask (Cost 6$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 6 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Surgical Mask (White)"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 6 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 6$ to buy a Surgical White Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end       
})

Tab:AddButton({
	Name = "Buy Surgical Black Mask (Cost 6$)",
	Callback = function()

		
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 6 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Surgical Mask (Black)"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes

	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 6 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 6$ to buy a Surgical Black Mask",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})
----------------------------------------------------------------- FOOD

Tab:AddLabel("Food")

Tab:AddButton({
	Name = "Buy Water (Cost 15$)",
	Callback = function()
		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 15 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "Water"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 15 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 15$ to buy Water",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end    
})

Tab:AddButton({
	Name = "Buy Bloxy Cola (Cost 10$)",
	Callback = function()

		if game.Players.LocalPlayer.Data.Stats.Cash.Value >= 10 then

		game:GetService("Workspace").Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt.RequiresLineOfSight = false

		yes = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.1425247, 3.55489969, 57.7317085, -0.0533979461, -7.1409616e-08, 0.998573303, -1.13012544e-09, 1, 7.14512041e-08, -0.998573303, 2.68683453e-09, -0.0533979461)
		wait(0.5)
		fireproximityprompt(game.Workspace.Map.NPCs.DeliNPC.HumanoidRootPart.PromptAttachment.ProximityPrompt, 1, true)

		wait(0.5)
		local ohString1 = "deli"
		local ohString2 = "BloxyCola"
		game:GetService("ReplicatedStorage")._network.purchase:InvokeServer(ohString1, ohString2)
		wait()
		local ohInstance1 = game:GetService("Players").LocalPlayer.PlayerGui.Shop
		game:GetService("ReplicatedStorage")._network.terminate:FireServer(ohInstance1)

		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = yes
	elseif game.Players.LocalPlayer.Data.Stats.Cash.Value <= 10 then
		OrionLib:MakeNotification({
			Name = "Shop",
			Content = "Require 10$ to buy a Bloxy Cola",
			Image = "rbxassetid://2022095309",
			Time = 5
		})
	end
end      
})












local Tab = Window:MakeTab({
	Name = "Visual",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("ESP")





Tab:AddToggle({
	Name = "toggle",
	Default = false,
	Callback = function(Value)
	    
	    	ESP:Toggle(Value)
	end    
})

Tab:AddToggle({
	Name = "box",
	Default = false,
	Callback = function(box)
		ESP.Boxes = (box)
	end    
})

Tab:AddToggle({
	Name = "tracer",
	Default = false,
	Callback = function(tracer)
		
		ESP.Tracers = (tracer)
	end    
})

Tab:AddToggle({
	Name = "name",
	Default = false,
	Callback = function(name)
		
		 ESP.Names = (name)
	end    
})



Tab:AddSlider({
	Name = "FOV",
	Min = 0,
	Max = 120,
	Default = game.Players.LocalPlayer.Data.Settings.FOV.Value,
	Increment = 1,
	ValueName = "fov",
	Callback = function(Value)
		game.Players.LocalPlayer.Data.Settings.FOV.Value = (Value)
	end    
})

Tab:AddButton({
	Name = "Unlock Zoom Render Distance",
	Callback = function()
	    game.Players.LocalPlayer.CameraMaxZoomDistance = 1280
	end    
})



local Tab = Window:MakeTab({
	Name = "Other",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Yeah")


Tab:AddToggle({
	Name = "Chat logs",
	Default = false,
	Callback = function(Value)
	    V = Value
        if V == true then
            local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
            ChatFrame.ChatChannelParentFrame.Visible = true
            ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), ChatFrame.ChatChannelParentFrame.Size.Y)
        elseif V == false then
            local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
            ChatFrame.ChatChannelParentFrame.Visible = false
            ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(0, 0, 0, 0)
        end		
	end    
})


Tab:AddButton({
	Name = "Gun No Recoil",
	Callback = function()
		local delay_hook = nil 
		delay_hook = replaceclosure(delay, newcclosure(function(...)
			local Arguments = ({...})
   
   if getcallingscript() and getcallingscript().Name ~= "GunClient" then 
       return delay_hook(...)
   end
   
   table.foreach(Arguments, function(Index, Value)
       if Value and type(Value) == "function" then 
           local valid_constants = getconstants(Value)
           if valid_constants and table.find(valid_constants, "CoordinateFrame") then 
               setconstant(Value, 12, "focus")
           end
       end
   end)
   
   return delay_hook(...)
end))

	    
	end    
})

Tab:AddLabel("Toggle Ui")


Tab:AddBind({
	Name = "Toggle Ui",
	Default = Enum.KeyCode.LeftAlt,
	Hold = false,
	Callback = function()
	    if game:GetService("CoreGui").Orion.Enabled == true then
		game:GetService("CoreGui").Orion.Enabled = false
		else
		game:GetService("CoreGui").Orion.Enabled = true
		end
	end    
})




local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Credits")

Tab:AddParagraph("Scripter :","Made by lobox920#9889")

Tab:AddParagraph("Ui libary","Name : Orion Libary by shlex")

Tab:AddParagraph("No Recoil","Made by xaxa#1414")

Tab:AddParagraph("ESP","Made by garfield#9172 from Criminality Open Source")

Tab:AddLabel("Discord")


Tab:AddButton({
	Name = "Join Sirus Discord (Orion Lib discord)",
	Callback = function()
      	syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "yWdmdv2BmP",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
	end  
})


Tab:AddButton({
	Name = "Join My Discord",
	Callback = function()
      	syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "g2rmfEtvaj",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
	end  
})

------------------


OrionLib:MakeNotification({
	Name = "Last Update : 13/05/2022",
	Content = "Added : AutoRob Store",
	Time = 10
})




OrionLib:Init()
