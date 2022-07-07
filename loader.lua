local function Succes()
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("success", "Success!", "Game Supported!")
    notif:deleteTimeout(3) -- Args(<number> DeleteWaitTime)
end
local function InfoLoading()
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("info", "Loading!", "Loading Script!")
    notif:deleteTimeout(5)
end


if game.PlaceId == 7167319176 then -- Chicago Remastered
    Succes()
    wait(2)
    InfoLoading()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Chicago%20Remastered.lua"))()

elseif game.PlaceId == 5910449407 then -- Project Menacing
    Succes()
    wait(2)
    InfoLoading()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Project%20Menacing.lua"))()
elseif game.PlaceId == 8425637426 then -- Write a later [CAN BE OUTDATED]
    Succes()
    wait(2)
    InfoLoading()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Write%20a%20Letter.lua"))()
--[[ GAME IS CLOSED! WORLD OF STAND
elseif game.PlaceId == 6728870912 then
    Succes()
    wait(2)
    InfoLoading()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/World%20of%20Stands.lua"))()
]]
elseif game.PlaceId == 9210611498 then -- Miami Florida Rolepay
    Succes()
    wait(2)
    InfoLoading()
    if getgenv().Theme == nil then
        getgenv().Theme = "Dark"
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Gura-Hub/main/Miami%20Florida.lua"))()
elseif game.PlaceId == 9274997956 then
    Succes()
    wait(2)
    InfoLoading()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/momenthubv3/Anime-journey/main/synapse%20x"))()
elseif game.PlaceId == 9266432096 then -- Anime Journey but the
    Succes()
    wait(2)
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("info", "Loading!", "Script Require to be on the main game")
    notif:deleteTimeout(5)
else
    local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
    local notif = Notification.new("error", "Error", "Game Not Supported! Join our Discord (Copied)")
    notif:deleteTimeout(5)
    setclipboard("discord.gg/FKHmERC6y5")
end
