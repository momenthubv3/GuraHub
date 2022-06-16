-- fav music when i coded it : DJ YUNG VAMP x [bsd.u] - HOPPED UP
-- game will be closed in 3 days lol its kinda late but imma try do a stand farm when its opened
-- If u see this and ur one of the dev from the game then <3 ur game was good feel free to dm me on discord lol
-- Damn, there is not a tons of lines as i tgought before starting it

repeat wait() until game:IsLoaded()

if game.PlaceId == 6728870912 then

    --------------
    local function sendwehook()
        if getgenv().UserWebhook == "" then
            OrionLib:MakeNotification({
                Name = "Stand Farm",
                Content = "Your Webhook must be entered!",
                Image = "",
                Time = 5
            })
        else
            local url = getgenv().UserWebhook
            local data = {
               ["content"] = "",
               ["embeds"] = {
                   {
                       ["title"] = "**Stand Farm**",
                       ["description"] = "User : " .. game.Players.LocalPlayer.Name.." Obtained the Stand```"..WantedShynie.."```",
                       ["type"] = "rich",
                       ["color"] = tonumber(0x7269da),
                       ["image"] = {
                           ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..tostring(game:GetService("Players").LocalPlayer.Name)
                       }
                   }
               }
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            
            local headers = {
               ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
        end
    end
    --------------
    local function FarmUsingShinyArrow()
        local ohString1 = "\n" or "\b" or "\r"
        local ohString2 = "LocacacaFruit"
        game:GetService("ReplicatedStorage").Communication.Functions["29"]:FireServer(ohString1, ohString2)
        wait(7.5)
            local ohString1 = "\b" or "\n" or "\r"
            local ohString2 = "ShinyArrow"
            game:GetService("ReplicatedStorage").Communication.Functions["29"]:FireServer(ohString1, ohString2)
    end
    --------------
    local function FarmUsingNormalArrow()
        local ohString1 = "\n" or "\b" or "\r"
        local ohString2 = "LocacacaFruit"
        game:GetService("ReplicatedStorage").Communication.Functions["29"]:FireServer(ohString1, ohString2)
        wait(7.5)
            local ohString1 = "\r" or "\n" or "\b"
            local ohString2 = "StandArrow"
            game:GetService("ReplicatedStorage").Communication.Functions["29"]:FireServer(ohString1, ohString2)
    end
    --------------
    
    
    -- Fix the remote without it it ant working because name are blank ;-;
    for i,v in pairs(game:GetService("ReplicatedStorage").Communication.Functions:GetChildren()) do
        if v.ClassName == 'RemoteEvent' then 
            v.Name = i
        end
    end
    
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "World of Stands Demo x SharScript", HidePremium = true})
    
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
                           ["code"] = "FKHmERC6y5",
                       },
                       ["cmd"] = "INVITE_BROWSER",
                       ["nonce"] = "."
                   })
           })
            end  
        })
    Tab:AddButton({ -- my code editor fucked up here and didnt accept that the ""})" were at the live 122 but as i see it accept now i writed with the "--" before ¯\_( ͡° ͜ʖ ͡°)_/¯
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
    
    local Tab = Window:MakeTab({
    	Name = "Player",
    	Icon = "",
    	PremiumOnly = false
    })
    
    Tab:AddSlider({
    	Name = "WalkSpeed",
    	Min = 16,
    	Max = 250,
    	Default = 5,
    	Color = Color3.fromRGB(255,255,255),
    	Increment = 1,
    	ValueName = "",
    	Callback = function(Value)
            getgenv().Speed = Value
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
    	end    
    })
    -- its here to fix the speed because game annoying
    spawn(function()
        while wait() do
            game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().Speed
        end
    end)
    --
    Tab:AddSlider({
    	Name = "JumpPower",
    	Min = 50,
    	Max = 500,
    	Default = 5,
    	Color = Color3.fromRGB(255,255,255),
    	Increment = 1,
    	ValueName = "",
    	Callback = function(Value)
            game:GetService("Players").LocalPlayer.Character.Humanoid.UseJumpPower = true
    		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
    	end    
    })
    Tab:AddButton({
    	Name = "Destroy Barrier",
    	Callback = function()
            for i,v in pairs(game:GetService("Workspace").Boundaries:GetChildren()) do
                v:Destroy()
            end
      	end    
    })
    local Dropdown = Tab:AddDropdown({
        Name = "TP to player",
        Default = "",
        Options = playerlist,
        Callback = function(Value)
            mychar = game.Players.LocalPlayer.Character
            mychar.HumanoidRootPart.CFrame = game:GetService("Players")[Value].Character.HumanoidRootPart.CFrame
            OrionLib:MakeNotification({
                Name = "Teleport Info :",
                Content = "Teleported to"..Value.."'s Position",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end    
    })
    task.spawn(function()
        while wait(1) do
            local players = game.Players:GetChildren()
            local PlayerList = {}
        
            for i,v in pairs(players) do
                table.insert(PlayerList,v.Name)
            end
            Dropdown:Refresh(PlayerList, true)
        end
    end)
    
    Tab:AddButton({
    	Name = "Exit Gui",
    	Callback = function()
            -- item
            getgenv().AutograArrow = false
            getgenv().Autograbroka = false
            getgenv().AutograbShinyArrow = false
            -- farm
            getgenv().StandFarm = false
            -- Arrow
            getgenv().UseShinyArrow = false
            getgenv().UseNormalArrow = false
            -- webhook
            getgenv().SendWebhookforfound = false
            -- Wast working without putting it before and called nil value shit ¯\_(ツ)_/¯
            local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
            OrionLib:Destroy()
      	end    
    })
    
    local Tab = Window:MakeTab({
    	Name = "Item Farm",
    	Icon = "",
    	PremiumOnly = false
    })
    
    
    Tab:AddToggle({
    	Name = "Auto Grab Arrow",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutograArrow = Value
            while getgenv().AutograArrow do
                local Arrow = workspace:FindFirstChild("StandArrow")
                if Arrow then
                    for _,v in pairs(Arrow:GetDescendants()) do
                        if v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                        end
                    end
                end
                wait(0.5)
            end
    	end    
    })
    Tab:AddToggle({
    	Name = "Auto Grab Roka",
    	Default = false,
    	Callback = function(Value)
    		getgenv().Autograbroka = Value
            while getgenv().Autograbroka do
                local roka = workspace:FindFirstChild("LocacacaFruit")
                if roka then
                    for _,v in pairs(roka:GetDescendants()) do
                        if v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                        end
                    end
                end
                wait(0.5)
            end
    	end    
    })
    Tab:AddToggle({
    	Name = "Auto Grab Shiny Arrow",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutograbShinyArrow = Value
            while getgenv().AutograbShinyArrow do
                local shinyarrow = workspace:FindFirstChild("ShinyArrow")
                if shinyarrow then
                    for _,v in pairs(shinyarrow:GetDescendants()) do
                        if v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                        end
                    end
                end
                wait(0.5)
            end
    	end    
    })
    Tab:AddLabel("2 nd AutoGrab Items in case the one above dont work")
    Tab:AddToggle({
    	Name = "Auto Grab Arrow",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutograArrow2 = Value
            while getgenv().AutograArrow2 do
                local Arrow = workspace:FindFirstChild("StandArrow")
                if Arrow then
                    Arrow:FindFirstChild("Part").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                end
                wait(0.5)
            end
    	end    
    })
    Tab:AddToggle({
    	Name = "Auto Grab Roka",
    	Default = false,
    	Callback = function(Value)
    		getgenv().Autograbroka2 = Value
            while getgenv().Autograbroka2 do
                local roka = workspace:FindFirstChild("LocacacaFruit")
                if roka then
                    roka:FindFirstChild("Part").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                end
                wait(0.5)
            end
    	end    
    })
    Tab:AddToggle({
    	Name = "Auto Grab Shiny Arrow",
    	Default = false,
    	Callback = function(Value)
    		getgenv().AutograbShinyArrow2 = Value
            while getgenv().AutograbShinyArrow2 do
                local shinyarrow = workspace:FindFirstChild("ShinyArrow")
                if shinyarrow then
                    shinyarrow:FindFirstChild("Part").CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                end
                wait(0.5)
            end
    	end    
    })
    
    local Tab = Window:MakeTab({
    	Name = "Shynie Stand Farm",
    	Icon = "",
    	PremiumOnly = false
    })
    ownstand = "Dark Star"
    
    Tab:AddLabel("CHOOSE ONLY 1 AWNSER OR IT WILL BREAK THE FARM")
    Tab:AddLabel("IF THE STAND FARM DONT WORK THEN REJOIN THE GAME")

    Tab:AddToggle({
    	Name = "Use Shiny Arrow",
    	Default = false,
    	Callback = function(Value)
            getgenv().UseShinyArrow = Value
    	end    
    })
    Tab:AddToggle({
    	Name = "Use Normal Arrow",
    	Default = false,
    	Callback = function(Value)
            getgenv().UseNormalArrow = Value
    	end    
    })
    
    
    Tab:AddDropdown({
    	Name = "Shynie Sand",
    	Default = "",
    	Options = {"Dark Star", "Divine World", "RX-78-2", "Purple Blaze", "Killer Panther", "Saber", "Master Sword", "Jade Fingers", "Avatar State", "Jade Fingers"},
    	Callback = function(Value)
    		getgenv().WantedShynie = Value
        end
    })
    
    Tab:AddToggle({
    	Name = "Stand Farm",
    	Default = false,
    	Callback = function(Value)
            getgenv().StandFarm = Value
    		while getgenv().StandFarm do  
                local stand = game:GetService("Players").LocalPlayer.Character:FindFirstChild(WantedShynie)
                if stand then
                    if SendWebhookforfound == true then
                        sendwehook()
                    end
                    getgenv().StandFarm = false
                    OrionLib:MakeNotification({
                        Name = "Stand Farm",
                        Content = "You already have the wanted stand : "..WantedShynie,
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                    OrionLib:MakeNotification({
                        Name = "Stand Farm",
                        Content = "Stand Farm is Powerd off due to this!",
                        Image = "rbxassetid://4483345998",
                        Time = 10
                    })
                else
                    if getgenv().UseShinyArrow == true then
                        FarmUsingShinyArrow()
                    elseif getgenv().UseNormalArrow == true then
                        FarmUsingNormalArrow()
                    else 
                        OrionLib:MakeNotification({
                            Name = "Stand Farm",
                            Content = "You must choose an type of arrow!",
                            Image = "",
                            Time = 5
                        })
                    end
                end
                wait(2)
            end
    	end    
    })
    Tab:AddLabel("Webhook Stuff")
    
    Tab:AddToggle({
    	Name = "Send Webook",
    	Default = false,
    	Callback = function(Value)
    		SendWebhookforfound = Value
    	end    
    })
    
    Tab:AddTextbox({
    	Name = "Webook",
    	Default = "",
    	TextDisappear = false,
    	Callback = function(Value)
    		getgenv().UserWebhook = Value
    	end	  
    })
    
    
    Tab:AddButton({
    	Name = "Test Webook",
    	Callback = function()
            local url = getgenv().UserWebhook
            local data = {
               ["content"] = "",
               ["embeds"] = {
                   {
                       ["title"] = "**Stand Farm**",
                       ["description"] = "User : " .. game.Players.LocalPlayer.Name.." Obtained the Stand```Here ur future stand```",
                       ["type"] = "rich",
                       ["color"] = tonumber(0x7269da),
                       ["image"] = {
                           ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..tostring(game:GetService("Players").LocalPlayer.Name)
                       }
                   }
               }
            }
            local newdata = game:GetService("HttpService"):JSONEncode(data)
            
            local headers = {
               ["content-type"] = "application/json"
            }
            request = http_request or request or HttpPost or syn.request
            local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
            request(abcdef)
      	end    
    })
    OrionLib:Init()
end
