local GamesList = {

}
local Universal = "https://raw.githubusercontent.com/ShadowHatesSkids/Shadows-Hub/main/Universal.lua"
local PID = game.PlaceId

if not GamesList[PID] then
    loadstring(Universal)
else
    loadstring(GamesList[PID])
end