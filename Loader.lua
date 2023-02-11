local GamesList = {}
local Universal = "https://raw.githubusercontent.com/ShadowHatesSkids/Shadows-Hub/main/Universal.lua"
local PID = game.PlaceId

if not GamesList[PID] then
    return loadstring(Universal)
else
    return loadstring(GamesList[PID])
end
