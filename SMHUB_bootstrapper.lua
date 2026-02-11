--[[
    ___    ___        ________  _____ ______           ___  ___  ___  ___  ________     
   |\  \  |\  \      |\   ____\|\   _ \  _   \        |\  \|\  \|\  \|\  \|\   __  \    
 __\_\  \_\_\  \_____\ \  \___|\ \  \\\__\ \  \       \ \  \\\  \ \  \\\  \ \  \|\ /_   
|\____    ___    ____\\ \_____  \ \  \\|__| \  \       \ \   __  \ \  \\\  \ \   __  \  
\|___| \  \__|\  \___| \|____|\  \ \  \    \ \  \       \ \  \ \  \ \  \\\  \ \  \|\  \ 
    __\_\  \_\_\  \_____ ____\_\  \ \__\    \ \__\       \ \__\ \__\ \_______\ \_______\
   |\____    ____   ____\\_________\|__|     \|__|        \|__|\|__|\|_______|\|_______|
   \|___| \  \__|\  \___\|_________|                                                    
          \ \__\ \ \__\                                                                  
           \|__|  \|__|                                                                  
]]

local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/gerstam/CB-Script/main/unleaked"))()

if not lib then
    error("Failed to load library")
end

local function safeLoad(url)
    local success, result = pcall(function()
        local script = loadstring(game:HttpGet(url, true))
        if script then
            script()
        end
    end)
    if not success then
        warn("Failed to load: " .. url)
    end
end

if game.PlaceId == 286090429 then
    safeLoad("https://raw.githubusercontent.com/gerstam/CB-Script/main/%23SMHUBARSENAL")
elseif game.PlaceId == 301549746 then
    safeLoad("https://raw.githubusercontent.com/gerstam/CB-Script/main/%23SMHUBCB")
-- ... rest of your PlaceIds
else
    local notif = lib:InitNotifications()
    notif:Notify("This game isn't supported for #SM HUB yet. If this game is popular please add in suggestions", 3, "information")
end
