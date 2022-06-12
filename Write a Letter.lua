repeat wait() until game:IsLoaded()
if game.PlaceId == 7167319176 then
   local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
   local Window = OrionLib:MakeWindow({Name = "Write a Letter x SharScript", HidePremium = true})
   
   local Tab = Window:MakeTab({
   	Name = "Tab 1",
   	Icon = "rbxassetid://4483345998",
   	PremiumOnly = false
   })
   Tab:AddDropdown({
   	Name = "Floaty",
   	Default = "",
   	Options = {"Air Spin", "Floaty Sit", "Floaty Lay", "Mediation", "Ambitious Flight"},
   	Callback = function(Value)
   		if Value == "Air Spin" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Air Spin"].Animation)
               a:Play()
           end
           if Value == "Floaty Sit" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Floaty Sit"].Core)
               a:Play()
           end
           if Value == "Floaty Lay" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Floaty Lay"].Core)
               a:Play()
           end
           if Value == "Meditation" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty.Meditation.Core)
               a:Play()
           end
           if Value == "Ambitious Flight" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Floaty["Ambitious Flight"].Animation)
               a:Play()
           end
   	end    
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
   		end
   		if Value == "Slidy" then
   			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Slidy"].Core)
   			a:Play()			
           end
   		if Value == "Sword" then
   			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons.Sword.Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons.Sword.Idle1)
               a:Play()
   		end
   		if Value == "Sword 2" then
   			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 2"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 2"].Idle1)
               a:Play()
   		end
           if Value == "Sword 3" then
   			a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 3"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 3"].In)
               a:Play()
               wait(0.5)
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 3"].Idle1)
               a:Play()
   		end
           if Value == "Sword 4" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 4"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Sword 4"].Idle1)
               a:Play()
   		end
           if Value == "Knife" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Knife"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Weapons["Knife"].Idle1)
               a:Play()
   		end
   	end    
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
   		end
           if Value == "Particles 2" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 2"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 2"].In)
               a:Play()
   		end
           if Value == "Particles 3" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 3"].Core)
               a:Play()
   		end
           if Value == "Particles 4" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 4"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 4"].Idle1)
               a:Play()
   		end
           if Value == "Particles 5" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 5"].Core)
               a:Play()
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Powers["Particles 5"].In)
               a:Play()
   		end
   	end    
   })
   Tab:AddDropdown({
   	Name = "Dance",
   	Default = "",
   	Options = {"Penguin", "Cat dance", "ChuChu","Spooky", "Caramell"},
   	Callback = function(Value)
   		if Value == "Penguin" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.Penguin.Core)
               a:Play()
           end
           if Value == "Cat dance" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance["Cat dance"].Core)
               a:Play()
           end
           if Value == "ChuChu" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.ChuChu.Core)
               a:Play()
           end
           if Value == "Spooky" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.Spooky.Core)
               a:Play()
           end
           if Value == "Caramell" then
               a = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage").Emotes.Packs.Dance.Caramell.Core)
               a:Play()
           end
   	end    
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

end

local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "",
	PremiumOnly = false
})

Tab:AddLabel("Credits")

Tab:AddParagraph("Scripter :","lobox920#9889")

Tab:AddParagraph("Ui libary","Name : Orion Library")

Tab:AddLabel("Discord : ")

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
