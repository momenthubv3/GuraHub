goofyversion = "Loader"
getgenv().SecureMode = true

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "GuraHub Reborn | Loader",
	LoadingTitle = "GuraHub Reborn Welcomes you.",
	LoadingSubtitle = "by GuraHub Reborn Team.",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, 
		FileName = "GuraHub"
	},
        Discord = {
        	Enabled = true,
        	Invite = "https://discord.gg/6CD99r6t", 
        	RememberJoins = true 
        },
	KeySystem = false, 
	KeySettings = {
		Title = "GuraHub",
		Subtitle = "Key System",
		Note = "YAYEET",
		FileName = "GuraHub Key",
		SaveKey = true,
		GrabKeyFromSite = true, 
		Key = 'https://pastebin.com/qxNhMjky'
	}
})

Rayfield:Notify("Loading Tabs", "Please Wait")
wait(1)
wait(1)


local Player = Window:CreateTab("Loader")

local Section = Player:CreateSection("Scripts")

Player:CreateButton({
	Name = "Invisible",
	Callback = function()
      
        if game.PlaceId == 7167319176 then -- Chicago Remastered
            loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Chicago%20Remastered.lua"))()
            Rayfield:Notify({
                Title = "Gura Hub :",
                Content = "Laoding the Script",
                Duration = 3,
                Image = 10559192727,
            })
        
        elseif game.PlaceId == 5910449407 then -- Project Menacing
        
            loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Project%20Menacing.lua"))()
            Rayfield:Notify({
                Title = "Gura Hub :",
                Content = "Laoding the Script",
                Duration = 3,
                Image = 10559192727,
            })
        elseif game.PlaceId == 8425637426 then -- Write a later [CAN BE OUTDATED]
            loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Write%20a%20Letter.lua"))()
            Rayfield:Notify({
                Title = "Gura Hub :",
                Content = "Laoding the Script",
                Duration = 3,
                Image = 10559192727,
            })
        elseif game.PlaceId == 9210611498 then -- Miami Florida Rolepay
           loadstring(game:HttpGet('https://raw.githubusercontent.com/momenthubv3/PaidGurahub/main/FreeHub'))()
           Rayfield:Notify({
            Title = "Gura Hub :",
            Content = "Laoding the Script",
            Duration = 3,
            Image = 10559192727,
        })
        elseif game.PlaceId == 9274997956 then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/momenthubv3/Anime-journey/main/synapse%20x"))()
            Rayfield:Notify({
                Title = "Gura Hub :",
                Content = "Laoding the Script",
                Duration = 3,
                Image = 10559192727,
            })
        elseif game.PlaceId == 9266432096 then -- Anime Journey but the
            Rayfield:Notify({
                Title = "Gura Hub :",
                Content = "Out of Order",
                Duration = 3,
                Image = 10559192727,
            })
        else
            Rayfield:Notify({
                Title = "Gura Hub :",
                Content = "Laoding the Script Universal",
                Duration = 3,
                Image = 10559192727,
            })
            loadstring(game:HttpGet("https://raw.githubusercontent.com/momenthubv3/PaidGurahub/main/Universal"))()
            setclipboard("discord.gg/FKHmERC6y5")
         
        end
    end,
})

local Misc = Window:CreateTab("Misc")

local Section = Misc:CreateSection("Misc")

Misc:CreateToggle({
	Name = "Open Chat",
	CurrentValue = false,
	Callback = function(value)
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
	end,
})

Misc:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})
