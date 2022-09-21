repeat wait() until game:IsLoaded()
if game.PlaceId == 8425637426 then
   local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
   local Window = OrionLib:MakeWindow({Name = "Write a Letter x Gura Hub", HidePremium = true})
   
   local Players = game:GetService("Players").LocalPlayer
   OrionLib:MakeNotification({
       Name = "Shar Script",
       Content = "Welcome "..Players.Name.."!",
       Image = "rbxassetid://",
       Time = 5
   })
   
   local Tab = Window:MakeTab({
       Name = "Info",
       Icon = "rbxassetid://",
       PremiumOnly = false
   })
   
   Tab:AddParagraph("Username :",Players.Name)
   
   Tab:AddParagraph("Current Executor : ",identifyexecutor())
   
   local Section = Tab:AddSection({
       Name = "Script Information"
   })
   Tab:AddParagraph("Version :", "V1.1.3")
   
   Tab:AddParagraph("Last Update :", "21/09/2022")
   local Section = Tab:AddSection({
       Name = "Developper Information"
   })
   Tab:AddParagraph("Scripter :", "lobox920#9889")
   
   Tab:AddParagraph("My Discord :", "discord.gg/FKHmERC6y5")
   
   Tab:AddParagraph("Ui Library :", "Orion Library")

   local Tab = Window:MakeTab({
   	Name = "Emotes",
   	Icon = "",
   	PremiumOnly = false
   })
   local Section = Tab:AddSection({
	Name = "<3"
})
   Tab:AddButton({
	Name = "Stop Animation",
	Callback = function()
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid
		local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
		for _,v in pairs(ActiveTracks) do
			v:Stop()
		end
	end    
})
   local Section = Tab:AddSection({
	Name = "Floaty"
})
   Tab:AddDropdown({
   	Name = "Floaty",
   	Default = "",
   	Options = {"Air Spin", "Floaty Sit", "Floaty Lay", "Meditation", "Ambitious Flight"},
   	Callback = function(Value)
   		if Value == "Air Spin" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Air Spin"].Animation)
           a:Play()
		elseif Value == "Floaty Sit" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Floaty Sit"].Core)
           a:Play()
        elseif Value == "Floaty Lay" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Floaty Lay"].Core)
           a:Play()
		elseif Value == "Meditation" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty.Meditation.Core)
           a:Play()
        elseif Value == "Ambitious Flight" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Ambitious Flight"].Animation)
           a:Play()
        end
   	end
    })
	local Section = Tab:AddSection({
		Name = "Powers"
	})
   Tab:AddDropdown({
   	Name = "Powers",
   	Default = "",
   	Options = {"Particles 1", "Particles 2", "Particles 3", "Particles 4", "Particles 5"},
   	Callback = function(Value)
        if Value == "Particles 1" then
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers.Particles.Core)
              a:Play()
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers.Particles.Idle1)
              a:Play()
		elseif Value == "Particles 2" then
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 2"].Core)
              a:Play()
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 2"].In)
              a:Play()
   		
		elseif Value == "Particles 3" then
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 3"].Core)
              a:Play()
		elseif Value == "Particles 4" then
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 4"].Core)
              a:Play()
              a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 4"].Idle1)
              a:Play()
		elseif Value == "Particles 5" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 5"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 5"].In)
               a:Play()
   		end
   	end    
   })
   local Section = Tab:AddSection({
	Name = "Dance"
})
   Tab:AddDropdown({
   	Name = "Dance",
   	Default = "",
   	Options = {"Penguin", "Cat dance", "ChuChu","Spooky", "Caramell"},
   	Callback = function(Value)
   		if Value == "Penguin" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.Penguin.Core)
           a:Play()
		elseif Value == "Cat dance" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance["Cat dance"].Core)
           a:Play()
		elseif Value == "ChuChu" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.ChuChu.Core)
           a:Play()
        elseif Value == "Spooky" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.Spooky.Core)
           a:Play()
		elseif Value == "Caramell" then
           a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.Caramell.Core)
           a:Play()
        end
   	end    
   })
   local Section = Tab:AddSection({
	Name = "Weapon 1"
   })
   Tab:AddDropdown({
	Name = "Weapons",
	Default = "",
	Options = {"Gun Point", "Slidy", "Sword", "Sword 2", "Sword 3","Sword 4", "Knife"},
	Callback = function(Value)
		if Value == "Gun Point" then
			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Gun point"].In)
		 a:Play()
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Gun point"].Core)
		 a:Play()
	 elseif Value == "Slidy" then
			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Slidy"].Core)
			a:Play()			
		
		elseif Value == "Sword" then
			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons.Sword.Core)
		 a:Play()
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons.Sword.Idle1)
		 a:Play()
		elseif Value == "Sword 2" then
			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 2"].Core)
		 a:Play()
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 2"].Idle1)
		 a:Play()
	 elseif Value == "Sword 3" then
			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 3"].Core)
		 a:Play()
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 3"].In)
		 a:Play()
		 wait(0.5)
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 3"].Idle1)
		 a:Play()
	 elseif Value == "Sword 4" then
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 4"].Core)
		 a:Play()
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 4"].Idle1)
		 a:Play()
	 elseif Value == "Knife" then
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Knife"].Core)
		 a:Play()
		 a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Knife"].Idle1)
		 a:Play()
		end
	end
 })
    local Section = Tab:AddSection({
		Name = "Weapon 2"
	})
    Tab:AddDropdown({
    	Name = "Sniper",
    	Default = "",
    	Options = {"Start", "Idle1","Idle2","Idle3","Idle4"},
    	Callback = function(Value)
    		if Value == "Start" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Sniper.Core):Play()
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Sniper.In):Play()
    		elseif Value == "Idle1" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Sniper.Idle1):Play()
			elseif Value == "Idle2" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Sniper.Idle2):Play()
			elseif Value == "Idle3" then
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Sniper.Idle3):Play()
			elseif Value == "Idle4" then
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Sniper.Idle4):Play()
			end
    	end    
    })
    Tab:AddDropdown({
    	Name = "Scythe",
    	Default = "",
    	Options = {"Start", "Idle1",},
    	Callback = function(Value)
    		if Value == "Start" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Scythe.Core):Play()
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Scythe.In):Play()
    		elseif Value == "Idle1" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Scythe.Idle1):Play()
			end
    	end    
    })
    Tab:AddDropdown({
    	Name = "Pistol",
    	Default = "",
    	Options = {"Start", "Idle1","Idle2","Idle3","Idle4"},
    	Callback = function(Value)
    		if Value == "Start" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Pistol.Core):Play()
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Pistol.In):Play()
    		elseif Value == "Idle1" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Pistol.Idle1):Play()
			elseif Value == "Idle2" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Pistol.Idle2):Play()
			elseif Value == "Idle3" then
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Pistol.Idle3):Play()
			elseif Value == "Idle4" then
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Pistol.Idle4):Play()
			end
    	end    
    })
	Tab:AddDropdown({
    	Name = "Rifle",
    	Default = "",
    	Options = {"Start", "Idle1","Idle2","Idle3","Idle4"},
    	Callback = function(Value)
    		if Value == "Start" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Rifle.Core):Play()
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Rifle.In):Play()
    		elseif Value == "Idle1" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Rifle.Idle1):Play()
			elseif Value == "Idle2" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Rifle.Idle2):Play()
			elseif Value == "Idle3" then
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Rifle.Idle3):Play()
			elseif Value == "Idle4" then
				game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"].Rifle.Idle4):Play()
			end
    	end    
    })
    Tab:AddDropdown({
    	Name = "Great Sword",
    	Default = "",
    	Options = {"Start", "Idle1","Idle2"},
    	Callback = function(Value)
    		if Value == "Start" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"]["Great Sword"].Core):Play()
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"]["Great Sword"].In):Play()
    		end
    		if Value == "Idle1" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"]["Great Sword"].Idle1):Play()
    		end
    		if Value == "Idle2" then
    			game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs["Weapons 2"]["Great Sword"].Idle2):Play()
    		end
    	end    
    })
end
