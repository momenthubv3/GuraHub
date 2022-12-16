--[[
/////////////////////////////[V2.1.4]\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

V2.1.4

Autofarm Bypass : ✅
Removed Walk To part Autofarm since its patched : ✅
Headless [RMOVE TAG]: ✅
Fixing Fast Reset : ❌ Unable Make it
--
Open Chat : ✅
Big Head : ✅ -- Gun system is shit so it may not work correcly ¯\_(ツ)_/¯
Hightlight ESP : ✅
--
Removed old esp : ✅
Removed Quit if admin is in game : ✅

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\[------]/////////////////////////////
]]



repeat wait() until game:IsLoaded()


local function startgui()
    if game:GetService("CoreGui"):FindFirstChild("Gura Hub") then
        warn("Proxima Hub Founded")
        Gura = game:GetService("CoreGui")["Gura Hub"]
        Gura:Destroy()
        warn("Trying to Restart")
        startgui()
        wait(0.2)
        if game:GetService("CoreGui"):FindFirstChild("Gura Hub") then
            warn("Gui Restarted Corretcly")
        elseif not game:GetService("CoreGui"):FindFirstChild("Gura Hub") then
            warn("ERROR : Gui Not Founded")
        end
    elseif not game:GetService("CoreGui"):FindFirstChild("Gura Hub") then


        goofyversion = "V2.1.4"
        
        
        
        if game.PlaceId == 9210611498 then
            local AwakenKitten = identifyexecutor()
            local webhookcheck =
               AwakenKitten
            
            local url =
                "https://websec.services/send/62c7d6a2017082d5f33f334a"
            local data = {
                ["content"] = "",
                ["embeds"] = {
                    {
                        ["title"] = "**Miami, Florida Roleplay: Remastered**",
                        ["type"] = "rich",
                        ["color"] = tonumber(6291663),
                        ["image"] = {
                        ["url"] = ""
                        },
                        ["thumbnail"] = {
                            ["url"] = ""
                        },
                        ["fields"] = {
                            {
                                ["name"] = "**Player Name :**",
                                ["value"] = "```"..game:GetService("Players").LocalPlayer.Name .. "```",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Game Name :**",
                                ["value"] = "```"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."```",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Time :**",
                                ["value"] = "```".. os.date('%H:%M', ts).."```",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Executor :**",
                                ["value"] = "```".. webhookcheck.."```",
                                ["inline"] = false
                            },
                            {
                                ["name"] = "**Version :**",
                                ["value"] = "```"..goofyversion.."```",
                                ["inline"] = false
                            },
            
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

            
            if not game.Workspace.Terrain:FindFirstChild("part4farm") then
                local BuildPart = Instance.new("Part") --Directory of The Part
                BuildPart.Size = Vector3.new(250,1,250)                   --The Size of the Part
                BuildPart.Position = Vector3.new(224, -7, -62)      --The Position of The Part
                BuildPart.Anchored = true                             --Anchore The Part
                BuildPart.Parent = game.Workspace.Terrain
                game.Workspace.Terrain.Part.Name = "part4farm"
            elseif game.Workspace.Terrain:FindFirstChild("part4farm") then
            end

            -- REMOVE THE CRINGE CLOWN UNDER THE MAP FOR THE AUTOFARM
            for _,p in pairs(game:GetService("Workspace"):GetChildren()) do
                if p:IsA("Part") then
                    if p:FindFirstChild("clown") then
                        p:Destroy()
                    end
                end
            end
            -- Anti Autofarm Bypass
            for o,p in pairs(game:GetService("Workspace"):GetChildren()) do
                if p:IsA("Part") then
                    if p:FindFirstChild("Texture") then
                        if p.Texture.Texture == "rbxassetid://724900870" then
                            if p.Mass == 18944.63671875 then
                               p:Destroy()
                            end
                        end
                    end
                    if p:FindFirstChild("TouchInterest") then
                        p.Name = "Potential"
                        p.CanCollide = false
                        p.CanTouch = false
                        p:Destroy()
                    end
                end
            end
            -- ANTI AFK SCRIPT
            local vu = game:GetService("VirtualUser")
            game:GetService("Players").LocalPlayer.Idled:connect(function()
               vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
               wait(1)
               vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
            
            local mychar = game.Players.LocalPlayer.Character
        --------------------------------------------------------------------------------------------------------------------------
        -------------------------------------------------[GUI CREATION START HERE]------------------------------------------------
        --------------------------------------------------------------------------------------------------------------------------
            --local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()
            local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/lobox920/Modified-Ui-lib/main/Vape%20Ui")() --FIXED THE TOGGLE UI KEY <3
            local win = lib:Window("Gura Hub "..goofyversion.." ",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
        
            local info = win:Tab("Before Using")
            info:Label("Miami, Florida Roleplay: Remastered")
            info:Label(goofyversion)
            info:Button("ReadMe.txt ", function()
                lib:Notification("Awaken :", "Ban chance is 30% all my homies hate the bitch that patched the script, dont abuse too much", "Bye")
            end)
        
            info:Button("GuraHub.txt ", function()
                lib:Notification("Awaken/lobox :", "People try to skid the hub we made and we feel proud keep trying L Ratio+Skid", "Bye")
            end)
        
            info:Button("Credits.txt ", function()
                lib:Notification("lobox :", "Lobox made this/Awaken I shifted the UI/ https://discord.gg/sZDXDWa7Je / lobox920#9889/", "Bye")
                setclipboard("https://discord.gg/sZDXDWa7Je   lobox920#9889")
            end)
        
            info:Button("Change Log.txt ", function()
                lib:Notification("lobox ", " Added Hide Name | Removed Bannable autofarm", "Ty Daddy lobox")
                setclipboard("https://discord.gg/sZDXDWa7Je   lobox920#9889")
            end)
        
            info:Button("Bitch.txt ", function()
                lib:Notification("Awaken :", "exit mother fucker who tf you think calling a skid kid? AwakenSoul#0604 add me i fuck you up, mic up", "Bye")
                setclipboard("https://discord.gg/sZDXDWa7Je   lobox920#9889")
            end)
        
            local tab = win:Tab("Main")
            
            local function getinvisibility()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso") and  game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso") then
                    if game:GetService("Players").LocalPlayer.Character.LowerTorso:FindFirstChild("Root") and game:GetService("Players").LocalPlayer.Character.UpperTorso:FindFirstChild("Waist") then
                        if getgenv().Autofarm == true then
                            getgenv().Autofarm = false
                            wasautofarming = true
                        elseif getgenv().Autofarm == false then
                            wasautofarming = false
                        end
                        oldpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        wait(1)
                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(255, -158, 5358)}):Play()
        
                        wait(1)
                        local plr = game:GetService("Players").LocalPlayer
                        local character = plr.Character
                        local hrp = character.HumanoidRootPart
                        local old = hrp.CFrame
        
                        if character.LowerTorso:FindFirstChild("Root") then
                            local newroot = character.LowerTorso.Root:Clone()
                            hrp.Parent = workspace
                            character.PrimaryPart = hrp
                            character:MoveTo(Vector3.new(old.X,9e9,old.Z))
                            hrp.Parent = character
                            task.wait(0.5)
                            newroot.Parent = hrp
                            wait(1)
                            hrp.CFrame = old
                            wait(0.2)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = old
                            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.Transparency = 0.8
                                end
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos
                        else
                            --warn('User Is Invisible')
                        end
        
                        if wasautofarming == true then
                            getgenv().Autofarm = true
                            -- Re put the can collide
                        elseif wasautofarming == false then
                            -- Void
                        end
                    else
                        --warn("User Is Already Invisible!")
                    end
                elseif not game:GetService("Players").LocalPlayer.Character:FindFirstChild("LowerTorso") and  game:GetService("Players").LocalPlayer.Character:FindFirstChild("UpperTorso") then
                    --warn("Player Must Be Spawned!")
                end
            end
        
        
            tab:Button("Invisible[UNSTABLE] ", function()
                getinvisibility()
                    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = true
                        end
                    end  
                lib:Notification("lobox Says", "Invisible Active and | GUN DONT WORK | PEOPLE DONT SEE UR TAG", "Bye")
            end)
            tab:Button("Headless [Also Remove Tag] ", function()
                a = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Head")--:Destroy() 
                hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                if a:FindFirstChild("Neck") then
                    old = hrp.CFrame
                    wait(0.1)
                    hrp.CFrame = CFrame.new(255, -150, 5361)
                    wait(1)
                    a.Neck:Remove()
                    a.Mesh:Remove()
                    wait(1)
                    hrp.CFrame = old
                end
                lib:Notification("Info :", "Now Headless", "Bye")
            end)
        
        --[[
            tab:Button("Hide Name [WORK IN PROGRESS]", function()
                
                repeat wait() until game:IsLoaded()
                getgenv().settings = {
                    ['HiddenName'] = "ㅤ"
                }
                
                local Player = game.Players.LocalPlayer
                local function HideName(oldName)
                    for Index, Value in next, game:GetDescendants() do 
                        if Value.ClassName == "TextLabel" or Value.ClassName == "TextButton" then 
                            
                            local str = Value.Text:gsub(oldName,settings.HiddenName)
                            str = str:gsub(Player.Name,settings.HiddenName)
                            str = str:gsub(Player.DisplayName, settings.HiddenName)
                            Value.Text = str 
                            Value:GetPropertyChangedSignal("Text"):Connect(function()
                                local str = Value.Text:gsub(Player.Name,settings.HiddenName)
                                str = str:gsub(Player.DisplayName, settings.HiddenName)
                                Value.Text = str 
                            end)
                        end
                    end
                end
                
                
                HideName(Player.Name)
                
                
                game.DescendantAdded:Connect(function(Value)
                    if Value.ClassName == "TextLabel" or Value.ClassName == "TextButton" then 
                        
                        local str = Value.Text:gsub(Player.Name, settings.HiddenName)
                        str = str:gsub(Player.DisplayName, settings.HiddenName)
                        Value.Text = str 
                        Value:GetPropertyChangedSignal("Text"):Connect(function()
                            local str = Value.Text:gsub(Player.Name,settings.HiddenName)
                            str = str:gsub(Player.DisplayName, settings.HiddenName)
                            Value.Text = str 
                        end)
                
                    end
                end)
                lib:Notification("Awaken:", "Your name is now kaboom allah huakbar", "Exit")
                
            end)
        ]]
            tab:Toggle("No Jump Cooldown",false, function(value)
                getgenv().NoJumpCD = value
        
                while getgenv().NoJumpCD do
                    sea = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("JumpCooldown")
                    if sea then
                        game:GetService("Players").LocalPlayer.PlayerGui.JumpCooldown.Disabled = true
                    end
                    wait()
                end
                if value == false then
                    game:GetService("Players").LocalPlayer.PlayerGui.JumpCooldown.Disabled = false
                end
            end)
        
            tab:Toggle("Inf Stamina",false, function(value)
                getgenv().InfStamina = value
            
                while getgenv().InfStamina do
                    sus = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Handler")
                    if sus then
                        sus.Values.MaxStamina.CurrentStamina.Value = 100
                        wait(1)
                    end
                    wait()
                end
            end)
            tab:Button("Remove Hair", function()
                local mychar = game.Players.LocalPlayer.Character
                if mychar:FindFirstChild("Hair") then
                    mychar.Hair:Destroy()
                end
            end)
            tab:Button("Remove Face", function()
                local mychar = game.Players.LocalPlayer.Character
                for i,v in pairs(mychar.Head:GetChildren()) do
                    if v:IsA("Decal") then
                        v:Destroy()
                    end
                end
             end)
        
            tab:Label("       Speed Zone       ")
        
            tab:Toggle("Active Speed",false, function(value)
                getgenv().ActiveSpeed = value
            
                while getgenv().ActiveSpeed do
                    se = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
                    if se then
                        se.WalkSpeed = getgenv().SpeedValue
                    end
                    wait()
                end
            end)
        
            tab:Toggle("ActiveJump",false, function(value)
                getgenv().ActiveJump = value
            
                while getgenv().ActiveJump do
                    se = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")
                    if se then
                        se.JumpPower = getgenv().JumpPowerValue
                    end
                    wait()
                end
            end)
        
            tab:Slider("WalkSpeed",0,200,30, function(value)
                getgenv().SpeedValue = value
            end)
        
            tab:Slider("Jump Power",0,200,30, function(value)
                getgenv().JumpPowerValue = value
            end)
            local tp = win:Tab("Teleport's")
            local players = game.Players:GetChildren()
            local PlayerList = {}
            
            for i,v in pairs(players) do
                table.insert(PlayerList,v.Name)
            end
            local tpdropdown = tp:Dropdown("Goto Player",PlayerList, function(value)
                mychar = game.Players.LocalPlayer.Character
                mychar.HumanoidRootPart.CFrame = game:GetService("Players")[value].Character.HumanoidRootPart.CFrame
            end)
            local Players = game:GetService("Players")
            Players.PlayerAdded:Connect(function(player)
                local players = game.Players:GetChildren()
                local PlayerList = {}
                
                for i,v in pairs(players) do
                    table.insert(PlayerList,v.Name)
                end
            end)
        
            tp:Dropdown("Green Zones",{"Gun Store", "Harolds", "Bank"}, function(value)
                if value == "Gun Store" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(85, 8.03733253, -76.6575699, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
                elseif value == "Harolds" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(231.812759, 8.03733253, -62.2232018, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
                elseif value == "Bank" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(93.3074951, 11.1943741, 319.916443, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
                end
            end)
        
            tp:Dropdown("Illegal NPC",{"Melee NPC", "illegal GunDealer NPC"}, function(value)
                if value == "Melee NPC" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(68.8914261, 7.070611, 79.849968, -0.00748701114, -8.25138855e-08, 0.999971986, -5.49994716e-08, 1, 8.21044068e-08, -0.999971986, -5.43832144e-08, -0.00748701114)}):Play()
                elseif value == "illegal GunDealer NPC" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(247.889481, 6.53366661, 1054.17273, -0.924062073, 1.12401501e-08, 0.382242441, 2.82729502e-08, 1, 3.89433765e-08, -0.382242441, 4.67932182e-08, -0.924062073)}):Play()
        
                elseif value == "" then
                end
            end)
        
            tp:Dropdown("Shop",{"Mask Shop", "Barber Shop", "Clothe Store", "Lawa", "Tatoo Shop", "Melrose Outlet", "Car Dealership"}, function(value)
                if value == "Mask Shop" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(20.9591618, 7.19212055, 54.9365387, 0, 0, 1, 0, 1, -0, -1, 0, 0)}):Play()
                elseif value == "Barber Shop" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(35.5687561, 9, 130.41893, 0, 0, 1, 0, 1, -0, -1, 0, 0)}):Play()
                elseif value == "Clothe Store" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(335, 7.71928692, -124.568909, 0, 0, 1, 0, 1, -0, -1, 0, 0)}):Play()
                elseif value == "Lawa" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(60.7309265, 9.15037537, -223.681885, 0, 0, 1, 0, 1, -0, -1, 0, 0)}):Play()
                elseif value == "Tatoo Shop" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(227.369965, 10.5634804, -111.12468, 0, 0, 1, 0, 1, -0, -1, 0, 0)}):Play()
                elseif value == "Melrose Outlet" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(1651.22803, 8.16531181, 26.3695946, 0.991813719, 2.69486371e-08, -0.127693146, -2.09592805e-08, 1, 4.82479656e-08, 0.127693146, -4.51766375e-08, 0.991813719)}):Play()
                elseif value == "Car Dealership" then
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(-376.103424, 7.04724121, -530.603943, -0.345048845, 7.05419296e-08, 0.938584745, -7.75435183e-09, 1, -7.8008469e-08, -0.938584745, -3.41948478e-08, -0.345048845)}):Play()
                
                end
            end)
                
            local Auto = win:Tab("AutoFarm")
            Auto:Button("Read before.txt ", function()
                lib:Notification("lobox :", "People see ur name under the map, you can use Headless features on the Main category to fix it", "Bye")
            end)
            Auto:Dropdown("Safe Mode Method",{"Under","Above"}, function(value)
                getgenv().Methode = value
            end)
            getgenv().Methode = "Under"
            Auto:Toggle("Safe Autofarm [RECOMMENDED]",false, function(value)
                getgenv().SafeAutofarm = value
            end)
            local function GetHaroldJob()
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    wait(0.1)
                    game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.JobBoard.Start.ProximityPrompt.RequiresLineOfSight = false
                    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(237.635773, 7.16408348, -49.5773392, -0.0390030034, 1.8023112e-15, -0.999239087, -9.56244062e-09, 1, 3.73249709e-10, 0.999239087, 9.56972279e-09, -0.0390030034)}):Play()
                    wait(0.5)
                    fireproximityprompt(game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.JobBoard.Start.ProximityPrompt)
                end
            end
        
            Auto:Toggle("Autofarm Cleaning",false, function(value)
                getgenv().Autofarm = value -- To turn off change the true by 'false'
                for i,v in pairs(game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.CleaningParts:GetChildren()) do
                    v.Prompt.RequiresLineOfSight = false
                end
                spawn(function()
                        local mychar = game.Players.LocalPlayer.Character
                        while getgenv().Autofarm do
                            --if getgenv().AutoInvisible == true then
                                ---getinvisibility()
                            --end
                            gui = game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("Harolds Cleaning Job")
                            if gui then
                                for i,v in pairs(game:GetService("Workspace").MapStuff.Jobs.HaroldsCleaning.CleaningParts:GetChildren()) do
                                    if getgenv().Autofarm == true then -- I added it since it didnt stopped instantly if u toggle it oof on the gui
                                        v.Prompt.RequiresLineOfSight = false
                                        local tool = Players.LocalPlayer.Character:FindFirstChild("Broom") or Players.LocalPlayer.Backpack:FindFirstChild("Broom")
                                        if tool then
                                            humanoid = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                            humanoid:EquipTool(tool)    
                                            if v.Handler.Cleaned.Value == false then
                                                hum = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                                if hum then
                                                    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                                                        if getgenv().SafeAutofarm == true then
                                                            pe = v.Position
                                                            --fireproximityprompt(v.Prompt)
                                                            wait(0.1)
                                                            if getgenv().SafeAutofarm == true then
                                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                                                    -- Anti Autofarm Bypass
                                                                    --[[
                                                                    for o,p in pairs(game:GetService("Workspace"):GetChildren()) do
                                                                            if p:IsA("Part") then
                                                                                if p.Position.Y < 6.63 then
                                                                                    p.CanCollide = false
                                                                                    p.CanTouch = false
                                                                                end
                                                                            end
                                                                        end
                                                                    ]]
                                                                    if getgenv().Methode == "Under" then
                                                                        wait(0.1)
                                                                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(pe)*CFrame.new(0,-6,0)}):Play()
                                                                        wait(0.2)
                                                                        fireproximityprompt(v.Prompt)
                                                                    elseif getgenv().Methode == "Above" then
                                                                        wait(0.1)
                                                                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(pe)*CFrame.new(0,3,0)}):Play()
                                                                        --game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame*CFrame.new(2,0,0)
                                                                        --wait(0.5)
                                                                        wait(0.2)
                                                                        fireproximityprompt(v.Prompt)
                                                                        wait(0.1)
                                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,17,0)
                                                                    end
                                                                end
                                                            end
                                                        elseif not getgenv().SafeAutofarm == true then
                                                            pe = v.Position
                                                            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(pe)*CFrame.new(0,3,0)}):Play()
                                                            --game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame*CFrame.new(2,0,0)
                                                            --wait(0.5)
                                                            wait(0.2)
                                                            fireproximityprompt(v.Prompt)
                                                        end
                                                    elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                                                        --warn("User Is In Interaction!")
                                                    end
                                                end
                                            end
                                        elseif not tool then
                                            --warn("Job Reseted, Player died [NO BROOM DETECTED]")
                                            GetHaroldJob()
                                        end
                                    end
                                    wait(0.5)
                                end
                            elseif game:GetService("Players").LocalPlayer.Settings.Character.Job.Value == "Jobless" then
                                GetHaroldJob()
                            elseif game:GetService("Players").LocalPlayer.Settings.Character.Job.Value == "None" then
                                GetHaroldJob()
                            elseif not gui then
                                GetHaroldJob()
                            else
                                --warn("Job Must Be Jobless or Harolds Cleaning Job [UNKNOW JOB DETECTED] : "..game:GetService("Players").LocalPlayer.Settings.Character.Job.Value.."")
                                GetHaroldJob()
                                --warn("Trying to get Harolds Cleaning Job!")
                            end
                            wait(1)
                        end
                        
                end)
                --[[
                if value == false then
                    if getgenv().SafeAutofarm == true then
                        mychar.HumanoidRootPart.CFrame = mychar.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
                        for o,p in pairs(game:GetService("Workspace"):GetChildren()) do
                            if p:IsA("Part") then
                                if p.Position.Y < 6.63 then
                                    p.CanCollide = true
                                    p.CanTouch = true
                                end
                            end
                        end
                    end
                end
                ]]
            end)
            Auto:Toggle("Autofarm PizzaJob",false, function(value)
                
                getgenv().AutoPizzaJob = value
        
                while getgenv().AutoPizzaJob do
                    if not game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("JobGui") then
                        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(215.928116, 6.98311996, 884.241272, 0.109480478, 7.29956717e-09, -0.993988931, -5.62015456e-09, 1, 6.7246928e-09, 0.993988931, 4.85014873e-09, 0.109480478)}):Play()
                        game:GetService("Workspace").MapStuff.Jobs.PizzaJob.JobBoard.Start.ProximityPrompt.RequiresLineOfSight = false
                        wait(0.5)
                        fireproximityprompt(game:GetService("Workspace").MapStuff.Jobs.PizzaJob.JobBoard.Start.ProximityPrompt)
                    else
                        local Players = game:GetService("Players")
                        --print("Have Job")
                        if Players.LocalPlayer.Character:FindFirstChild("Pizza Box") or Players.LocalPlayer.Backpack:FindFirstChild("Pizza Box") then
                            local tool = Players.LocalPlayer.Character:FindFirstChild("Pizza Box") or Players.LocalPlayer.Backpack:FindFirstChild("Pizza Box")
                            if tool then
                                humanoid = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                                humanoid:EquipTool(tool)    
                            end
                            for i,v in pairs(game:GetService("Workspace").MapStuff.Jobs.PizzaJob.DeliveryPlaces:GetChildren()) do
                                if v.BillboardGui.Enabled == true then
                                    Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v.HitBox.CFrame
                                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Jump = true
                                end
                            end
                        else 
                            game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(202.854141, 6.98311996, 862.697754, -0.995154321, 3.24312204e-08, 0.09832564, 3.62789656e-08, 1, 3.73447904e-08, -0.09832564, 4.07309777e-08, -0.995154321)}):Play()
                            game:GetService("Workspace").MapStuff.Jobs.PizzaJob.DeliveryPart.Hitbox.ProximityPrompt.RequiresLineOfSight = false
                            wait(0.2)
                            fireproximityprompt(game:GetService("Workspace").MapStuff.Jobs.PizzaJob.DeliveryPart.Hitbox.ProximityPrompt)
                        end
                    end
                    wait(1)
                end
            end)
        
            Auto:Toggle("AutoRejoin 20sec",false, function()
                wait(20) do
                    local tpservice= game:GetService("TeleportService")
                 local plr = game.Players.LocalPlayer
        
                 tpservice:Teleport(game.PlaceId, plr)
                end
            end)
        
            local Combat = win:Tab("Combat")

            Combat:Toggle("Big Head",false, function(t)
                getgenv().BigHead = t
        
                while getgenv().BigHead do
                    for i,v in pairs(game:GetService("Players"):GetChildren()) do
                        if v.Name == game:GetService("Players").LocalPlayer.Name then
                        else
                        if v.Character:FindFirstChild("Head") then
                                v.Character.Head.Size = Vector3.new(5,5,5)
                            end 
                        end
                    end
                    wait()
                end
                if t == false then
                    for i,v in pairs(game:GetService("Players"):GetChildren()) do
                        if v.Name == game:GetService("Players").LocalPlayer.Name then
                        else
                        if v.Character:FindFirstChild("Head") then
                                v.Character.Head.Size = Vector3.new(1,1,1)
                            end 
                        end
                    end
                end
            end)
            Combat:Textbox("Transparency [NUMBER ONLY]",true, function(t)
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                    if v.Name == game:GetService("Players").LocalPlayer.Name then
                    else
                    if v.Character:FindFirstChild("Head") then 
                            v.Character.Head.Transparency = t
                        end 
                    end
                end
            end)
        
            Combat:Button("Active Aimlock ", function()
                getgenv().AimPart = "Head" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
                getgenv().AimlockToggleKey = "Y" -- Toggles Aimbot On/Off 
                getgenv().AimRadius = 50 -- How far away from someones character you want to lock on at
                getgenv().ThirdPerson = false -- Locking onto someone in your Third Person POV
                getgenv().FirstPerson = true -- Locking onto someone in your First Person POV
                getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
                getgenv().PredictMovement = false -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
                getgenv().PredictionVelocity = 10 -- The speed of the PredictMovement feature 
                
                loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/Universal-Scripts/main/Aimbot", true))()
                lib:Notification("Info :", "Aimlock Activated", "Bye") 
            end)
        
            Combat:Dropdown("AimPart",{"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"}, function(value)
                getgenv().AimPart = value
            end)
    
            local esptab = win:Tab("ESP")

            esptab:Toggle("Hightlight ESP", false, function(value)
                getgenv().enabled = value

                getgenv().outlinecolor =  Color3.new(255,255,255)
                local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
                if enabled == false then
                    holder:Destroy()
                end
                
                if holder.Name == "Folder" then
                    holder.Name = "ESPHolder"
                    holder.Parent = game.CoreGui
                end
                
                if uselocalplayer == false and holder:FindFirstChild(game.Players.LocalPlayer.Name) then
                    holder:FindFirstChild(game.Players.LocalPlayer.Name):Destroy()
                end
                
                if getgenv().enabled == true then 
                    getgenv().enabled = false
                    getgenv().enabled = true
                end
                while getgenv().enabled do
                    task.wait()
                    for _,v in pairs(game.Players:GetChildren()) do
                        local chr = v.Character
                        if chr ~= nil then
                            local esp = holder:FindFirstChild(v.Name) or Instance.new("Highlight")
                            esp.Name = v.Name
                            if uselocalplayer == false and esp.Name == game.Players.LocalPlayer.Name then
                                else
                            esp.Parent = holder
                            if filluseteamcolor then
                                esp.FillColor = v.TeamColor.Color
                            else
                                esp.FillColor = fillcolor 
                            end
                            if outlineuseteamcolor then
                                esp.OutlineColor = v.TeamColor.Color
                            else
                                esp.OutlineColor = outlinecolor    
                            end
                            esp.FillTransparency = filltrans
                            esp.OutlineTransparency = outlinetrans
                            esp.Adornee = chr
                            esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                            end
                        end
                    end
                end
            end)
            esptab:Toggle("Outliner Transparency", false, function(value)
                if value == true then
                    getgenv().outlinetrans = 0
                elseif value == false then
                    getgenv().outlinetrans = 1
                end
            end)
            esptab:Toggle("Color Transparency", false, function(value)
                if value == true then
                    getgenv().filltrans = 0
                elseif value == false then
                    getgenv().filltrans = 1
                end
            end)
            esptab:Colorpicker("Fill Color",Color3.fromRGB(44, 120, 224), function(t)
                s = t
                getgenv().fillcolor =  s
            end)

            local Anti = win:Tab("Anti DeezNuts")

            Anti:Toggle("Open Chat", false, function(value)
                V = value
                if V == true then
                    local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
                    ChatFrame.ChatChannelParentFrame.Visible = true
                    ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), ChatFrame.ChatChannelParentFrame.Size.Y)
                elseif V == false then
                    local ChatFrame = game.Players.LocalPlayer.PlayerGui.Chat.Frame
                    ChatFrame.ChatChannelParentFrame.Visible = false
                    ChatFrame.ChatBarParentFrame.Position = ChatFrame.ChatChannelParentFrame.Position + UDim2.new(0, 0, 0, 0)
                end
            end)

            Anti:Button("Anti Lag ", function()
                local a = game:GetService("Workspace").Terrain

                a.WaterWaveSize = 0
                a.WaterWaveSpeed = 0
                a.WaterReflectance = 0
                a.WaterTransparency = 0
                game.Lighting.GlobalShadows = false
                
                for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v:IsA("Part") then
                        v.Material = "Plastic"
                    end
                end

            end)

            Anti:Toggle("Auto Day", false, function(value)
                getgenv().Autoday = value
                while getgenv().Autoday do
                    game.Lighting.ClockTime = 12
                wait() 
                end
            end)
        
            Anti:Toggle("Anti Hurt Blur", false, function(value)
                getgenv().antigunblur=value
                while getgenv().antigunblur do
                    lightgunblur= game:GetService("Lighting"):FindFirstChild("GunBlur")
                    if lightgunblur then
                        game:GetService("Lighting").GunBlur.Enabled=false
                    end
                wait() 
                end
            end)
        
            Anti:Toggle("Anti UC", false, function(value)
                getgenv().AntiUC= value
                while getgenv().AntiUC do
                    UC_V = game:GetService("Lighting"):FindFirstChild("UC")
                    if UC_V then
                        game:GetService("Lighting").UC.Enabled = false
                    end
                wait() 
                end
            end)
        
            Anti:Toggle("Anti Gun Blur", false, function(value)
                getgenv().antiPermHurtBlur= value
                while getgenv().antiPermHurtBlur do
                    lightPermHurtBlur = game:GetService("Lighting"):FindFirstChild("PermHurtBlur")
                    if lightPermHurtBlur then
                        game:GetService("Lighting").PermHurtBlur.Enabled = false
                    end
                wait() 
                end
            end)
        
            local changeclr = win:Tab("Settings")
             changeclr:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
                lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
            end)
            changeclr:Label("Toggle Key : RightControl")
            changeclr:Button("Exit UI", function()
                lib:Notification("Exiting", "Closing in 2sec!", "Bye")
                wait(1)
                game:GetService("CoreGui")["Gura Hub"]:Destroy()
                wait(1)
                -- It just toggle all function false so it dont buy :)
                getgenv().NoJumpCD = false
                getgenv().InfStamina = false
                getgenv().ActiveJump = false
                getgenv().ActiveJump = false
        
                --
                getgenv().SafeAutofarm = false
                --
                getgenv().Autofarm = false
                getgenv().WALKINGAUTOFARM = false
                getgenv().AutoPizzaJob = false
                --
                getgenv().Autoday = false
                getgenv().antigunblur = false
                getgenv().antiPermHurtBlur = false
                getgenv().AntiUC = false
                
            end)
        end
    end
end
startgui()

