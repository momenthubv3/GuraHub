-- last update 14/05/2022 
-- https://discord.gg/F6r8myNVm9

local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end




if game.PlaceId == 7167319176 then
    repeat wait() until game:IsLoaded()
        wait(2)
    -------------- IL BRAQUE LE KFC 
        if game:GetService("Workspace").Map.NPCs.InNOutNPC.RobValues.cooldown.Value == true then
            print("KFC IN CD")
            
        else
            print("KFC NO CD")
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
            print("7/11 IN CD")
            
        else
            print("7/11 NO CD")
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
        print("GAS STATION IN CD")
        
    else
        print("GAS STATION NO CD")
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(338.800415, 3.7742219, -45.2131996, -0.999761283, -7.49826796e-08, 0.0218488555, -7.59862004e-08, 1, -4.5100073e-08, -0.0218488555, -4.67495198e-08, -0.999761283)}):Play()
        wait(0.5)
    
        local ohString1 = "GasStationNPC"
        game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
        wait(5)
    end
    --- TP DANS LA SAFE ZONE
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
    wait(0.5)
    
    
    ------------- IL BRAQUE LE DELI NPC 2
    
        
    if game:GetService("Workspace").Map.NPCs.Deli2NPC.RobValues.cooldown.Value == true then
        print("DELI2 IN CD")
        
    else
        print("DELI2 NO CD")
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(234.3237, 3.24997902, -187.245102, -0.999642611, -1.07214717e-08, 0.0267333444, -8.79396467e-09, 1, 7.22187892e-08, -0.0267333444, 7.1957885e-08, -0.999642611)}):Play()
        wait(0.5)
    
        local ohString1 = "Deli2NPC"
        game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
        wait(5)
    end
    --- TP DANS LA SAFE ZONE
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
    wait(0.5)
    
    ------------- IL BRAQUE LE BLOXGENERAL
    
        
    if game:GetService("Workspace").Map.NPCs.BloxGeneralNPC.RobValues.cooldown.Value == true then
        print("BLOXGENERAL 1 IN CD")
        
    else
        print("BLOXGENERAL 1 NO CD")
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
        print("BLOXGENERAL 2 IN CD")
        
    else
        print("BLOXGENERAL 2 NO CD")
        game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(653.025757, 3.27522063, 89.830246, 0.999956131, 3.56903951e-09, 0.00936501753, -2.95632585e-09, 1, -6.54396288e-08, -0.00936501753, 6.54090755e-08, 0.999956131)}):Play()
        wait(0.5)
    
        local ohString1 = "BloxGeneralNPC2"
        game:GetService("ReplicatedStorage")._network.rob:FireServer(ohString1)
        wait(5)
    end
    --- TP DANS LA SAFE ZONE
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = CFrame.new(0, -10, 0)}):Play()
    wait(0.5)
    print("----------------------------")
    print("Finished")
    print("----------------------------")
    Teleport()

end
