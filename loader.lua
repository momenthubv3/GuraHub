if game.PlaceId == 7167319176 then
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/lobox920/Shar-Script/main/Chicago%20Remastered.lua')))()
elseif game.PlaceId == 8425637426 then
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/lobox920/Shar-Script/main/Write%20a%20Letter.lua')))()
else
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    OrionLib:MakeNotification({
    	Name = "Game Not Supported!",
    	Content = "The current game you are playing is not supported",
    	Image = "rbxassetid://2022095309",
    	Time = 5
    })
end
